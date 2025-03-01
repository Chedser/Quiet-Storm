using System.Net.Http;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;


namespace Quiet_Storm
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        List<Thread> threads;
        bool started = false;
        int currentRequestsCount = 0;

        public MainWindow()
        {
            InitializeComponent();
            
            threadsTextBox.PreviewTextInput += numericTextBox_PreviewTextInput;
            threadsTextBox.LostFocus += numericTextBox_LostFocus;
            requestsTextBox.PreviewTextInput += numericTextBox_PreviewTextInput;
            requestsTextBox.LostFocus += numericTextBox_LostFocus;
            startButton.Click += startButton_Click;
            stopButton.Click += stopButton_Click;
            threads = new List<Thread>();
            scroll.ScrollToEnd();
        }

        private void numericTextBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            if (regex.IsMatch(e.Text))
            {
                e.Handled = true;
            }
        }

        private void numericTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            TextBox textBox = ((TextBox)sender);
            if (String.IsNullOrWhiteSpace(textBox.Text)) textBox.Text = "0";
        }

        private void startButton_Click(object sender, RoutedEventArgs e)
        {
            if (threads.Count > 0 || started) return;
            started = true;

            urlTextBox.IsEnabled = false;
            threadsTextBox.IsEnabled = false;
            requestsTextBox.IsEnabled = false;

            scroll.ScrollToEnd();
            string errorsStr = "";
            string url = urlTextBox.Text;
            string threadsStr = threadsTextBox.Text;
            string requestsStr = requestsTextBox.Text;
            if (String.IsNullOrWhiteSpace(url))
                errorsStr += "Введите URL\n";
            if (String.IsNullOrWhiteSpace(threadsStr))
                errorsStr += "Введите количество потоков\n";
            if (String.IsNullOrWhiteSpace(requestsTextBox.Text))
                errorsStr += "Введите количество запросов\n";
            if (errorsStr.Length > 0){
                MessageBox.Show(errorsStr);
                return;
            }

            int threadsCount = Int32.Parse(threadsStr);
            int requestsCount = Int32.Parse(requestsStr);

            for (int i = 0; i < threadsCount; i++) {
                Thread thread = new Thread((ParameterizedThreadStart)(delegate { Go(url, requestsCount); }));
                threads.Add(thread);
                thread.Start();
            }

        }

        private void stopButton_Click(object sender, RoutedEventArgs e){
            statusTextBlock.Text = "";
            started = false;
            foreach (Thread thread in threads)
                if(thread.IsAlive) thread.Interrupt();
            threads.Clear();

            currentRequestsCountLabel.Content = "0";
            currentRequestsCount = 0;
            urlTextBox.IsEnabled = true;
            threadsTextBox.IsEnabled = true;
            requestsTextBox.IsEnabled = true;
        }

            private async void Go(string url, int requests) {
                try{
                    int statusCode;
                    string statusStr;
                    string statusesStr = "";
                    for (int i = 0; i < requests; i++){
                        if (!started) break;
                        
                        HttpClient httpClient = new HttpClient();
                        using HttpRequestMessage requestGET = new HttpRequestMessage(HttpMethod.Get, url.ToString());

                        HttpResponseMessage responseGET = await httpClient.SendAsync(requestGET);
                        statusStr = responseGET.StatusCode.ToString();
                        statusCode = (int)responseGET.StatusCode;
                        statusesStr += $"GET {statusCode}:{statusStr}\n";
                        ++currentRequestsCount;   

                        using HttpRequestMessage requestPOST = new HttpRequestMessage(HttpMethod.Post, url.ToString());
                        HttpResponseMessage responsePOST = await httpClient.SendAsync(requestPOST);
                        statusStr = responsePOST.StatusCode.ToString();
                        statusCode = (int)responsePOST.StatusCode;
                        statusesStr += $"POST {statusCode}:{statusStr}\n";
                        ++currentRequestsCount;
                        
                        System.Windows.Application.Current.Dispatcher.Invoke(() => {
                            statusTextBlock.Text = statusesStr;
                            currentRequestsCountLabel.Content = currentRequestsCount;
                        });

                    }
                }catch (Exception ex) {
                     System.Windows.Application.Current.Dispatcher.Invoke(() => {
                         statusTextBlock.Text = "\nНеизвестная ошибка";
                         currentRequestsCountLabel.Content = "0";

                         urlTextBox.IsEnabled = true;
                         threadsTextBox.IsEnabled = true;
                         requestsTextBox.IsEnabled = true;
                     });

            }   
        }

    }
}
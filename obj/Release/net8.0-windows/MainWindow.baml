   M S B A M L   `   `   `  ���� F  BQuiet Storm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Quiet_StormQuiet_Storm  e aMicrosoft.Web.WebView2.Wpf, Version=1.0.3124.44, Culture=neutral, PublicKeyToken=2a8ab48044d2601ekLclr-namespace:Microsoft.Web.WebView2.Wpf;assembly=Microsoft.Web.WebView2.WpfMicrosoft.Web.WebView2.Wpf     Quiet_Storm.MainWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     +localclr-namespace:Quiet_Storm     \wv2Lclr-namespace:Microsoft.Web.WebView2.Wpf;assembly=Microsoft.Web.WebView2.Wpf       � Title$  Quiet Storm��$	��450��$	��800�� � 
ResizeMode$ NoResize=�.��� $��0,6,0,-6q� � ColumnDefinitions �� $
��461* ��� $
��339* �.+��� $	��URL��$
��Left=�$��	22,11,0,0q�$	��Top=�$��43��$
��Bold"�$��14(�$��29���� $��Потоки��$
��Left=�$��	22,51,0,0q�$	��Top=�$��76��$
��Bold"�$��14(�$��29���� $��Запросы��$
��Left=�$��	22,77,0,0q�$	��Top=�$	��114��$
��Bold"�$��14(�$��29���� -    ��Name$ 
urlTextBox��$
��Left=�$��
164,17,0,0q�$	��Top=�$	��200��$��18���� -   $ threadsTextBox�� �� 	MaxLength$ 3��$
��Left=�$��
164,57,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��120��$��18���� -   $ requestsTextBox��$ 3��$
��Left=�$��
164,81,0,0q�$
 Wrap=�$	��Top=�$	��120��$��18���� -    ��Name$ startButton��$��
Старт��$
��Left=�$��
31,111,0,0q�$	��Top=� J� RenderTransformOrigin$ -2.033,0.478&�$��20��$��34���� -   $ 
stopButton��$��Стoп��$
��Left=�$��
85,111,0,0q�$	��Top=�$ -2.033,0.478&�$��20��$��30���� -    ��Name$ scroll��$��10,159,10,10q�.���� -   	 ��Name$	 statusTextBlock��$
��Wrap=�$	��242��$
��Auto��$��Disabled=�$
��Auto=�${�false���� $��Количество: ��$
��Left=�$��
31,136,0,0q�$	��Top=�$��26��$��80���� -   
 ��Name$
 currentRequestsCountLabel��$��0��$
��Left=�$��111,136,0,0q�$	��Top=�$	��113��$��26���� $(��"Формат: https://facebook.com��$
��Left=�$��
161,31,0,0q�$	��Top=�$	��185��$��26��)  #Microsoft.Web.WebView2.Wpf.WebView2  -	     Name$ browser��$��1��$��0,159,10,10q�
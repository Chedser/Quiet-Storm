   M S B A M L   `   `   `  ����F  BQuiet Storm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Quiet_StormQuiet_Storm  5   	       Quiet_Storm.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Quiet_Storm     5   	     � Title$  Quiet Storm��5   	   $	��450��6   $	��486��6*    � 
ResizeMode$ NoResize=�66   .��5	      � $��0,6,0,-6q�6    � ColumnDefinitions 5
   
   �� 5      $
��578* �6   �� 5      $
��127* �6   .+�5   
   �� $	��URL��6   $
��Left=�6   $��	22,11,0,0q�69   $	��Top=�6L   $��43��6d   $
��Bold"�6o   $��14(�6�   �� 5   
   $��Потоки��6   $
��Left=�6!   $��	22,51,0,0q�6<   $	��Top=�6O   $��76��6g   $
��Bold"�6r   $��14(�6�   �� 5   
   $��Запросы��6   $
��Left=�6"   $��	22,77,0,0q�6=   $	��Top=�6P   $	��114��6h   $
��Bold"�6t   $��14(�6�   �� 5   
   -   5         ��Name$ 
urlTextBox��5      $
��Left=�6&   $��
164,17,0,0q�6A   $	��Top=�6U   $	��200��6m   �� 5   
   -   5        $ threadsTextBox��5       �� 	MaxLength$ 3��6*   $
��Left=�68   $��
164,57,0,0q�6S    �� TextWrapping$
 Wrap=�6g   $	��Top=�6{   $	��120��6�   �� 5   
   -   5        $ requestsTextBox��5      $ 3��6+   $
��Left=�69   $��
164,81,0,0q�6T   $
 Wrap=�6h   $	��Top=�6|   $	��120��6�   �� 5   
   -   5         ��Name$ startButton��5      $��
Старт��6&   $
��Left=�66   $��
31,111,0,0q�6Q   $	��Top=�6e    J� RenderTransformOrigin$ -2.033,0.478&�6}   �� 5   
   -   5        $ 
stopButton��5      $��Стoп��6%   $
��Left=�64   $��
85,111,0,0q�6O   $	��Top=�6c   $ -2.033,0.478&�6{   �� 5   
   -   5         ��Name$ scroll��5      $��10,159,114,31q�6'   .��5      �� -   5        	 ��Name$	 statusTextBlock��5      $
��Wrap=�61   $	��241��6E   $
��Auto��6R   $��Disabled=�6_   $
��Auto=�6�   ${�false��6�   5      �� 5   
   $��Количество: ��6   $
��Left=�6'   $��
31,136,0,0q�6B   $	��Top=�6V   �� 5   
   -   5        
 ��Name$
 currentRequestsCountLabel��5      $��0��63   $
��Left=�6?   $��111,136,0,0q�6Z   $	��Top=�6o   $	��113��6�   �� 5   
   $(��"Формат: https://facebook.com��6   $
��Left=�67   $��
161,31,0,0q�6R   $	��Top=�6f   $	��185��6~   5      5      
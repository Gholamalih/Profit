   M S B A M L   `   `   `  ����A  =Profit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ProfitProfit  5   	       Profit.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Profit     5   	   -   5          � Title$  
MainWindow��5
   	   $	��250��6   $	��300��6,   $	��300��6;   $	��250��6J   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $��
Unit price��6   $��Center=�6&   �� 5   
   -   5         ��Name$ UnitPrice_TextBox��5      $��10000��6-   $��1��6:   $��Center=�6J   �� 5   
   $��Unit profit��6   $��1��6'   $��Center=�64   �� 5   
   -   5        $ UnitProfit_TextBox��5      $	��195��6.   $��1��69   $��1��6F   $��Center=�6V   �� 5   
   $��
Unit count��6   $��2��6&   $��Center=�63   �� 5    
   -   5        $ UnitCount_TextBox��5       $
��5754��6-   $��2��69   $��1��6F   $��Center=�6V   �� 5"   
   $��Sleep count (month)��6   $��3��6/   $��Center=�6<   �� 5#   
   -   5        $ SleepCount_TextBox��5#      $��1��6.   $��3��67   $��1��6D   $��Center=�6T   �� 5%   
   $��Sum (count)��6   $��4��6'   $��Center=�64   A� 5&   
    A� Columns$ 2��6   $��4��6"   $��1��6/   .+�5'      �� -   5        $ Sum_TextBox��5'      $��Center=�6+    �� 
IsReadOnly$
 True��6F   �� 5(      -   5         ��Name$ Diff_TextBlock��5(      $��0��60   $��Center=�69    �� TextAlignment$ Center=�6T   5)      �� 5*   
   $��Sum (price)��6   $��5��6'   $��Center=�64   �� 5+   
   -   5        $ SumPrice_TextBox��5+      $��5��6,   $��1��69   $��Center=�6I   $
 True��6d   �� 5-   
   -	   5         ��Name$ Calculate_Button��5-      $��	Calculate��6+   $��6��6?   $��2��6L   	 �� 	IsDefault$
	 True��6   5.      5/      
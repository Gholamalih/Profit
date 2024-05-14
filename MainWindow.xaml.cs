using System.ComponentModel;
using System.IO;
using System.Windows;

namespace Profit
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Calculate_Button_Click(object sender, RoutedEventArgs e)
        {
            if (!ulong.TryParse(UnitPrice_TextBox.Text, out ulong unitPrice)) return;
            if (!ulong.TryParse(UnitProfit_TextBox.Text, out ulong unitProfit)) return;
            if (!ulong.TryParse(UnitCount_TextBox.Text, out ulong unitCount)) return;
            if (!ulong.TryParse(SleepCount_TextBox.Text, out ulong sleepCount)) return;
            ulong initUnits = unitCount;
            for (ulong i = 0; i < sleepCount; i++)
            {
                unitCount += unitCount * unitProfit / unitPrice;
            }

            Sum_TextBox.Text = $"{unitCount}";
            Diff_TextBlock.Text = $"+{unitCount - initUnits}";
            SumPrice_TextBox.Text = $"{unitCount * unitPrice/10:C0}".Replace("$","")+" T";
        }

        private void MainWindow_OnLoaded(object sender, RoutedEventArgs e)
        {
            string[] lines = File.ReadAllLines("config.ini");
            UnitPrice_TextBox.Text = lines[0];
            UnitProfit_TextBox.Text = lines[1];
            UnitCount_TextBox.Text = lines[2];
            SleepCount_TextBox.Text = lines[3];
        }

        private void MainWindow_OnClosing(object sender, CancelEventArgs e)
        {
            e.Cancel = true;
            string[] lines = { 
                UnitPrice_TextBox.Text, 
                UnitProfit_TextBox.Text, 
                UnitCount_TextBox.Text, 
                SleepCount_TextBox.Text
            };
            File.WriteAllLines("config.ini", lines);
            e.Cancel = false;
        }
    }
}

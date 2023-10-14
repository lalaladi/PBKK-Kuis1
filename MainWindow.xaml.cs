using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace MusicList
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private DispatcherTimer animationTimer;  // Declare the animation timer
        private double currentTime;  // Waktu saat ini (dalam detik)
        private double duration = 60;  // Durasi animasi (dalam detik)

        public MainWindow()
        {
            InitializeComponent();
            animationTimer = new DispatcherTimer();
            animationTimer.Interval = TimeSpan.FromSeconds(duration / 100);  // Ubah 100 untuk mengubah kecepatan animasi
            animationTimer.Tick += AnimationTimer_Tick;
        }

        private void Card_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        //public delegate void RoutedEventHandler(object sender, RoutedEventArgs e);

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        
        }

        private bool isPlaying = false; // Variable untuk melacak apakah sedang diputar atau tidak

        private void btnPlay_Click(object sender, RoutedEventArgs e)
        {
            if (isPlaying)
            {
                // Animasi sedang berjalan, hentikan animasi
                animationTimer.Stop();
            }
            else
            {
                // Animasi tidak sedang berjalan, mulai animasi
                animationTimer.Start();
            }

            // Perbarui status animasi
            isPlaying = !isPlaying;
        }

        private void AnimationTimer_Tick(object sender, EventArgs e)
        {
            // Perbarui posisi TimeSlider
            currentTime += duration / 100;  // Ubah 100 untuk mengubah kecepatan animasi
            TimeSlider.Value = currentTime;

            // Hentikan animasi setelah mencapai durasi
            if (currentTime >= duration)
            {
                animationTimer.Stop();
                currentTime = 0;
                TimeSlider.Value = 0;
            }
        }
        private void TimeSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            // Mendapatkan nilai waktu dari TimeSlider
            double currentTime = e.NewValue;

            // Ubah nilai waktu ke format menit:detik
            TimeSpan time = TimeSpan.FromSeconds(currentTime);
            string formattedTime = string.Format("{0:D2}:{1:D2}", time.Minutes, time.Seconds);

            // Update label yang menunjukkan waktu saat ini
            lblCurrentTime.Text = formattedTime;
        }
    }
}

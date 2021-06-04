using Namordnik.Views.Pages.MaterialPages;
using Namordnik.Views.Pages.ProductPages;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace Namordnik.Views.Pages
{
    /// <summary>
    /// Interaction logic for MainViewPage.xaml
    /// </summary>
    public partial class MainViewPage : Page
    {
        public MainViewPage()
        {
            InitializeComponent();
        }
        /// <summary>
        /// Переход к продуктам
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ProductButtonNext_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ProductListViewPage());
        }

        private void MaterialButton_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new MaterialViewPage());
        }
    }
}

using Namordnik.Context;
using Namordnik.Model;
using System;
using System.Collections.Generic;
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

namespace Namordnik.Views.Pages.ProductPages
{
    /// <summary>
    /// Interaction logic for ProductListViewPage.xaml
    /// </summary>
    public partial class ProductListViewPage : Page
    {
        // Объявляем переменные для дальнейшего отслеживания параметров
        private int _count = 1;
        private int _countNote = 20;
        public ProductListViewPage()
        {
            InitializeComponent();
            Source();
        }

        private void Source(string sort = "", string filter = "", string search = "")
        {
            var CollectionProduct = AppData.db.Product.ToList();
            if (!string.IsNullOrEmpty(sort) && !string.IsNullOrWhiteSpace(sort))
            {
                if (sort == "По возрастанию")
                    CollectionProduct = (CollectionProduct.OrderBy(item => item.TitleProduct).OrderBy(item => item.WorkshopNumberForPeoduct).OrderBy(item => item.MinimumCostForAnAgent)).Take(_countNote).ToList();
                else if (sort == "По убыванию")
                    CollectionProduct = (CollectionProduct.OrderByDescending(item => item.TitleProduct).OrderByDescending(item => item.WorkshopNumberForPeoduct).OrderByDescending(item => item.MinimumCostForAnAgent)).Take(_countNote).ToList();
            }
            if (!string.IsNullOrEmpty(filter) && !string.IsNullOrEmpty(filter))
            {
                // Отфильтровать
                if (filter == "Полумаски" || filter == "Повязки" || filter == "Маски" || filter == "Респираторы" || filter == "На лицо" || filter == "Полнолицевые" || filter == "Сменные части" || filter == "Запасные части" || filter == "Держители" || filter == "Предфильтры")
                {
                    CollectionProduct = CollectionProduct.Where(item => item.TypeProduct.Title == filter).Take(_countNote).ToList();
                }
                else
                    ProductList.ItemsSource = CollectionProduct.Take(_countNote);
            }
            if (!string.IsNullOrEmpty(search) && !string.IsNullOrEmpty(search))
            {
                // Поиск
                CollectionProduct = CollectionProduct.Where(item => item.TitleProduct.ToLower().Contains(search.ToLower())).Take(_countNote).ToList();
            }

            ProductList.ItemsSource = CollectionProduct.Take(_countNote);
        }

        private void SortComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Source((SortComboBox.SelectedItem as ComboBoxItem).Content.ToString(), FilterComboBox.Text, SearchTextBox.Text);
        }

        private void FilterComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Source(SortComboBox.Text, (FilterComboBox.SelectedItem as ComboBoxItem).Content.ToString(), SearchTextBox.Text);
        }

        private void btnPrevious_Click(object sender, RoutedEventArgs e)
        {
            if (_count > 1)
            {
                _count--;
                _countNote -= 20;
                ProductList.ItemsSource = AppData.db.Product.Take(_countNote).ToList();
            }
            txbCountList.Text = _count.ToString();
        }

        private void btnNext_Click(object sender, RoutedEventArgs e)
        {
            if (AppData.db.Product.Count() != _countNote)
            {
                _count++;
                _countNote += 20;
            }
            ProductList.ItemsSource = AppData.db.Product.Take(_countNote).ToList();
            txbCountList.Text = _count.ToString();
        }

        private void SearchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            Source(SortComboBox.Text, FilterComboBox.Text, SearchTextBox.Text);
        }

        private void CreateButton_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ProductActionPage(new Product()));
        }
        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            var selectedItem = ProductList.SelectedItem as Product;
            if (selectedItem != null)
                NavigationService.Navigate(new ProductActionPage(selectedItem));
            else
                MessageBox.Show("Вы не выбрали запись для редактирования! Пожалуйста выберите то что хотите отредактировать и попрбуйте ещё раз.", "Внимание!",
                    MessageBoxButton.OK, MessageBoxImage.Exclamation);
        }

        private void RemoveButton_Click(object sender, RoutedEventArgs e)
        {
            var selectedItem = ProductList.SelectedItem as Product;
            if (selectedItem != null)
            {
                if (MessageBox.Show("Вы действительно хотите удалить Агента? Данные будут удалены навсегда.", "Внимание!", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                {
                    AppData.db.Product.Remove(selectedItem);
                    AppData.db.SaveChanges();
                    Source();
                }
            }
        }
    }
}

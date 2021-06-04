using Namordnik.Context;
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

namespace Namordnik.Views.Pages.MaterialPages
{
    /// <summary>
    /// Interaction logic for MaterialViewPage.xaml
    /// </summary>
    public partial class MaterialViewPage : Page
    {
        private int _count = 1;
        private int _countNote = 20;

        public MaterialViewPage()
        {
            InitializeComponent();
            Source();
        }

        private void Source(string sort = "", string filter = "", string search = "")
        {
            var CollectionMaterial = AppData.db.Material.ToList();
            if (!string.IsNullOrEmpty(sort) && !string.IsNullOrWhiteSpace(sort))
            {
                if (sort == "По возрастанию")
                    CollectionMaterial = (CollectionMaterial.OrderBy(item => item.TitleProduct).OrderBy(item => item.QuantityInStock).OrderBy(item => item.Cost)).Take(_countNote).ToList();
                else if (sort == "По убыванию")
                    CollectionMaterial = (CollectionMaterial.OrderByDescending(item => item.TitleProduct).OrderByDescending(item => item.QuantityInStock).OrderByDescending(item => item.Cost)).Take(_countNote).ToList();
            }
            if (!string.IsNullOrEmpty(filter) && !string.IsNullOrEmpty(filter))
            {
                // Отфильтровать
                if (filter == "Вата" || filter == "Ткань" || filter == "Стержень" || filter == "Силикон" || filter == "Резинка")
                {
                    CollectionMaterial = CollectionMaterial.Where(item => item.TypeMaterial.Title == filter).Take(_countNote).ToList();
                }
                else
                    MaterialList.ItemsSource = CollectionMaterial.Take(_countNote);
            }
            if (!string.IsNullOrEmpty(search) && !string.IsNullOrEmpty(search))
            {
                // Поиск
                CollectionMaterial = CollectionMaterial.Where(item => item.TitleProduct.ToLower().Contains(search.ToLower())).Take(_countNote).ToList();
            }

            MaterialList.ItemsSource = CollectionMaterial.Take(_countNote);
        }

        private void SearchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            Source(SortComboBox.Text, FilterComboBox.Text, SearchTextBox.Text);
        }

        private void FilterComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Source(SortComboBox.Text, (FilterComboBox.SelectedItem as ComboBoxItem).Content.ToString(), SearchTextBox.Text);
        }

        private void SortComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Source((SortComboBox.SelectedItem as ComboBoxItem).Content.ToString(), FilterComboBox.Text, SearchTextBox.Text);
        }

        private void btnPrevious_Click(object sender, RoutedEventArgs e)
        {
            if (_count > 1)
            {
                _count--;
                _countNote -= 20;
                MaterialList.ItemsSource = AppData.db.Product.Take(_countNote).ToList();
            }
            txbCountList.Text = _count.ToString();
        }

        private void btnNext_Click(object sender, RoutedEventArgs e)
        {
            if (AppData.db.Material.Count() != _countNote)
            {
                _count++;
                _countNote += 20;
            }
            MaterialList.ItemsSource = AppData.db.Material.Take(_countNote).ToList();
            txbCountList.Text = _count.ToString();
        }
    }
}

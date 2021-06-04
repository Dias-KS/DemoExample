using Microsoft.Win32;
using Namordnik.Context;
using Namordnik.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace Namordnik.Views.Pages.ProductPages
{
    /// <summary>
    /// Interaction logic for ProductActionPage.xaml
    /// </summary>
    public partial class ProductActionPage : Page
    {
        private string _path = Environment.CurrentDirectory + @"\products\picture.png";
        public Product Product { get; set; }
        public Characteristic Characteristic { get; set; }
        public List<TypeProduct> Types { get; set; }
        public ProductActionPage(Product product)
        {
            InitializeComponent();
            Types = AppData.db.TypeProduct.ToList();
            Product = product;
            this.DataContext = this;
        }

            OpenFileDialog file = new OpenFileDialog();
        private void ButtonSelect_Click(object sender, RoutedEventArgs e)
        {
            file.Filter = "Image (*.jpg;*.jpeg;*png;)|*.jpg;*.jpeg;*png;";
            ProductPicture.Source = file.ShowDialog() == true ? ProductPicture.Source = new BitmapImage(new Uri(file.FileName)) : null;
        }

        private void ButtonSave_Click(object sender, RoutedEventArgs e)
        {
            if(Product.ID == 0)
            {
                File.Copy(file.SafeFileName, Environment.CurrentDirectory);
                Product.Picture = file.SafeFileName;
                AppData.db.Product.Add(Product);
            }
            AppData.db.SaveChanges();
            MessageBox.Show("Данные зафиксированы в Базе Данных!", "Операция прошла успешно!", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void ArticleTextInput_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "1234567890".IndexOf(e.Text) < 0;
        }

        private void MinimumCostForAnAgent_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "1234567890".IndexOf(e.Text) < 0;
        }

        private void NumberOfPeopleForProduction_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "1234567890".IndexOf(e.Text) < 0;

        }

        private void WorkshopNumberForPeoduct_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "1234567890".IndexOf(e.Text) < 0;

        }

        private void Length_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "1234567890".IndexOf(e.Text) < 0;

        }

        private void Width_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "1234567890".IndexOf(e.Text) < 0;

        }

        private void ShippingWeight_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "1234567890".IndexOf(e.Text) < 0;

        }

        private void Heigth_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "1234567890".IndexOf(e.Text) < 0;

        }

        private void WeightWithoutPackaging_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "1234567890".IndexOf(e.Text) < 0;

        }
    }
}

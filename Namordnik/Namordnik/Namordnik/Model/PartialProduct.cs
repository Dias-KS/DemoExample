using Namordnik.Context;
using System;
using System.Linq;

namespace Namordnik.Model
{
    public partial class Product
    {
        public string GetPicture
        {
            get
            {
                var result = Environment.CurrentDirectory + @"/" + Picture;
                return result;
            }
        }


        public string GetBackColor
        {
            get
            {
                var result = AppData.db.ProductSale.FirstOrDefault(x => x.ProductID == this.ID);
                if (result != null)
                {

                    if (DateTime.Now.CompareTo(result.DateOfRelease) == 1)
                    {
                        return "Tomato";
                    }else
                    {
                        return "White";
                    }
                } else return "White";
            } 
        }
    }
}

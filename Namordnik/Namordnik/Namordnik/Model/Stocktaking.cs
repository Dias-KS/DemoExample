//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Namordnik.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Stocktaking
    {
        public int ID { get; set; }
        public int EmployeeID { get; set; }
        public int MaterialID { get; set; }
        public int ProductID { get; set; }
        public System.DateTime DateGet { get; set; }
        public int Count { get; set; }
        public double TotalCost { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual Material Material { get; set; }
    }
}

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
    
    public partial class ProductSale
    {
        public int ID { get; set; }
        public int ProductID { get; set; }
        public int AgentID { get; set; }
        public System.DateTime DateOfRelease { get; set; }
        public int CountProduct { get; set; }
    
        public virtual Agent Agent { get; set; }
    }
}

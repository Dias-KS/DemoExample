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
    
    public partial class HistoryProvider
    {
        public int ID { get; set; }
        public int ProviderID { get; set; }
        public int MaterialID { get; set; }
        public System.DateTime DateOfDelivery { get; set; }
    
        public virtual Material Material { get; set; }
        public virtual Provider Provider { get; set; }
    }
}

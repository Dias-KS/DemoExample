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
    
    public partial class HistoryAgentEmployee
    {
        public int ID { get; set; }
        public int AgentID { get; set; }
        public int EmployeeID { get; set; }
        public System.DateTime DateEdit { get; set; }
    
        public virtual Agent Agent { get; set; }
        public virtual Employee Employee { get; set; }
    }
}

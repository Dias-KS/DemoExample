﻿#pragma checksum "..\..\..\..\..\Views\Pages\MaterialPages\MaterialViewPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "B24460E582BFB2C3DF84B3290CD4701139D3E00F44D2AE369AD6529BCE0B44C3"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using Namordnik.Views.Pages.MaterialPages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Namordnik.Views.Pages.MaterialPages {
    
    
    /// <summary>
    /// MaterialViewPage
    /// </summary>
    public partial class MaterialViewPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 37 "..\..\..\..\..\Views\Pages\MaterialPages\MaterialViewPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox SearchTextBox;
        
        #line default
        #line hidden
        
        
        #line 49 "..\..\..\..\..\Views\Pages\MaterialPages\MaterialViewPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox SortComboBox;
        
        #line default
        #line hidden
        
        
        #line 59 "..\..\..\..\..\Views\Pages\MaterialPages\MaterialViewPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox FilterComboBox;
        
        #line default
        #line hidden
        
        
        #line 73 "..\..\..\..\..\Views\Pages\MaterialPages\MaterialViewPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView MaterialList;
        
        #line default
        #line hidden
        
        
        #line 111 "..\..\..\..\..\Views\Pages\MaterialPages\MaterialViewPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txbCountList;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Namordnik;component/views/pages/materialpages/materialviewpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\Views\Pages\MaterialPages\MaterialViewPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.SearchTextBox = ((System.Windows.Controls.TextBox)(target));
            
            #line 38 "..\..\..\..\..\Views\Pages\MaterialPages\MaterialViewPage.xaml"
            this.SearchTextBox.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.SearchTextBox_TextChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.SortComboBox = ((System.Windows.Controls.ComboBox)(target));
            
            #line 50 "..\..\..\..\..\Views\Pages\MaterialPages\MaterialViewPage.xaml"
            this.SortComboBox.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.SortComboBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.FilterComboBox = ((System.Windows.Controls.ComboBox)(target));
            
            #line 60 "..\..\..\..\..\Views\Pages\MaterialPages\MaterialViewPage.xaml"
            this.FilterComboBox.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.FilterComboBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.MaterialList = ((System.Windows.Controls.ListView)(target));
            return;
            case 5:
            
            #line 108 "..\..\..\..\..\Views\Pages\MaterialPages\MaterialViewPage.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.btnPrevious_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.txbCountList = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 7:
            
            #line 115 "..\..\..\..\..\Views\Pages\MaterialPages\MaterialViewPage.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.btnNext_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

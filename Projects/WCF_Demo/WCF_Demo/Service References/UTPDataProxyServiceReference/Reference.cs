//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.235
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

// 原始文件名:
// 生成日期: 2011/8/11 9:58:28
namespace WCF_Demo.UTPDataProxyServiceReference
{
    
    /// <summary>
    /// 架构中不存在 UTPDataEntities 的注释。
    /// </summary>
    public partial class UTPDataEntities : global::System.Data.Services.Client.DataServiceContext
    {
        /// <summary>
        /// 初始化新的 UTPDataEntities 对象。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public UTPDataEntities(global::System.Uri serviceRoot) : 
                base(serviceRoot)
        {
            this.ResolveName = new global::System.Func<global::System.Type, string>(this.ResolveNameFromType);
            this.ResolveType = new global::System.Func<string, global::System.Type>(this.ResolveTypeFromName);
            this.OnContextCreated();
        }
        partial void OnContextCreated();
        /// <summary>
        /// 因为在 Visual Studio 中为此服务引用配置的
        /// 命名空间与在服务器架构中指示的命名空间不同，所以
        /// 使用类型映射器在这两者之间进行映射。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        protected global::System.Type ResolveTypeFromName(string typeName)
        {
            if (typeName.StartsWith("UTPModel", global::System.StringComparison.Ordinal))
            {
                return this.GetType().Assembly.GetType(string.Concat("WCF_Demo.UTPDataProxyServiceReference", typeName.Substring(8)), false);
            }
            return null;
        }
        /// <summary>
        /// 因为在 Visual Studio 中为此服务引用配置的
        /// 命名空间与在服务器架构中指示的命名空间不同，所以
        /// 使用类型映射器在这两者之间进行映射。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        protected string ResolveNameFromType(global::System.Type clientType)
        {
            if (clientType.Namespace.Equals("WCF_Demo.UTPDataProxyServiceReference", global::System.StringComparison.Ordinal))
            {
                return string.Concat("UTPModel.", clientType.Name);
            }
            return null;
        }
        /// <summary>
        /// 架构中不存在 View_CustomerInformation 的注释。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public global::System.Data.Services.Client.DataServiceQuery<View_CustomerInformation> View_CustomerInformation
        {
            get
            {
                if ((this._View_CustomerInformation == null))
                {
                    this._View_CustomerInformation = base.CreateQuery<View_CustomerInformation>("View_CustomerInformation");
                }
                return this._View_CustomerInformation;
            }
        }
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        private global::System.Data.Services.Client.DataServiceQuery<View_CustomerInformation> _View_CustomerInformation;
        /// <summary>
        /// 架构中不存在 View_CustomerInformation 的注释。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public void AddToView_CustomerInformation(View_CustomerInformation view_CustomerInformation)
        {
            base.AddObject("View_CustomerInformation", view_CustomerInformation);
        }
    }
    /// <summary>
    /// 架构中不存在 UTPModel.View_CustomerInformation 的注释。
    /// </summary>
    /// <KeyProperties>
    /// AcctNum
    /// CustomerID
    /// FirstName
    /// LastName
    /// </KeyProperties>
    [global::System.Data.Services.Common.DataServiceKeyAttribute("AcctNum", "CustomerID", "FirstName", "LastName")]
    public partial class View_CustomerInformation
    {
        /// <summary>
        /// 创建新的 View_CustomerInformation 对象。
        /// </summary>
        /// <param name="acctNum">AcctNum 的初始值。</param>
        /// <param name="customerID">CustomerID 的初始值。</param>
        /// <param name="firstName">FirstName 的初始值。</param>
        /// <param name="lastName">LastName 的初始值。</param>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public static View_CustomerInformation CreateView_CustomerInformation(string acctNum, string customerID, string firstName, string lastName)
        {
            View_CustomerInformation view_CustomerInformation = new View_CustomerInformation();
            view_CustomerInformation.AcctNum = acctNum;
            view_CustomerInformation.CustomerID = customerID;
            view_CustomerInformation.FirstName = firstName;
            view_CustomerInformation.LastName = lastName;
            return view_CustomerInformation;
        }
        /// <summary>
        /// 架构中不存在属性 AcctNum 的注释。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public string AcctNum
        {
            get
            {
                return this._AcctNum;
            }
            set
            {
                this.OnAcctNumChanging(value);
                this._AcctNum = value;
                this.OnAcctNumChanged();
            }
        }
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        private string _AcctNum;
        partial void OnAcctNumChanging(string value);
        partial void OnAcctNumChanged();
        /// <summary>
        /// 架构中不存在属性 CustomerID 的注释。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public string CustomerID
        {
            get
            {
                return this._CustomerID;
            }
            set
            {
                this.OnCustomerIDChanging(value);
                this._CustomerID = value;
                this.OnCustomerIDChanged();
            }
        }
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        private string _CustomerID;
        partial void OnCustomerIDChanging(string value);
        partial void OnCustomerIDChanged();
        /// <summary>
        /// 架构中不存在属性 FirstName 的注释。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public string FirstName
        {
            get
            {
                return this._FirstName;
            }
            set
            {
                this.OnFirstNameChanging(value);
                this._FirstName = value;
                this.OnFirstNameChanged();
            }
        }
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        private string _FirstName;
        partial void OnFirstNameChanging(string value);
        partial void OnFirstNameChanged();
        /// <summary>
        /// 架构中不存在属性 LastName 的注释。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public string LastName
        {
            get
            {
                return this._LastName;
            }
            set
            {
                this.OnLastNameChanging(value);
                this._LastName = value;
                this.OnLastNameChanged();
            }
        }
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        private string _LastName;
        partial void OnLastNameChanging(string value);
        partial void OnLastNameChanged();
        /// <summary>
        /// 架构中不存在属性 CurrDue 的注释。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public global::System.Nullable<decimal> CurrDue
        {
            get
            {
                return this._CurrDue;
            }
            set
            {
                this.OnCurrDueChanging(value);
                this._CurrDue = value;
                this.OnCurrDueChanged();
            }
        }
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        private global::System.Nullable<decimal> _CurrDue;
        partial void OnCurrDueChanging(global::System.Nullable<decimal> value);
        partial void OnCurrDueChanged();
        /// <summary>
        /// 架构中不存在属性 TotalDue 的注释。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public global::System.Nullable<decimal> TotalDue
        {
            get
            {
                return this._TotalDue;
            }
            set
            {
                this.OnTotalDueChanging(value);
                this._TotalDue = value;
                this.OnTotalDueChanged();
            }
        }
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        private global::System.Nullable<decimal> _TotalDue;
        partial void OnTotalDueChanging(global::System.Nullable<decimal> value);
        partial void OnTotalDueChanged();
        /// <summary>
        /// 架构中不存在属性 BillDate 的注释。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public global::System.Nullable<global::System.DateTime> BillDate
        {
            get
            {
                return this._BillDate;
            }
            set
            {
                this.OnBillDateChanging(value);
                this._BillDate = value;
                this.OnBillDateChanged();
            }
        }
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        private global::System.Nullable<global::System.DateTime> _BillDate;
        partial void OnBillDateChanging(global::System.Nullable<global::System.DateTime> value);
        partial void OnBillDateChanged();
        /// <summary>
        /// 架构中不存在属性 BillAmt 的注释。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public global::System.Nullable<decimal> BillAmt
        {
            get
            {
                return this._BillAmt;
            }
            set
            {
                this.OnBillAmtChanging(value);
                this._BillAmt = value;
                this.OnBillAmtChanged();
            }
        }
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        private global::System.Nullable<decimal> _BillAmt;
        partial void OnBillAmtChanging(global::System.Nullable<decimal> value);
        partial void OnBillAmtChanged();
        /// <summary>
        /// 架构中不存在属性 Email 的注释。
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        public string Email
        {
            get
            {
                return this._Email;
            }
            set
            {
                this.OnEmailChanging(value);
                this._Email = value;
                this.OnEmailChanged();
            }
        }
        [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Services.Design", "1.0.0")]
        private string _Email;
        partial void OnEmailChanging(string value);
        partial void OnEmailChanged();
    }
}
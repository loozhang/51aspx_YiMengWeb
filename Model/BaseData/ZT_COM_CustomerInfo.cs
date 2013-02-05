using System;
namespace WebProject.Model.BaseData
{
	/// <summary>
	/// 实体类ZT_COM_CustomerInfo 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public class ZT_COM_CustomerInfo
	{
		public ZT_COM_CustomerInfo()
		{}
		#region Model
		private int _customerid;
		private string _keepperson;
		private string _Telephone;
		private string _mobile;
		private string _fax;
		private string _qq;
		private string _email;
		private string _companyname;
		private string _companyaddress;
		private string _companymailnum;
		private string _createby;
		private DateTime? _createdate;
		private string _lastupdateby;
		private DateTime? _lastupdatedate;
		private string _remark;
		/// <summary>
		/// 
		/// </summary>
		public int CustomerID
		{
			set{ _customerid=value;}
			get{return _customerid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string KeepPerson
		{
			set{ _keepperson=value;}
			get{return _keepperson;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Telephone
		{
			set{ _Telephone=value;}
			get{return _Telephone;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Mobile
		{
			set{ _mobile=value;}
			get{return _mobile;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string FAX
		{
			set{ _fax=value;}
			get{return _fax;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string QQ
		{
			set{ _qq=value;}
			get{return _qq;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Email
		{
			set{ _email=value;}
			get{return _email;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string CompanyName
		{
			set{ _companyname=value;}
			get{return _companyname;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string CompanyAddress
		{
			set{ _companyaddress=value;}
			get{return _companyaddress;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string CompanyMailNum
		{
			set{ _companymailnum=value;}
			get{return _companymailnum;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string CreateBy
		{
			set{ _createby=value;}
			get{return _createby;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? CreateDate
		{
			set{ _createdate=value;}
			get{return _createdate;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string LastUpdateBy
		{
			set{ _lastupdateby=value;}
			get{return _lastupdateby;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? LastUpdateDate
		{
			set{ _lastupdatedate=value;}
			get{return _lastupdatedate;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Remark
		{
			set{ _remark=value;}
			get{return _remark;}
		}
		#endregion Model

	}
}


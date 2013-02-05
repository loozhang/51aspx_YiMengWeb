using System;
namespace WebProject.Model.SysManage
{
	/// <summary>
	/// 实体类ZT_SYS_AdminInfo 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public class ZT_SYS_AdminInfo
	{
		public ZT_SYS_AdminInfo()
		{}
		#region Model
		private int _adminid;
		private string _adminno;
		private string _password;
		private string _roleno;
		private string _islockedout;
		private string _adminname;
		private string _sex;
        private DateTime? _lastlogindate;
		private string _idcardnum;
		private string _Telephone;
		private string _mobile;
		private string _homeaddress;
		private string _homemailnum;
		private string _nowaddress;
		private string _nowmailnum;
		private string _companyaddress;
		private string _companymailnum;
		private string _qq;
		private string _email;
		private string _createby;
		private DateTime? _createdate;
		private string _lastupdateby;
		private DateTime? _lastupdatedate;
		private string _remark;
		/// <summary>
		/// 
		/// </summary>
		public int AdminID
		{
			set{ _adminid=value;}
			get{return _adminid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string AdminNo
		{
			set{ _adminno=value;}
			get{return _adminno;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Password
		{
			set{ _password=value;}
			get{return _password;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string RoleNo
		{
			set{ _roleno=value;}
			get{return _roleno;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string IsLockedOut
		{
			set{ _islockedout=value;}
			get{return _islockedout;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string AdminName
		{
			set{ _adminname=value;}
			get{return _adminname;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Sex
		{
			set{ _sex=value;}
			get{return _sex;}
		}
		/// <summary>
		/// 
		/// </summary>
        public DateTime? LastLoginDate
		{
            set { _lastlogindate = value; }
            get { return _lastlogindate; }
		}
		/// <summary>
		/// 
		/// </summary>
		public string IDCardNum
		{
			set{ _idcardnum=value;}
			get{return _idcardnum;}
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
		public string HomeAddress
		{
			set{ _homeaddress=value;}
			get{return _homeaddress;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string HomeMailNum
		{
			set{ _homemailnum=value;}
			get{return _homemailnum;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string NowAddress
		{
			set{ _nowaddress=value;}
			get{return _nowaddress;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string NowMailNum
		{
			set{ _nowmailnum=value;}
			get{return _nowmailnum;}
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


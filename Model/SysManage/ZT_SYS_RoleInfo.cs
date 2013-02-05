using System;
namespace WebProject.Model.SysManage
{
	/// <summary>
	/// 实体类ZT_SYS_RoleInfo 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public class ZT_SYS_RoleInfo
	{
		public ZT_SYS_RoleInfo()
		{}
		#region Model
		private int _roleid;
		private string _roleno;
		private string _rolename;
		private string _roledesc;
		private string _roleelements;
		private string _createby;
		private DateTime? _createdate;
		private string _lastupdateby;
		private DateTime? _lastupdatedate;
		private string _status;
		private string _remark;
		/// <summary>
		/// 
		/// </summary>
		public int RoleID
		{
			set{ _roleid=value;}
			get{return _roleid;}
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
		public string RoleName
		{
			set{ _rolename=value;}
			get{return _rolename;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string RoleDesc
		{
			set{ _roledesc=value;}
			get{return _roledesc;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string RoleElements
		{
			set{ _roleelements=value;}
			get{return _roleelements;}
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
		public string Status
		{
			set{ _status=value;}
			get{return _status;}
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


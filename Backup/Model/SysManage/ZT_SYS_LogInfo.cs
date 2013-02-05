using System;
namespace WebProject.Model.SysManage
{
	/// <summary>
	/// 实体类ZT_SYS_LogInfo 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public class ZT_SYS_LogInfo
	{
		public ZT_SYS_LogInfo()
		{}
		#region Model
		private int _logid;
		private string _logtype;
		private string _operatortype;
		private string _funcname;
		private string _operatorinfo;
		private string _loginip;
		private string _createby;
		private DateTime? _createdate;
		private string _lastupdateby;
		private DateTime? _lastupdatedate;
		private string _remark;
		/// <summary>
		/// 
		/// </summary>
		public int LogID
		{
			set{ _logid=value;}
			get{return _logid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string LogType
		{
			set{ _logtype=value;}
			get{return _logtype;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string OperatorType
		{
			set{ _operatortype=value;}
			get{return _operatortype;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string FuncName
		{
			set{ _funcname=value;}
			get{return _funcname;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string OperatorInfo
		{
			set{ _operatorinfo=value;}
			get{return _operatorinfo;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string LoginIP
		{
			set{ _loginip=value;}
			get{return _loginip;}
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


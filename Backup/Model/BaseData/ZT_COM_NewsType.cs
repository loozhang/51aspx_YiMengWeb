using System;
namespace WebProject.Model.BaseData
{
	/// <summary>
	/// 实体类ZT_COM_NewsType 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public class ZT_COM_NewsType
	{
		public ZT_COM_NewsType()
		{}
		#region Model
		private int _newstypeid;
		private string _newstypeno;
		private string _newstypename;
		private string _createby;
		private DateTime? _createdate;
		private string _lastupdateby;
		private DateTime? _lastupdatedate;
		private string _remark;
		/// <summary>
		/// 
		/// </summary>
		public int NewsTypeID
		{
			set{ _newstypeid=value;}
			get{return _newstypeid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string NewsTypeNo
		{
			set{ _newstypeno=value;}
			get{return _newstypeno;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string NewsTypeName
		{
			set{ _newstypename=value;}
			get{return _newstypename;}
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


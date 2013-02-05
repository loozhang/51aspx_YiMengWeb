using System;
namespace WebProject.Model.BaseData
{
	/// <summary>
	/// 实体类ZT_COM_RongYuType 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public class ZT_COM_RongYuType
	{
		public ZT_COM_RongYuType()
		{}
		#region Model
		private int _rongyutypeid;
		private string _rongyutypename;
		private string _rongyutypeno;
		private int? _rongyutypeorder;
		private string _createby;
		private DateTime? _createdate;
		private string _lastupdateby;
		private DateTime? _lastupdatedate;
		private string _remark;
		/// <summary>
		/// 
		/// </summary>
		public int RongYuTypeID
		{
			set{ _rongyutypeid=value;}
			get{return _rongyutypeid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string RongYuTypeName
		{
			set{ _rongyutypename=value;}
			get{return _rongyutypename;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string RongYuTypeNo
		{
			set{ _rongyutypeno=value;}
			get{return _rongyutypeno;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? RongYuTypeOrder
		{
			set{ _rongyutypeorder=value;}
			get{return _rongyutypeorder;}
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


using System;
namespace WebProject.Model.BaseData
{
	/// <summary>
	/// 实体类ZT_COM_LinkURL 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public class ZT_COM_LinkURL
	{
		public ZT_COM_LinkURL()
		{}
		#region Model
		private int _linkid;
		private string _title;
		private string _linkurl;
		private string _imgurl;
		private int? _linkorder;
		private string _createby;
		private DateTime? _createdate;
		private string _lastupdateby;
		private DateTime? _lastupdatedate;
		private string _remark;
		/// <summary>
		/// 
		/// </summary>
		public int LinkID
		{
			set{ _linkid=value;}
			get{return _linkid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Title
		{
			set{ _title=value;}
			get{return _title;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string LinkUrl
		{
			set{ _linkurl=value;}
			get{return _linkurl;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ImgUrl
		{
			set{ _imgurl=value;}
			get{return _imgurl;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? LinkOrder
		{
			set{ _linkorder=value;}
			get{return _linkorder;}
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


using System;
namespace WebProject.Model.SysManage
{
	/// <summary>
	/// 实体类ZT_SYS_ElementInfo 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public class ZT_SYS_ElementInfo
	{
		public ZT_SYS_ElementInfo()
		{}
		#region Model
		private int _elementid;
		private string _elementcode;
		private string _elementname;
		private string _elementdesc;
		private string _parentcode;
		private string _elementlink;
		private string _elementpiclink;
		private string _elementshow;
		private string _createby;
		private DateTime? _createdate;
		private string _lastupdateby;
		private DateTime? _lastupdatedate;
		private string _remark;
		/// <summary>
		/// 
		/// </summary>
		public int ElementID
		{
			set{ _elementid=value;}
			get{return _elementid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ElementCode
		{
			set{ _elementcode=value;}
			get{return _elementcode;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ElementName
		{
			set{ _elementname=value;}
			get{return _elementname;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ElementDesc
		{
			set{ _elementdesc=value;}
			get{return _elementdesc;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ParentCode
		{
			set{ _parentcode=value;}
			get{return _parentcode;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ElementLink
		{
			set{ _elementlink=value;}
			get{return _elementlink;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ElementPicLink
		{
			set{ _elementpiclink=value;}
			get{return _elementpiclink;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ElementShow
		{
			set{ _elementshow=value;}
			get{return _elementshow;}
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


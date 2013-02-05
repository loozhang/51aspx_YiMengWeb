using System;
namespace WebProject.Model.BaseData
{
	/// <summary>
	/// 实体类ZT_COM_Product 。(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public class ZT_COM_Product
	{
		public ZT_COM_Product()
		{}
		#region Model
		private int _productid;
		private string _productname;
		private int? _productorder;
		private string _productimgurl;
		private string _productinfo;
		private string _typename;
		private string _typeno;
		private string _createby;
		private DateTime? _createdate;
		private string _lastupdateby;
		private DateTime? _lastupdatedate;
		private string _remark;
		/// <summary>
		/// 
		/// </summary>
		public int ProductID
		{
			set{ _productid=value;}
			get{return _productid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ProductName
		{
			set{ _productname=value;}
			get{return _productname;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? ProductOrder
		{
			set{ _productorder=value;}
			get{return _productorder;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ProductImgUrl
		{
			set{ _productimgurl=value;}
			get{return _productimgurl;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ProductInfo
		{
			set{ _productinfo=value;}
			get{return _productinfo;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string TypeName
		{
			set{ _typename=value;}
			get{return _typename;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string TypeNo
		{
			set{ _typeno=value;}
			get{return _typeno;}
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


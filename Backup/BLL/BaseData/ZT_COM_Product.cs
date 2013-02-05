using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.BaseData;
namespace WebProject.BLL.BaseData
{
	/// <summary>
	/// ҵ���߼���ZT_COM_Product ��ժҪ˵����
	/// </summary>
	public class ZT_COM_Product
	{
		private readonly WebProject.DAL.BaseData.ZT_COM_Product dal=new WebProject.DAL.BaseData.ZT_COM_Product();
		public ZT_COM_Product()
		{}
		#region  ��Ա����

		/// <summary>
		/// �õ����ID
		/// </summary>
		public int GetMaxId()
		{
			return dal.GetMaxId();
		}

		/// <summary>
		/// �Ƿ���ڸü�¼
		/// </summary>
		public bool Exists(int ProductID)
		{
			return dal.Exists(ProductID);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public int  Add(WebProject.Model.BaseData.ZT_COM_Product model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public void Update(WebProject.Model.BaseData.ZT_COM_Product model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int ProductID)
		{			
			dal.Delete(ProductID);
		}

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_Product GetModel(int ProductID)
		{			
			return dal.GetModel(ProductID);
		}

		/// <summary>
		/// �õ�һ������ʵ�壬�ӻ����С�
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_Product GetModelByCache(int ProductID)
		{			
			string CacheKey = "ZT_COM_ProductModel-" + ProductID;
            object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(ProductID);
					if (objModel != null)
					{
                        int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
                        WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.BaseData.ZT_COM_Product)objModel;
		}

		/// <summary>
		/// ��������б�
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return dal.GetList(strWhere);
		}
		/// <summary>
		/// ���ǰ��������
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			return dal.GetList(Top,strWhere,filedOrder);
		}
		/// <summary>
		/// ��������б�
		/// </summary>
		public List<WebProject.Model.BaseData.ZT_COM_Product> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// ��������б�
		/// </summary>
		public List<WebProject.Model.BaseData.ZT_COM_Product> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.BaseData.ZT_COM_Product> modelList = new List<WebProject.Model.BaseData.ZT_COM_Product>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.BaseData.ZT_COM_Product model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.BaseData.ZT_COM_Product();
					if(dt.Rows[n]["ProductID"].ToString()!="")
					{
						model.ProductID=int.Parse(dt.Rows[n]["ProductID"].ToString());
					}
					model.ProductName=dt.Rows[n]["ProductName"].ToString();
					if(dt.Rows[n]["ProductOrder"].ToString()!="")
					{
						model.ProductOrder=int.Parse(dt.Rows[n]["ProductOrder"].ToString());
					}
					model.ProductImgUrl=dt.Rows[n]["ProductImgUrl"].ToString();
					model.ProductInfo=dt.Rows[n]["ProductInfo"].ToString();
					model.TypeName=dt.Rows[n]["TypeName"].ToString();
					model.TypeNo=dt.Rows[n]["TypeNo"].ToString();
					model.CreateBy=dt.Rows[n]["CreateBy"].ToString();
					if(dt.Rows[n]["CreateDate"].ToString()!="")
					{
						model.CreateDate=DateTime.Parse(dt.Rows[n]["CreateDate"].ToString());
					}
					model.LastUpdateBy=dt.Rows[n]["LastUpdateBy"].ToString();
					if(dt.Rows[n]["LastUpdateDate"].ToString()!="")
					{
						model.LastUpdateDate=DateTime.Parse(dt.Rows[n]["LastUpdateDate"].ToString());
					}
					model.Remark=dt.Rows[n]["Remark"].ToString();
					modelList.Add(model);
				}
			}
			return modelList;
		}

		/// <summary>
		/// ��������б�
		/// </summary>
		public DataSet GetAllList()
		{
			return GetList("");
		}

		#endregion  ��Ա����
	}
}


using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.BaseData;
namespace WebProject.BLL.BaseData
{
	/// <summary>
	/// 业务逻辑类ZT_COM_CustomerInfo 的摘要说明。
	/// </summary>
	public class ZT_COM_CustomerInfo
	{
		private readonly WebProject.DAL.BaseData.ZT_COM_CustomerInfo dal=new WebProject.DAL.BaseData.ZT_COM_CustomerInfo();
		public ZT_COM_CustomerInfo()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
			return dal.GetMaxId();
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int CustomerID)
		{
			return dal.Exists(CustomerID);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int  Add(WebProject.Model.BaseData.ZT_COM_CustomerInfo model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public void Update(WebProject.Model.BaseData.ZT_COM_CustomerInfo model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int CustomerID)
		{
			
			dal.Delete(CustomerID);
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_CustomerInfo GetModel(int CustomerID)
		{
			
			return dal.GetModel(CustomerID);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中。
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_CustomerInfo GetModelByCache(int CustomerID)
		{
			
			string CacheKey = "ZT_COM_CustomerInfoModel-" + CustomerID;
			object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(CustomerID);
					if (objModel != null)
					{
						int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
						WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.BaseData.ZT_COM_CustomerInfo)objModel;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return dal.GetList(strWhere);
		}
		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			return dal.GetList(Top,strWhere,filedOrder);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<WebProject.Model.BaseData.ZT_COM_CustomerInfo> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<WebProject.Model.BaseData.ZT_COM_CustomerInfo> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.BaseData.ZT_COM_CustomerInfo> modelList = new List<WebProject.Model.BaseData.ZT_COM_CustomerInfo>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.BaseData.ZT_COM_CustomerInfo model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.BaseData.ZT_COM_CustomerInfo();
					if(dt.Rows[n]["CustomerID"].ToString()!="")
					{
						model.CustomerID=int.Parse(dt.Rows[n]["CustomerID"].ToString());
					}
					model.KeepPerson=dt.Rows[n]["KeepPerson"].ToString();
					model.Telephone=dt.Rows[n]["Telephone"].ToString();
					model.Mobile=dt.Rows[n]["Mobile"].ToString();
					model.FAX=dt.Rows[n]["FAX"].ToString();
					model.QQ=dt.Rows[n]["QQ"].ToString();
					model.Email=dt.Rows[n]["Email"].ToString();
					model.CompanyName=dt.Rows[n]["CompanyName"].ToString();
					model.CompanyAddress=dt.Rows[n]["CompanyAddress"].ToString();
					model.CompanyMailNum=dt.Rows[n]["CompanyMailNum"].ToString();
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
		/// 获得数据列表
		/// </summary>
		public DataSet GetAllList()
		{
			return GetList("");
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
			//return dal.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  成员方法
	}
}


using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.BaseData;
namespace WebProject.BLL.BaseData
{
	/// <summary>
	/// 业务逻辑类ZT_COM_ProductType 的摘要说明。
	/// </summary>
	public class ZT_COM_ProductType
	{
		private readonly WebProject.DAL.BaseData.ZT_COM_ProductType dal=new WebProject.DAL.BaseData.ZT_COM_ProductType();
		public ZT_COM_ProductType()
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
		public bool Exists(int TypeID)
		{
			return dal.Exists(TypeID);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int  Add(WebProject.Model.BaseData.ZT_COM_ProductType model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public void Update(WebProject.Model.BaseData.ZT_COM_ProductType model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int TypeID)
		{			
			dal.Delete(TypeID);
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_ProductType GetModel(int TypeID)
		{			
			return dal.GetModel(TypeID);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中。
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_ProductType GetModelByCache(int TypeID)
		{
			
			string CacheKey = "ZT_COM_ProductTypeModel-" + TypeID;
            object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(TypeID);
					if (objModel != null)
					{
                        int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
                        WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.BaseData.ZT_COM_ProductType)objModel;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return dal.GetList(strWhere);
		}

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere, string filedOrder)
        {
            return dal.GetList(strWhere, filedOrder);
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
		public List<WebProject.Model.BaseData.ZT_COM_ProductType> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<WebProject.Model.BaseData.ZT_COM_ProductType> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.BaseData.ZT_COM_ProductType> modelList = new List<WebProject.Model.BaseData.ZT_COM_ProductType>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.BaseData.ZT_COM_ProductType model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.BaseData.ZT_COM_ProductType();
					if(dt.Rows[n]["TypeID"].ToString()!="")
					{
						model.TypeID=int.Parse(dt.Rows[n]["TypeID"].ToString());
					}
					model.TypeName=dt.Rows[n]["TypeName"].ToString();
					model.TypeNo=dt.Rows[n]["TypeNo"].ToString();
					if(dt.Rows[n]["TypeOrder"].ToString()!="")
					{
						model.TypeOrder=int.Parse(dt.Rows[n]["TypeOrder"].ToString());
					}
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


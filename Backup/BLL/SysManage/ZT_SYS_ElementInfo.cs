using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.SysManage;
namespace WebProject.BLL.SysManage
{
	/// <summary>
	/// 业务逻辑类ZT_SYS_ElementInfo 的摘要说明。
	/// </summary>
	public class ZT_SYS_ElementInfo
	{
		private readonly WebProject.DAL.SysManage.ZT_SYS_ElementInfo dal=new WebProject.DAL.SysManage.ZT_SYS_ElementInfo();
		public ZT_SYS_ElementInfo()
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
		public bool Exists(int ElementID)
		{
			return dal.Exists(ElementID);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int  Add(WebProject.Model.SysManage.ZT_SYS_ElementInfo model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public void Update(WebProject.Model.SysManage.ZT_SYS_ElementInfo model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int ElementID)
		{
			
			dal.Delete(ElementID);
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.SysManage.ZT_SYS_ElementInfo GetModel(int ElementID)
		{
			
			return dal.GetModel(ElementID);
		}

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public WebProject.Model.SysManage.ZT_SYS_ElementInfo GetModel(string ElementLink)
        {
            return dal.GetModel(ElementLink);
        }

		/// <summary>
		/// 得到一个对象实体，从缓存中。
		/// </summary>
		public WebProject.Model.SysManage.ZT_SYS_ElementInfo GetModelByCache(int ElementID)
		{
			
			string CacheKey = "ZT_SYS_ElementInfoModel-" + ElementID;
			object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(ElementID);
					if (objModel != null)
					{
						int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
						WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.SysManage.ZT_SYS_ElementInfo)objModel;
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
		public List<WebProject.Model.SysManage.ZT_SYS_ElementInfo> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<WebProject.Model.SysManage.ZT_SYS_ElementInfo> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.SysManage.ZT_SYS_ElementInfo> modelList = new List<WebProject.Model.SysManage.ZT_SYS_ElementInfo>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.SysManage.ZT_SYS_ElementInfo model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.SysManage.ZT_SYS_ElementInfo();
					if(dt.Rows[n]["ElementID"].ToString()!="")
					{
						model.ElementID=int.Parse(dt.Rows[n]["ElementID"].ToString());
					}
					model.ElementCode=dt.Rows[n]["ElementCode"].ToString();
					model.ElementName=dt.Rows[n]["ElementName"].ToString();
					model.ElementDesc=dt.Rows[n]["ElementDesc"].ToString();
					model.ParentCode=dt.Rows[n]["ParentCode"].ToString();
					model.ElementLink=dt.Rows[n]["ElementLink"].ToString();
					model.ElementPicLink=dt.Rows[n]["ElementPicLink"].ToString();
					model.ElementShow=dt.Rows[n]["ElementShow"].ToString();
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

        public DataSet GetMenuList(string RoleNo)
        {
            return dal.GetMenuList(RoleNo);
        }

        public DataSet GetMenuItemList(string ParentCode, string RoleNo)
        {
            return dal.GetMenuItemList(ParentCode, RoleNo);
        }

		#endregion  成员方法
	}
}


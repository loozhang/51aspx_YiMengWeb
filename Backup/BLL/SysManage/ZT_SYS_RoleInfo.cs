using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.SysManage;
namespace WebProject.BLL.SysManage
{
	/// <summary>
	/// ҵ���߼���ZT_SYS_RoleInfo ��ժҪ˵����
	/// </summary>
	public class ZT_SYS_RoleInfo
	{
		private readonly WebProject.DAL.SysManage.ZT_SYS_RoleInfo dal=new WebProject.DAL.SysManage.ZT_SYS_RoleInfo();
		public ZT_SYS_RoleInfo()
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
		public bool Exists(int RoleID)
		{
			return dal.Exists(RoleID);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public int  Add(WebProject.Model.SysManage.ZT_SYS_RoleInfo model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public void Update(WebProject.Model.SysManage.ZT_SYS_RoleInfo model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int RoleID)
		{
			
			dal.Delete(RoleID);
		}

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public WebProject.Model.SysManage.ZT_SYS_RoleInfo GetModel(int RoleID)
		{			
			return dal.GetModel(RoleID);
		}

		/// <summary>
		/// �õ�һ������ʵ�壬�ӻ����С�
		/// </summary>
		public WebProject.Model.SysManage.ZT_SYS_RoleInfo GetModelByCache(int RoleID)
		{
			
			string CacheKey = "ZT_SYS_RoleInfoModel-" + RoleID;
			object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(RoleID);
					if (objModel != null)
					{
						int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
						WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.SysManage.ZT_SYS_RoleInfo)objModel;
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
		public List<WebProject.Model.SysManage.ZT_SYS_RoleInfo> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// ��������б�
		/// </summary>
		public List<WebProject.Model.SysManage.ZT_SYS_RoleInfo> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.SysManage.ZT_SYS_RoleInfo> modelList = new List<WebProject.Model.SysManage.ZT_SYS_RoleInfo>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.SysManage.ZT_SYS_RoleInfo model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.SysManage.ZT_SYS_RoleInfo();
					if(dt.Rows[n]["RoleID"].ToString()!="")
					{
						model.RoleID=int.Parse(dt.Rows[n]["RoleID"].ToString());
					}
					model.RoleNo=dt.Rows[n]["RoleNo"].ToString();
					model.RoleName=dt.Rows[n]["RoleName"].ToString();
					model.RoleDesc=dt.Rows[n]["RoleDesc"].ToString();
					model.RoleElements=dt.Rows[n]["RoleElements"].ToString();
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
					model.Status=dt.Rows[n]["Status"].ToString();
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

        /// <summary>
        /// �õ�һ������ʵ��
        /// </summary>
        public WebProject.Model.SysManage.ZT_SYS_RoleInfo GetModel(string RoleNo)
        {
            return dal.GetModel(RoleNo);
        }

        public DataSet GetExcelList(string strWhere)
        {
            return dal.GetExcelList(strWhere);
        }

        /// <summary>
        /// ��������б�
        /// </summary>
        public string GetCount(string wheresql)
        {
            return dal.GetCount(wheresql);
        }
        /// <summary>
        /// ��������б�
        /// </summary>
        public DataSet GetList(int PageSize, int PageIndex, string strWhere)
        {
            return dal.GetList(PageSize, PageIndex, strWhere);
        }

		#endregion  ��Ա����
	}
}


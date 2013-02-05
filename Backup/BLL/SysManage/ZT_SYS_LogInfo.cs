using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.SysManage;
namespace WebProject.BLL.SysManage
{
	/// <summary>
	/// ҵ���߼���ZT_SYS_LogInfo ��ժҪ˵����
	/// </summary>
	public class ZT_SYS_LogInfo
	{
		private readonly WebProject.DAL.SysManage.ZT_SYS_LogInfo dal=new WebProject.DAL.SysManage.ZT_SYS_LogInfo();
		public ZT_SYS_LogInfo()
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
		public bool Exists(int LogID)
		{
			return dal.Exists(LogID);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public int  Add(WebProject.Model.SysManage.ZT_SYS_LogInfo model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public void Update(WebProject.Model.SysManage.ZT_SYS_LogInfo model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int LogID)
		{
			
			dal.Delete(LogID);
		}

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public WebProject.Model.SysManage.ZT_SYS_LogInfo GetModel(int LogID)
		{
			
			return dal.GetModel(LogID);
		}

		/// <summary>
		/// �õ�һ������ʵ�壬�ӻ����С�
		/// </summary>
		public WebProject.Model.SysManage.ZT_SYS_LogInfo GetModelByCache(int LogID)
		{
			
			string CacheKey = "ZT_SYS_LogInfoModel-" + LogID;
			object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(LogID);
					if (objModel != null)
					{
						int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
						WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.SysManage.ZT_SYS_LogInfo)objModel;
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
		public List<WebProject.Model.SysManage.ZT_SYS_LogInfo> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// ��������б�
		/// </summary>
		public List<WebProject.Model.SysManage.ZT_SYS_LogInfo> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.SysManage.ZT_SYS_LogInfo> modelList = new List<WebProject.Model.SysManage.ZT_SYS_LogInfo>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.SysManage.ZT_SYS_LogInfo model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.SysManage.ZT_SYS_LogInfo();
					if(dt.Rows[n]["LogID"].ToString()!="")
					{
						model.LogID=int.Parse(dt.Rows[n]["LogID"].ToString());
					}
					model.LogType=dt.Rows[n]["LogType"].ToString();
					model.OperatorType=dt.Rows[n]["OperatorType"].ToString();
					model.FuncName=dt.Rows[n]["FuncName"].ToString();
					model.OperatorInfo=dt.Rows[n]["OperatorInfo"].ToString();
					model.LoginIP=dt.Rows[n]["LoginIP"].ToString();
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

		/// <summary>
		/// ��������б�
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
			//return dal.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  ��Ա����
	}
}


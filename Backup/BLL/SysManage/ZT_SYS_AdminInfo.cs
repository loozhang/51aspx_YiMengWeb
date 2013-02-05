using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.SysManage;
namespace WebProject.BLL.SysManage
{
	/// <summary>
	/// ҵ���߼���ZT_SYS_AdminInfo ��ժҪ˵����
	/// </summary>
	public class ZT_SYS_AdminInfo
	{
		private readonly WebProject.DAL.SysManage.ZT_SYS_AdminInfo dal=new WebProject.DAL.SysManage.ZT_SYS_AdminInfo();
		public ZT_SYS_AdminInfo()
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
		public bool Exists(int AdminID)
		{
			return dal.Exists(AdminID);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public int  Add(WebProject.Model.SysManage.ZT_SYS_AdminInfo model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public void Update(WebProject.Model.SysManage.ZT_SYS_AdminInfo model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int AdminID)
		{
			
			dal.Delete(AdminID);
		}

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public WebProject.Model.SysManage.ZT_SYS_AdminInfo GetModel(int AdminID)
		{			
			return dal.GetModel(AdminID);
		}

		/// <summary>
		/// �õ�һ������ʵ�壬�ӻ����С�
		/// </summary>
		public WebProject.Model.SysManage.ZT_SYS_AdminInfo GetModelByCache(int AdminID)
		{
			
			string CacheKey = "ZT_SYS_AdminInfoModel-" + AdminID;
			object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(AdminID);
					if (objModel != null)
					{
						int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
						WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.SysManage.ZT_SYS_AdminInfo)objModel;
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
		public List<WebProject.Model.SysManage.ZT_SYS_AdminInfo> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// ��������б�
		/// </summary>
		public List<WebProject.Model.SysManage.ZT_SYS_AdminInfo> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.SysManage.ZT_SYS_AdminInfo> modelList = new List<WebProject.Model.SysManage.ZT_SYS_AdminInfo>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.SysManage.ZT_SYS_AdminInfo model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.SysManage.ZT_SYS_AdminInfo();
					if(dt.Rows[n]["AdminID"].ToString()!="")
					{
						model.AdminID=int.Parse(dt.Rows[n]["AdminID"].ToString());
					}
					model.AdminNo=dt.Rows[n]["AdminNo"].ToString();
					model.Password=dt.Rows[n]["Password"].ToString();
					model.RoleNo=dt.Rows[n]["RoleNo"].ToString();
					model.IsLockedOut=dt.Rows[n]["IsLockedOut"].ToString();
					model.AdminName=dt.Rows[n]["AdminName"].ToString();
					model.Sex=dt.Rows[n]["Sex"].ToString();
                    if (dt.Rows[n]["LastLoginDate"].ToString() != "")
					{
                        model.LastLoginDate = DateTime.Parse(dt.Rows[n]["LastLoginDate"].ToString());
					}
					model.IDCardNum=dt.Rows[n]["IDCardNum"].ToString();
					model.Telephone=dt.Rows[n]["Telephone"].ToString();
					model.Mobile=dt.Rows[n]["Mobile"].ToString();
					model.HomeAddress=dt.Rows[n]["HomeAddress"].ToString();
					model.HomeMailNum=dt.Rows[n]["HomeMailNum"].ToString();
					model.NowAddress=dt.Rows[n]["NowAddress"].ToString();
					model.NowMailNum=dt.Rows[n]["NowMailNum"].ToString();
					model.CompanyAddress=dt.Rows[n]["CompanyAddress"].ToString();
					model.CompanyMailNum=dt.Rows[n]["CompanyMailNum"].ToString();
					model.QQ=dt.Rows[n]["QQ"].ToString();
					model.Email=dt.Rows[n]["Email"].ToString();
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


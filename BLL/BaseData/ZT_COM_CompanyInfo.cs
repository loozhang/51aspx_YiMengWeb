using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.BaseData;
namespace WebProject.BLL.BaseData
{
	/// <summary>
	/// ҵ���߼���ZT_COM_CompanyInfo ��ժҪ˵����
	/// </summary>
	public class ZT_COM_CompanyInfo
	{
		private readonly WebProject.DAL.BaseData.ZT_COM_CompanyInfo dal=new WebProject.DAL.BaseData.ZT_COM_CompanyInfo();
		public ZT_COM_CompanyInfo()
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
		public bool Exists(int InfoID)
		{
			return dal.Exists(InfoID);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public int  Add(WebProject.Model.BaseData.ZT_COM_CompanyInfo model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public void Update(WebProject.Model.BaseData.ZT_COM_CompanyInfo model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int InfoID)
		{			
			dal.Delete(InfoID);
		}

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_CompanyInfo GetModel(int InfoID)
		{			
			return dal.GetModel(InfoID);
		}

		/// <summary>
		/// �õ�һ������ʵ�壬�ӻ����С�
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_CompanyInfo GetModelByCache(int InfoID)
		{			
			string CacheKey = "ZT_COM_CompanyInfoModel-" + InfoID;
            object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(InfoID);
					if (objModel != null)
					{
                        int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
                        WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.BaseData.ZT_COM_CompanyInfo)objModel;
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
		public List<WebProject.Model.BaseData.ZT_COM_CompanyInfo> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// ��������б�
		/// </summary>
		public List<WebProject.Model.BaseData.ZT_COM_CompanyInfo> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.BaseData.ZT_COM_CompanyInfo> modelList = new List<WebProject.Model.BaseData.ZT_COM_CompanyInfo>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.BaseData.ZT_COM_CompanyInfo model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.BaseData.ZT_COM_CompanyInfo();
					if(dt.Rows[n]["InfoID"].ToString()!="")
					{
						model.InfoID=int.Parse(dt.Rows[n]["InfoID"].ToString());
					}
					if(dt.Rows[n]["InfoOrder"].ToString()!="")
					{
						model.InfoOrder=int.Parse(dt.Rows[n]["InfoOrder"].ToString());
					}
					model.Title=dt.Rows[n]["Title"].ToString();
					model.ImgUrl=dt.Rows[n]["ImgUrl"].ToString();
					model.Body=dt.Rows[n]["Body"].ToString();
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


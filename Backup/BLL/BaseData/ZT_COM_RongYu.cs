using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.BaseData;
namespace WebProject.BLL.BaseData
{
	/// <summary>
	/// ҵ���߼���ZT_COM_RongYu ��ժҪ˵����
	/// </summary>
	public class ZT_COM_RongYu
	{
		private readonly WebProject.DAL.BaseData.ZT_COM_RongYu dal=new WebProject.DAL.BaseData.ZT_COM_RongYu();
		public ZT_COM_RongYu()
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
		public bool Exists(int RongYuID)
		{
			return dal.Exists(RongYuID);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public int  Add(WebProject.Model.BaseData.ZT_COM_RongYu model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public void Update(WebProject.Model.BaseData.ZT_COM_RongYu model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int RongYuID)
		{
			
			dal.Delete(RongYuID);
		}

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_RongYu GetModel(int RongYuID)
		{
			
			return dal.GetModel(RongYuID);
		}

		/// <summary>
		/// �õ�һ������ʵ�壬�ӻ����С�
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_RongYu GetModelByCache(int RongYuID)
		{
			
			string CacheKey = "ZT_COM_RongYuModel-" + RongYuID;
			object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(RongYuID);
					if (objModel != null)
					{
						int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
						WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.BaseData.ZT_COM_RongYu)objModel;
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
		public List<WebProject.Model.BaseData.ZT_COM_RongYu> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// ��������б�
		/// </summary>
		public List<WebProject.Model.BaseData.ZT_COM_RongYu> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.BaseData.ZT_COM_RongYu> modelList = new List<WebProject.Model.BaseData.ZT_COM_RongYu>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.BaseData.ZT_COM_RongYu model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.BaseData.ZT_COM_RongYu();
					if(dt.Rows[n]["RongYuID"].ToString()!="")
					{
						model.RongYuID=int.Parse(dt.Rows[n]["RongYuID"].ToString());
					}
					model.Title=dt.Rows[n]["Title"].ToString();
					model.ImgUrl=dt.Rows[n]["ImgUrl"].ToString();
					model.Body=dt.Rows[n]["Body"].ToString();
					model.RongYuTypeName=dt.Rows[n]["RongYuTypeName"].ToString();
					model.RongYuTypeNo=dt.Rows[n]["RongYuTypeNo"].ToString();
					if(dt.Rows[n]["RongYuOrder"].ToString()!="")
					{
						model.RongYuOrder=int.Parse(dt.Rows[n]["RongYuOrder"].ToString());
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


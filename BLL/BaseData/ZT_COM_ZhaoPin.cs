using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.BaseData;
namespace WebProject.BLL.BaseData
{
	/// <summary>
	/// ҵ���߼���ZT_COM_ZhaoPin ��ժҪ˵����
	/// </summary>
	public class ZT_COM_ZhaoPin
	{
		private readonly WebProject.DAL.BaseData.ZT_COM_ZhaoPin dal=new WebProject.DAL.BaseData.ZT_COM_ZhaoPin();
		public ZT_COM_ZhaoPin()
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
		public bool Exists(int ZhaoPinID)
		{
			return dal.Exists(ZhaoPinID);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public int  Add(WebProject.Model.BaseData.ZT_COM_ZhaoPin model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public void Update(WebProject.Model.BaseData.ZT_COM_ZhaoPin model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int ZhaoPinID)
		{
			
			dal.Delete(ZhaoPinID);
		}

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_ZhaoPin GetModel(int ZhaoPinID)
		{
			
			return dal.GetModel(ZhaoPinID);
		}

		/// <summary>
		/// �õ�һ������ʵ�壬�ӻ����С�
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_ZhaoPin GetModelByCache(int ZhaoPinID)
		{
			
			string CacheKey = "ZT_COM_ZhaoPinModel-" + ZhaoPinID;
			object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(ZhaoPinID);
					if (objModel != null)
					{
						int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
						WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.BaseData.ZT_COM_ZhaoPin)objModel;
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
		public List<WebProject.Model.BaseData.ZT_COM_ZhaoPin> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// ��������б�
		/// </summary>
		public List<WebProject.Model.BaseData.ZT_COM_ZhaoPin> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.BaseData.ZT_COM_ZhaoPin> modelList = new List<WebProject.Model.BaseData.ZT_COM_ZhaoPin>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.BaseData.ZT_COM_ZhaoPin model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.BaseData.ZT_COM_ZhaoPin();
					if(dt.Rows[n]["ZhaoPinID"].ToString()!="")
					{
						model.ZhaoPinID=int.Parse(dt.Rows[n]["ZhaoPinID"].ToString());
					}
					model.Position=dt.Rows[n]["Position"].ToString();
					if(dt.Rows[n]["ZhaoPinOrder"].ToString()!="")
					{
						model.ZhaoPinOrder=int.Parse(dt.Rows[n]["ZhaoPinOrder"].ToString());
					}
					model.Address=dt.Rows[n]["Address"].ToString();
					if(dt.Rows[n]["Number"].ToString()!="")
					{
						model.Number=int.Parse(dt.Rows[n]["Number"].ToString());
					}
					model.Salary=dt.Rows[n]["Salary"].ToString();
					if(dt.Rows[n]["StartDate"].ToString()!="")
					{
						model.StartDate=DateTime.Parse(dt.Rows[n]["StartDate"].ToString());
					}
					if(dt.Rows[n]["EndDate"].ToString()!="")
					{
						model.EndDate=DateTime.Parse(dt.Rows[n]["EndDate"].ToString());
					}
					model.Body=dt.Rows[n]["Body"].ToString();
					if(dt.Rows[n]["YingPin"].ToString()!="")
					{
						model.YingPin=int.Parse(dt.Rows[n]["YingPin"].ToString());
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


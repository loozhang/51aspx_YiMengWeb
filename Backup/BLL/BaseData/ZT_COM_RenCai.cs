using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.BaseData;
namespace WebProject.BLL.BaseData
{
	/// <summary>
	/// ҵ���߼���ZT_COM_RenCai ��ժҪ˵����
	/// </summary>
	public class ZT_COM_RenCai
	{
		private readonly WebProject.DAL.BaseData.ZT_COM_RenCai dal=new WebProject.DAL.BaseData.ZT_COM_RenCai();
		public ZT_COM_RenCai()
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
		public bool Exists(int RenCaiID)
		{
			return dal.Exists(RenCaiID);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public int  Add(WebProject.Model.BaseData.ZT_COM_RenCai model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public void Update(WebProject.Model.BaseData.ZT_COM_RenCai model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int RenCaiID)
		{
			
			dal.Delete(RenCaiID);
		}

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_RenCai GetModel(int RenCaiID)
		{
			
			return dal.GetModel(RenCaiID);
		}

		/// <summary>
		/// �õ�һ������ʵ�壬�ӻ����С�
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_RenCai GetModelByCache(int RenCaiID)
		{
			
			string CacheKey = "ZT_COM_RenCaiModel-" + RenCaiID;
			object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(RenCaiID);
					if (objModel != null)
					{
						int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
						WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.BaseData.ZT_COM_RenCai)objModel;
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
		public List<WebProject.Model.BaseData.ZT_COM_RenCai> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// ��������б�
		/// </summary>
		public List<WebProject.Model.BaseData.ZT_COM_RenCai> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.BaseData.ZT_COM_RenCai> modelList = new List<WebProject.Model.BaseData.ZT_COM_RenCai>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.BaseData.ZT_COM_RenCai model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.BaseData.ZT_COM_RenCai();
					if(dt.Rows[n]["RenCaiID"].ToString()!="")
					{
						model.RenCaiID=int.Parse(dt.Rows[n]["RenCaiID"].ToString());
					}
					model.Position=dt.Rows[n]["Position"].ToString();
					model.Name=dt.Rows[n]["Name"].ToString();
					model.Sex=dt.Rows[n]["Sex"].ToString();
					if(dt.Rows[n]["Birthday"].ToString()!="")
					{
						model.Birthday=DateTime.Parse(dt.Rows[n]["Birthday"].ToString());
					}
					model.Address=dt.Rows[n]["Address"].ToString();
					model.Telephone=dt.Rows[n]["Telephone"].ToString();
					model.Mobile=dt.Rows[n]["Mobile"].ToString();
					model.Email=dt.Rows[n]["Email"].ToString();
					model.School=dt.Rows[n]["School"].ToString();
					model.Resume=dt.Rows[n]["Resume"].ToString();
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


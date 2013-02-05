using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.BaseData;
namespace WebProject.BLL.BaseData
{
	/// <summary>
	/// ҵ���߼���ZT_COM_LinkURL ��ժҪ˵����
	/// </summary>
	public class ZT_COM_LinkURL
	{
		private readonly WebProject.DAL.BaseData.ZT_COM_LinkURL dal=new WebProject.DAL.BaseData.ZT_COM_LinkURL();
		public ZT_COM_LinkURL()
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
		public bool Exists(int LinkID)
		{
			return dal.Exists(LinkID);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public int  Add(WebProject.Model.BaseData.ZT_COM_LinkURL model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public void Update(WebProject.Model.BaseData.ZT_COM_LinkURL model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int LinkID)
		{
			
			dal.Delete(LinkID);
		}

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_LinkURL GetModel(int LinkID)
		{
			
			return dal.GetModel(LinkID);
		}

		/// <summary>
		/// �õ�һ������ʵ�壬�ӻ����С�
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_LinkURL GetModelByCache(int LinkID)
		{
			
			string CacheKey = "ZT_COM_LinkURLModel-" + LinkID;
			object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(LinkID);
					if (objModel != null)
					{
						int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
						WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.BaseData.ZT_COM_LinkURL)objModel;
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
		public List<WebProject.Model.BaseData.ZT_COM_LinkURL> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// ��������б�
		/// </summary>
		public List<WebProject.Model.BaseData.ZT_COM_LinkURL> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.BaseData.ZT_COM_LinkURL> modelList = new List<WebProject.Model.BaseData.ZT_COM_LinkURL>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.BaseData.ZT_COM_LinkURL model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.BaseData.ZT_COM_LinkURL();
					if(dt.Rows[n]["LinkID"].ToString()!="")
					{
						model.LinkID=int.Parse(dt.Rows[n]["LinkID"].ToString());
					}
					model.Title=dt.Rows[n]["Title"].ToString();
					model.LinkUrl=dt.Rows[n]["LinkUrl"].ToString();
					model.ImgUrl=dt.Rows[n]["ImgUrl"].ToString();
					if(dt.Rows[n]["LinkOrder"].ToString()!="")
					{
						model.LinkOrder=int.Parse(dt.Rows[n]["LinkOrder"].ToString());
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


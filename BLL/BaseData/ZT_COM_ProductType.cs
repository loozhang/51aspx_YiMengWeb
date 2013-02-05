using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.BaseData;
namespace WebProject.BLL.BaseData
{
	/// <summary>
	/// ҵ���߼���ZT_COM_ProductType ��ժҪ˵����
	/// </summary>
	public class ZT_COM_ProductType
	{
		private readonly WebProject.DAL.BaseData.ZT_COM_ProductType dal=new WebProject.DAL.BaseData.ZT_COM_ProductType();
		public ZT_COM_ProductType()
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
		public bool Exists(int TypeID)
		{
			return dal.Exists(TypeID);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public int  Add(WebProject.Model.BaseData.ZT_COM_ProductType model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public void Update(WebProject.Model.BaseData.ZT_COM_ProductType model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int TypeID)
		{			
			dal.Delete(TypeID);
		}

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_ProductType GetModel(int TypeID)
		{			
			return dal.GetModel(TypeID);
		}

		/// <summary>
		/// �õ�һ������ʵ�壬�ӻ����С�
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
		/// ��������б�
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return dal.GetList(strWhere);
		}

        /// <summary>
        /// ��������б�
        /// </summary>
        public DataSet GetList(string strWhere, string filedOrder)
        {
            return dal.GetList(strWhere, filedOrder);
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
		public List<WebProject.Model.BaseData.ZT_COM_ProductType> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// ��������б�
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


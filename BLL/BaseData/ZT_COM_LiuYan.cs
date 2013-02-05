using System;
using System.Data;
using System.Collections.Generic;
using WebProject.Common;
using WebProject.Model.BaseData;
namespace WebProject.BLL.BaseData
{
	/// <summary>
	/// 业务逻辑类ZT_COM_LiuYan 的摘要说明。
	/// </summary>
	public class ZT_COM_LiuYan
	{
		private readonly WebProject.DAL.BaseData.ZT_COM_LiuYan dal=new WebProject.DAL.BaseData.ZT_COM_LiuYan();
		public ZT_COM_LiuYan()
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
		public bool Exists(int LiuYanID)
		{
			return dal.Exists(LiuYanID);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int  Add(WebProject.Model.BaseData.ZT_COM_LiuYan model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public void Update(WebProject.Model.BaseData.ZT_COM_LiuYan model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int LiuYanID)
		{
			
			dal.Delete(LiuYanID);
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_LiuYan GetModel(int LiuYanID)
		{
			
			return dal.GetModel(LiuYanID);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中。
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_LiuYan GetModelByCache(int LiuYanID)
		{
			
			string CacheKey = "ZT_COM_LiuYanModel-" + LiuYanID;
			object objModel = WebProject.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(LiuYanID);
					if (objModel != null)
					{
						int ModelCache = WebProject.Common.ConfigHelper.GetConfigInt("ModelCache");
						WebProject.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (WebProject.Model.BaseData.ZT_COM_LiuYan)objModel;
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
		public List<WebProject.Model.BaseData.ZT_COM_LiuYan> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<WebProject.Model.BaseData.ZT_COM_LiuYan> DataTableToList(DataTable dt)
		{
			List<WebProject.Model.BaseData.ZT_COM_LiuYan> modelList = new List<WebProject.Model.BaseData.ZT_COM_LiuYan>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				WebProject.Model.BaseData.ZT_COM_LiuYan model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = new WebProject.Model.BaseData.ZT_COM_LiuYan();
					if(dt.Rows[n]["LiuYanID"].ToString()!="")
					{
						model.LiuYanID=int.Parse(dt.Rows[n]["LiuYanID"].ToString());
					}
					model.MainInfo=dt.Rows[n]["MainInfo"].ToString();
					model.Body=dt.Rows[n]["Body"].ToString();
					model.Name=dt.Rows[n]["Name"].ToString();
					model.Sex=dt.Rows[n]["Sex"].ToString();
					model.Telephone=dt.Rows[n]["Telephone"].ToString();
					model.Mobile=dt.Rows[n]["Mobile"].ToString();
					model.Fax=dt.Rows[n]["Fax"].ToString();
					model.Email=dt.Rows[n]["Email"].ToString();
					model.CompanyName=dt.Rows[n]["CompanyName"].ToString();
					model.Address=dt.Rows[n]["Address"].ToString();
					model.MailNum=dt.Rows[n]["MailNum"].ToString();
					model.IsIndex=dt.Rows[n]["IsIndex"].ToString();
					model.Reply=dt.Rows[n]["Reply"].ToString();
					if(dt.Rows[n]["ReplyTime"].ToString()!="")
					{
						model.ReplyTime=DateTime.Parse(dt.Rows[n]["ReplyTime"].ToString());
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
		/// 获得数据列表
		/// </summary>
		public DataSet GetAllList()
		{
			return GetList("");
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
			//return dal.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  成员方法
	}
}


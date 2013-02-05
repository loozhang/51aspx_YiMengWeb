using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.BaseData
{
	/// <summary>
	/// 数据访问类ZT_COM_LinkURL。
	/// </summary>
	public class ZT_COM_LinkURL
	{
		public ZT_COM_LinkURL()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("LinkID", "ZT_COM_LinkURL"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int LinkID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_COM_LinkURL");
			strSql.Append(" where LinkID=@LinkID ");
			SqlParameter[] parameters = {
					new SqlParameter("@LinkID", SqlDbType.Int,4)};
			parameters[0].Value = LinkID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.BaseData.ZT_COM_LinkURL model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_COM_LinkURL(");
			strSql.Append("Title,LinkUrl,ImgUrl,LinkOrder,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark)");
			strSql.Append(" values (");
			strSql.Append("@Title,@LinkUrl,@ImgUrl,@LinkOrder,@CreateBy,@CreateDate,@LastUpdateBy,@LastUpdateDate,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@Title", SqlDbType.Text),
					new SqlParameter("@LinkUrl", SqlDbType.Text),
					new SqlParameter("@ImgUrl", SqlDbType.Text),
					new SqlParameter("@LinkOrder", SqlDbType.Int,4),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.Title;
			parameters[1].Value = model.LinkUrl;
			parameters[2].Value = model.ImgUrl;
			parameters[3].Value = model.LinkOrder;
			parameters[4].Value = model.CreateBy;
			parameters[5].Value = model.CreateDate;
			parameters[6].Value = model.LastUpdateBy;
			parameters[7].Value = model.LastUpdateDate;
			parameters[8].Value = model.Remark;

			object obj = DbHelperSQL.GetSingle(strSql.ToString(),parameters);
			if (obj == null)
			{
				return 1;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
		public void Update(WebProject.Model.BaseData.ZT_COM_LinkURL model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_COM_LinkURL set ");
			strSql.Append("Title=@Title,");
			strSql.Append("LinkUrl=@LinkUrl,");
			strSql.Append("ImgUrl=@ImgUrl,");
			strSql.Append("LinkOrder=@LinkOrder,");
			strSql.Append("CreateBy=@CreateBy,");
			strSql.Append("CreateDate=@CreateDate,");
			strSql.Append("LastUpdateBy=@LastUpdateBy,");
			strSql.Append("LastUpdateDate=@LastUpdateDate,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where LinkID=@LinkID ");
			SqlParameter[] parameters = {
					new SqlParameter("@LinkID", SqlDbType.Int,4),
					new SqlParameter("@Title", SqlDbType.Text),
					new SqlParameter("@LinkUrl", SqlDbType.Text),
					new SqlParameter("@ImgUrl", SqlDbType.Text),
					new SqlParameter("@LinkOrder", SqlDbType.Int,4),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.LinkID;
			parameters[1].Value = model.Title;
			parameters[2].Value = model.LinkUrl;
			parameters[3].Value = model.ImgUrl;
			parameters[4].Value = model.LinkOrder;
			parameters[5].Value = model.CreateBy;
			parameters[6].Value = model.CreateDate;
			parameters[7].Value = model.LastUpdateBy;
			parameters[8].Value = model.LastUpdateDate;
			parameters[9].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int LinkID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_COM_LinkURL ");
			strSql.Append(" where LinkID=@LinkID ");
			SqlParameter[] parameters = {
					new SqlParameter("@LinkID", SqlDbType.Int,4)};
			parameters[0].Value = LinkID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_LinkURL GetModel(int LinkID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 LinkID,Title,LinkUrl,ImgUrl,LinkOrder,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark from ZT_COM_LinkURL ");
			strSql.Append(" where LinkID=@LinkID ");
			SqlParameter[] parameters = {
					new SqlParameter("@LinkID", SqlDbType.Int,4)};
			parameters[0].Value = LinkID;

			WebProject.Model.BaseData.ZT_COM_LinkURL model=new WebProject.Model.BaseData.ZT_COM_LinkURL();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["LinkID"].ToString()!="")
				{
					model.LinkID=int.Parse(ds.Tables[0].Rows[0]["LinkID"].ToString());
				}
				model.Title=ds.Tables[0].Rows[0]["Title"].ToString();
				model.LinkUrl=ds.Tables[0].Rows[0]["LinkUrl"].ToString();
				model.ImgUrl=ds.Tables[0].Rows[0]["ImgUrl"].ToString();
				if(ds.Tables[0].Rows[0]["LinkOrder"].ToString()!="")
				{
					model.LinkOrder=int.Parse(ds.Tables[0].Rows[0]["LinkOrder"].ToString());
				}
				model.CreateBy=ds.Tables[0].Rows[0]["CreateBy"].ToString();
				if(ds.Tables[0].Rows[0]["CreateDate"].ToString()!="")
				{
					model.CreateDate=DateTime.Parse(ds.Tables[0].Rows[0]["CreateDate"].ToString());
				}
				model.LastUpdateBy=ds.Tables[0].Rows[0]["LastUpdateBy"].ToString();
				if(ds.Tables[0].Rows[0]["LastUpdateDate"].ToString()!="")
				{
					model.LastUpdateDate=DateTime.Parse(ds.Tables[0].Rows[0]["LastUpdateDate"].ToString());
				}
				model.Remark=ds.Tables[0].Rows[0]["Remark"].ToString();
				return model;
			}
			else
			{
				return null;
			}
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select LinkID,Title,LinkUrl,ImgUrl,LinkOrder,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_LinkURL ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
			strSql.Append(" LinkID,Title,LinkUrl,ImgUrl,LinkOrder,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_LinkURL ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "ZT_COM_LinkURL";
			parameters[1].Value = "ID";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  成员方法
	}
}


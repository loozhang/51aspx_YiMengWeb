using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.BaseData
{
	/// <summary>
	/// 数据访问类ZT_COM_WebInfo。
	/// </summary>
	public class ZT_COM_WebInfo
	{
		public ZT_COM_WebInfo()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("ID", "ZT_COM_WebInfo"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int ID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_COM_WebInfo");
			strSql.Append(" where ID=@ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
			parameters[0].Value = ID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.BaseData.ZT_COM_WebInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_COM_WebInfo(");
			strSql.Append("FilePath,WebURL,Title,KeyWords,Description,Remark)");
			strSql.Append(" values (");
			strSql.Append("@FilePath,@WebURL,@Title,@KeyWords,@Description,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@FilePath", SqlDbType.VarChar,500),
					new SqlParameter("@WebURL", SqlDbType.Text),
					new SqlParameter("@Title", SqlDbType.Text),
					new SqlParameter("@KeyWords", SqlDbType.Text),
					new SqlParameter("@Description", SqlDbType.Text),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.FilePath;
			parameters[1].Value = model.WebURL;
			parameters[2].Value = model.Title;
			parameters[3].Value = model.KeyWords;
			parameters[4].Value = model.Description;
			parameters[5].Value = model.Remark;

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
		public void Update(WebProject.Model.BaseData.ZT_COM_WebInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_COM_WebInfo set ");
			strSql.Append("FilePath=@FilePath,");
			strSql.Append("WebURL=@WebURL,");
			strSql.Append("Title=@Title,");
			strSql.Append("KeyWords=@KeyWords,");
			strSql.Append("Description=@Description,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where ID=@ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4),
					new SqlParameter("@FilePath", SqlDbType.VarChar,500),
					new SqlParameter("@WebURL", SqlDbType.Text),
					new SqlParameter("@Title", SqlDbType.Text),
					new SqlParameter("@KeyWords", SqlDbType.Text),
					new SqlParameter("@Description", SqlDbType.Text),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.ID;
			parameters[1].Value = model.FilePath;
			parameters[2].Value = model.WebURL;
			parameters[3].Value = model.Title;
			parameters[4].Value = model.KeyWords;
			parameters[5].Value = model.Description;
			parameters[6].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int ID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_COM_WebInfo ");
			strSql.Append(" where ID=@ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
			parameters[0].Value = ID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_WebInfo GetModel(int ID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 ID,FilePath,WebURL,Title,KeyWords,Description,Remark from ZT_COM_WebInfo ");
			strSql.Append(" where ID=@ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
			parameters[0].Value = ID;

			WebProject.Model.BaseData.ZT_COM_WebInfo model=new WebProject.Model.BaseData.ZT_COM_WebInfo();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["ID"].ToString()!="")
				{
					model.ID=int.Parse(ds.Tables[0].Rows[0]["ID"].ToString());
				}
				model.FilePath=ds.Tables[0].Rows[0]["FilePath"].ToString();
				model.WebURL=ds.Tables[0].Rows[0]["WebURL"].ToString();
				model.Title=ds.Tables[0].Rows[0]["Title"].ToString();
				model.KeyWords=ds.Tables[0].Rows[0]["KeyWords"].ToString();
				model.Description=ds.Tables[0].Rows[0]["Description"].ToString();
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
			strSql.Append("select ID,FilePath,WebURL,Title,KeyWords,Description,Remark ");
			strSql.Append(" FROM ZT_COM_WebInfo ");
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
			strSql.Append(" ID,FilePath,WebURL,Title,KeyWords,Description,Remark ");
			strSql.Append(" FROM ZT_COM_WebInfo ");
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
			parameters[0].Value = "ZT_COM_WebInfo";
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


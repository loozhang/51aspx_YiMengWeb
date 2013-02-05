using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.SysManage
{
	/// <summary>
	/// 数据访问类ZT_SYS_LogInfo。
	/// </summary>
	public class ZT_SYS_LogInfo
	{
		public ZT_SYS_LogInfo()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("LogID", "ZT_SYS_LogInfo"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int LogID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_SYS_LogInfo");
			strSql.Append(" where LogID=@LogID ");
			SqlParameter[] parameters = {
					new SqlParameter("@LogID", SqlDbType.Int,4)};
			parameters[0].Value = LogID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.SysManage.ZT_SYS_LogInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_SYS_LogInfo(");
			strSql.Append("LogType,OperatorType,FuncName,OperatorInfo,LoginIP,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark)");
			strSql.Append(" values (");
			strSql.Append("@LogType,@OperatorType,@FuncName,@OperatorInfo,@LoginIP,@CreateBy,@CreateDate,@LastUpdateBy,@LastUpdateDate,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@LogType", SqlDbType.VarChar,50),
					new SqlParameter("@OperatorType", SqlDbType.VarChar,50),
					new SqlParameter("@FuncName", SqlDbType.VarChar,50),
					new SqlParameter("@OperatorInfo", SqlDbType.Text),
					new SqlParameter("@LoginIP", SqlDbType.VarChar,50),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.LogType;
			parameters[1].Value = model.OperatorType;
			parameters[2].Value = model.FuncName;
			parameters[3].Value = model.OperatorInfo;
			parameters[4].Value = model.LoginIP;
			parameters[5].Value = model.CreateBy;
			parameters[6].Value = model.CreateDate;
			parameters[7].Value = model.LastUpdateBy;
			parameters[8].Value = model.LastUpdateDate;
			parameters[9].Value = model.Remark;

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
		public void Update(WebProject.Model.SysManage.ZT_SYS_LogInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_SYS_LogInfo set ");
			strSql.Append("LogType=@LogType,");
			strSql.Append("OperatorType=@OperatorType,");
			strSql.Append("FuncName=@FuncName,");
			strSql.Append("OperatorInfo=@OperatorInfo,");
			strSql.Append("LoginIP=@LoginIP,");
			strSql.Append("CreateBy=@CreateBy,");
			strSql.Append("CreateDate=@CreateDate,");
			strSql.Append("LastUpdateBy=@LastUpdateBy,");
			strSql.Append("LastUpdateDate=@LastUpdateDate,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where LogID=@LogID ");
			SqlParameter[] parameters = {
					new SqlParameter("@LogID", SqlDbType.Int,4),
					new SqlParameter("@LogType", SqlDbType.VarChar,50),
					new SqlParameter("@OperatorType", SqlDbType.VarChar,50),
					new SqlParameter("@FuncName", SqlDbType.VarChar,50),
					new SqlParameter("@OperatorInfo", SqlDbType.Text),
					new SqlParameter("@LoginIP", SqlDbType.VarChar,50),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.LogID;
			parameters[1].Value = model.LogType;
			parameters[2].Value = model.OperatorType;
			parameters[3].Value = model.FuncName;
			parameters[4].Value = model.OperatorInfo;
			parameters[5].Value = model.LoginIP;
			parameters[6].Value = model.CreateBy;
			parameters[7].Value = model.CreateDate;
			parameters[8].Value = model.LastUpdateBy;
			parameters[9].Value = model.LastUpdateDate;
			parameters[10].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int LogID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_SYS_LogInfo ");
			strSql.Append(" where LogID=@LogID ");
			SqlParameter[] parameters = {
					new SqlParameter("@LogID", SqlDbType.Int,4)};
			parameters[0].Value = LogID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.SysManage.ZT_SYS_LogInfo GetModel(int LogID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 LogID,LogType,OperatorType,FuncName,OperatorInfo,LoginIP,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark from ZT_SYS_LogInfo ");
			strSql.Append(" where LogID=@LogID ");
			SqlParameter[] parameters = {
					new SqlParameter("@LogID", SqlDbType.Int,4)};
			parameters[0].Value = LogID;

			WebProject.Model.SysManage.ZT_SYS_LogInfo model=new WebProject.Model.SysManage.ZT_SYS_LogInfo();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["LogID"].ToString()!="")
				{
					model.LogID=int.Parse(ds.Tables[0].Rows[0]["LogID"].ToString());
				}
				model.LogType=ds.Tables[0].Rows[0]["LogType"].ToString();
				model.OperatorType=ds.Tables[0].Rows[0]["OperatorType"].ToString();
				model.FuncName=ds.Tables[0].Rows[0]["FuncName"].ToString();
				model.OperatorInfo=ds.Tables[0].Rows[0]["OperatorInfo"].ToString();
				model.LoginIP=ds.Tables[0].Rows[0]["LoginIP"].ToString();
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
			strSql.Append("select LogID,LogType,OperatorType,FuncName,OperatorInfo,LoginIP,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_SYS_LogInfo ");
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
			strSql.Append(" LogID,LogType,OperatorType,FuncName,OperatorInfo,LoginIP,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_SYS_LogInfo ");
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
			parameters[0].Value = "ZT_SYS_LogInfo";
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


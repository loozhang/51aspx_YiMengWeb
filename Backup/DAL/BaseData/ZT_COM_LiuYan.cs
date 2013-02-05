using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.BaseData
{
	/// <summary>
	/// 数据访问类ZT_COM_LiuYan。
	/// </summary>
	public class ZT_COM_LiuYan
	{
		public ZT_COM_LiuYan()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("LiuYanID", "ZT_COM_LiuYan"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int LiuYanID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_COM_LiuYan");
			strSql.Append(" where LiuYanID=@LiuYanID ");
			SqlParameter[] parameters = {
					new SqlParameter("@LiuYanID", SqlDbType.Int,4)};
			parameters[0].Value = LiuYanID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.BaseData.ZT_COM_LiuYan model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_COM_LiuYan(");
			strSql.Append("MainInfo,Body,Name,Sex,Telephone,Mobile,Fax,Email,CompanyName,Address,MailNum,IsIndex,Reply,ReplyTime,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark)");
			strSql.Append(" values (");
			strSql.Append("@MainInfo,@Body,@Name,@Sex,@Telephone,@Mobile,@Fax,@Email,@CompanyName,@Address,@MailNum,@IsIndex,@Reply,@ReplyTime,@CreateBy,@CreateDate,@LastUpdateBy,@LastUpdateDate,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@MainInfo", SqlDbType.Text),
					new SqlParameter("@Body", SqlDbType.Text),
					new SqlParameter("@Name", SqlDbType.VarChar,500),
					new SqlParameter("@Sex", SqlDbType.VarChar,2),
					new SqlParameter("@Telephone", SqlDbType.VarChar,20),
					new SqlParameter("@Mobile", SqlDbType.VarChar,20),
					new SqlParameter("@Fax", SqlDbType.VarChar,50),
					new SqlParameter("@Email", SqlDbType.VarChar,50),
					new SqlParameter("@CompanyName", SqlDbType.VarChar,500),
					new SqlParameter("@Address", SqlDbType.VarChar,500),
					new SqlParameter("@MailNum", SqlDbType.VarChar,20),
					new SqlParameter("@IsIndex", SqlDbType.VarChar,2),
					new SqlParameter("@Reply", SqlDbType.Text),
					new SqlParameter("@ReplyTime", SqlDbType.DateTime),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.MainInfo;
			parameters[1].Value = model.Body;
			parameters[2].Value = model.Name;
			parameters[3].Value = model.Sex;
			parameters[4].Value = model.Telephone;
			parameters[5].Value = model.Mobile;
			parameters[6].Value = model.Fax;
			parameters[7].Value = model.Email;
			parameters[8].Value = model.CompanyName;
			parameters[9].Value = model.Address;
			parameters[10].Value = model.MailNum;
			parameters[11].Value = model.IsIndex;
			parameters[12].Value = model.Reply;
			parameters[13].Value = model.ReplyTime;
			parameters[14].Value = model.CreateBy;
			parameters[15].Value = model.CreateDate;
			parameters[16].Value = model.LastUpdateBy;
			parameters[17].Value = model.LastUpdateDate;
			parameters[18].Value = model.Remark;

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
		public void Update(WebProject.Model.BaseData.ZT_COM_LiuYan model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_COM_LiuYan set ");
			strSql.Append("MainInfo=@MainInfo,");
			strSql.Append("Body=@Body,");
			strSql.Append("Name=@Name,");
			strSql.Append("Sex=@Sex,");
			strSql.Append("Telephone=@Telephone,");
			strSql.Append("Mobile=@Mobile,");
			strSql.Append("Fax=@Fax,");
			strSql.Append("Email=@Email,");
			strSql.Append("CompanyName=@CompanyName,");
			strSql.Append("Address=@Address,");
			strSql.Append("MailNum=@MailNum,");
			strSql.Append("IsIndex=@IsIndex,");
			strSql.Append("Reply=@Reply,");
			strSql.Append("ReplyTime=@ReplyTime,");
			strSql.Append("CreateBy=@CreateBy,");
			strSql.Append("CreateDate=@CreateDate,");
			strSql.Append("LastUpdateBy=@LastUpdateBy,");
			strSql.Append("LastUpdateDate=@LastUpdateDate,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where LiuYanID=@LiuYanID ");
			SqlParameter[] parameters = {
					new SqlParameter("@LiuYanID", SqlDbType.Int,4),
					new SqlParameter("@MainInfo", SqlDbType.Text),
					new SqlParameter("@Body", SqlDbType.Text),
					new SqlParameter("@Name", SqlDbType.VarChar,500),
					new SqlParameter("@Sex", SqlDbType.VarChar,2),
					new SqlParameter("@Telephone", SqlDbType.VarChar,20),
					new SqlParameter("@Mobile", SqlDbType.VarChar,20),
					new SqlParameter("@Fax", SqlDbType.VarChar,50),
					new SqlParameter("@Email", SqlDbType.VarChar,50),
					new SqlParameter("@CompanyName", SqlDbType.VarChar,500),
					new SqlParameter("@Address", SqlDbType.VarChar,500),
					new SqlParameter("@MailNum", SqlDbType.VarChar,20),
					new SqlParameter("@IsIndex", SqlDbType.VarChar,2),
					new SqlParameter("@Reply", SqlDbType.Text),
					new SqlParameter("@ReplyTime", SqlDbType.DateTime),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.LiuYanID;
			parameters[1].Value = model.MainInfo;
			parameters[2].Value = model.Body;
			parameters[3].Value = model.Name;
			parameters[4].Value = model.Sex;
			parameters[5].Value = model.Telephone;
			parameters[6].Value = model.Mobile;
			parameters[7].Value = model.Fax;
			parameters[8].Value = model.Email;
			parameters[9].Value = model.CompanyName;
			parameters[10].Value = model.Address;
			parameters[11].Value = model.MailNum;
			parameters[12].Value = model.IsIndex;
			parameters[13].Value = model.Reply;
			parameters[14].Value = model.ReplyTime;
			parameters[15].Value = model.CreateBy;
			parameters[16].Value = model.CreateDate;
			parameters[17].Value = model.LastUpdateBy;
			parameters[18].Value = model.LastUpdateDate;
			parameters[19].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int LiuYanID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_COM_LiuYan ");
			strSql.Append(" where LiuYanID=@LiuYanID ");
			SqlParameter[] parameters = {
					new SqlParameter("@LiuYanID", SqlDbType.Int,4)};
			parameters[0].Value = LiuYanID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_LiuYan GetModel(int LiuYanID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 LiuYanID,MainInfo,Body,Name,Sex,Telephone,Mobile,Fax,Email,CompanyName,Address,MailNum,IsIndex,Reply,ReplyTime,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark from ZT_COM_LiuYan ");
			strSql.Append(" where LiuYanID=@LiuYanID ");
			SqlParameter[] parameters = {
					new SqlParameter("@LiuYanID", SqlDbType.Int,4)};
			parameters[0].Value = LiuYanID;

			WebProject.Model.BaseData.ZT_COM_LiuYan model=new WebProject.Model.BaseData.ZT_COM_LiuYan();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["LiuYanID"].ToString()!="")
				{
					model.LiuYanID=int.Parse(ds.Tables[0].Rows[0]["LiuYanID"].ToString());
				}
				model.MainInfo=ds.Tables[0].Rows[0]["MainInfo"].ToString();
				model.Body=ds.Tables[0].Rows[0]["Body"].ToString();
				model.Name=ds.Tables[0].Rows[0]["Name"].ToString();
				model.Sex=ds.Tables[0].Rows[0]["Sex"].ToString();
				model.Telephone=ds.Tables[0].Rows[0]["Telephone"].ToString();
				model.Mobile=ds.Tables[0].Rows[0]["Mobile"].ToString();
				model.Fax=ds.Tables[0].Rows[0]["Fax"].ToString();
				model.Email=ds.Tables[0].Rows[0]["Email"].ToString();
				model.CompanyName=ds.Tables[0].Rows[0]["CompanyName"].ToString();
				model.Address=ds.Tables[0].Rows[0]["Address"].ToString();
				model.MailNum=ds.Tables[0].Rows[0]["MailNum"].ToString();
				model.IsIndex=ds.Tables[0].Rows[0]["IsIndex"].ToString();
				model.Reply=ds.Tables[0].Rows[0]["Reply"].ToString();
				if(ds.Tables[0].Rows[0]["ReplyTime"].ToString()!="")
				{
					model.ReplyTime=DateTime.Parse(ds.Tables[0].Rows[0]["ReplyTime"].ToString());
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
			strSql.Append("select LiuYanID,MainInfo,Body,Name,Sex,Telephone,Mobile,Fax,Email,CompanyName,Address,MailNum,IsIndex,Reply,ReplyTime,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_LiuYan ");
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
			strSql.Append(" LiuYanID,MainInfo,Body,Name,Sex,Telephone,Mobile,Fax,Email,CompanyName,Address,MailNum,IsIndex,Reply,ReplyTime,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_LiuYan ");
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
			parameters[0].Value = "ZT_COM_LiuYan";
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


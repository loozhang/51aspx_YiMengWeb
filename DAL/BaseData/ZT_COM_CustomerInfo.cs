using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.BaseData
{
	/// <summary>
	/// 数据访问类ZT_COM_CustomerInfo。
	/// </summary>
	public class ZT_COM_CustomerInfo
	{
		public ZT_COM_CustomerInfo()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("CustomerID", "ZT_COM_CustomerInfo"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int CustomerID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_COM_CustomerInfo");
			strSql.Append(" where CustomerID=@CustomerID ");
			SqlParameter[] parameters = {
					new SqlParameter("@CustomerID", SqlDbType.Int,4)};
			parameters[0].Value = CustomerID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.BaseData.ZT_COM_CustomerInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_COM_CustomerInfo(");
			strSql.Append("KeepPerson,Telephone,Mobile,FAX,QQ,Email,CompanyName,CompanyAddress,CompanyMailNum,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark)");
			strSql.Append(" values (");
			strSql.Append("@KeepPerson,@Telephone,@Mobile,@FAX,@QQ,@Email,@CompanyName,@CompanyAddress,@CompanyMailNum,@CreateBy,@CreateDate,@LastUpdateBy,@LastUpdateDate,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@KeepPerson", SqlDbType.VarChar,50),
					new SqlParameter("@Telephone", SqlDbType.VarChar,200),
					new SqlParameter("@Mobile", SqlDbType.VarChar,200),
					new SqlParameter("@FAX", SqlDbType.VarChar,200),
					new SqlParameter("@QQ", SqlDbType.VarChar,50),
					new SqlParameter("@Email", SqlDbType.VarChar,50),
					new SqlParameter("@CompanyName", SqlDbType.VarChar,500),
					new SqlParameter("@CompanyAddress", SqlDbType.VarChar,500),
					new SqlParameter("@CompanyMailNum", SqlDbType.VarChar,50),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.KeepPerson;
			parameters[1].Value = model.Telephone;
			parameters[2].Value = model.Mobile;
			parameters[3].Value = model.FAX;
			parameters[4].Value = model.QQ;
			parameters[5].Value = model.Email;
			parameters[6].Value = model.CompanyName;
			parameters[7].Value = model.CompanyAddress;
			parameters[8].Value = model.CompanyMailNum;
			parameters[9].Value = model.CreateBy;
			parameters[10].Value = model.CreateDate;
			parameters[11].Value = model.LastUpdateBy;
			parameters[12].Value = model.LastUpdateDate;
			parameters[13].Value = model.Remark;

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
		public void Update(WebProject.Model.BaseData.ZT_COM_CustomerInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_COM_CustomerInfo set ");
			strSql.Append("KeepPerson=@KeepPerson,");
			strSql.Append("Telephone=@Telephone,");
			strSql.Append("Mobile=@Mobile,");
			strSql.Append("FAX=@FAX,");
			strSql.Append("QQ=@QQ,");
			strSql.Append("Email=@Email,");
			strSql.Append("CompanyName=@CompanyName,");
			strSql.Append("CompanyAddress=@CompanyAddress,");
			strSql.Append("CompanyMailNum=@CompanyMailNum,");
			strSql.Append("CreateBy=@CreateBy,");
			strSql.Append("CreateDate=@CreateDate,");
			strSql.Append("LastUpdateBy=@LastUpdateBy,");
			strSql.Append("LastUpdateDate=@LastUpdateDate,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where CustomerID=@CustomerID ");
			SqlParameter[] parameters = {
					new SqlParameter("@CustomerID", SqlDbType.Int,4),
					new SqlParameter("@KeepPerson", SqlDbType.VarChar,50),
					new SqlParameter("@Telephone", SqlDbType.VarChar,200),
					new SqlParameter("@Mobile", SqlDbType.VarChar,200),
					new SqlParameter("@FAX", SqlDbType.VarChar,200),
					new SqlParameter("@QQ", SqlDbType.VarChar,50),
					new SqlParameter("@Email", SqlDbType.VarChar,50),
					new SqlParameter("@CompanyName", SqlDbType.VarChar,500),
					new SqlParameter("@CompanyAddress", SqlDbType.VarChar,500),
					new SqlParameter("@CompanyMailNum", SqlDbType.VarChar,50),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.CustomerID;
			parameters[1].Value = model.KeepPerson;
			parameters[2].Value = model.Telephone;
			parameters[3].Value = model.Mobile;
			parameters[4].Value = model.FAX;
			parameters[5].Value = model.QQ;
			parameters[6].Value = model.Email;
			parameters[7].Value = model.CompanyName;
			parameters[8].Value = model.CompanyAddress;
			parameters[9].Value = model.CompanyMailNum;
			parameters[10].Value = model.CreateBy;
			parameters[11].Value = model.CreateDate;
			parameters[12].Value = model.LastUpdateBy;
			parameters[13].Value = model.LastUpdateDate;
			parameters[14].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int CustomerID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_COM_CustomerInfo ");
			strSql.Append(" where CustomerID=@CustomerID ");
			SqlParameter[] parameters = {
					new SqlParameter("@CustomerID", SqlDbType.Int,4)};
			parameters[0].Value = CustomerID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_CustomerInfo GetModel(int CustomerID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 CustomerID,KeepPerson,Telephone,Mobile,FAX,QQ,Email,CompanyName,CompanyAddress,CompanyMailNum,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark from ZT_COM_CustomerInfo ");
			strSql.Append(" where CustomerID=@CustomerID ");
			SqlParameter[] parameters = {
					new SqlParameter("@CustomerID", SqlDbType.Int,4)};
			parameters[0].Value = CustomerID;

			WebProject.Model.BaseData.ZT_COM_CustomerInfo model=new WebProject.Model.BaseData.ZT_COM_CustomerInfo();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["CustomerID"].ToString()!="")
				{
					model.CustomerID=int.Parse(ds.Tables[0].Rows[0]["CustomerID"].ToString());
				}
				model.KeepPerson=ds.Tables[0].Rows[0]["KeepPerson"].ToString();
				model.Telephone=ds.Tables[0].Rows[0]["Telephone"].ToString();
				model.Mobile=ds.Tables[0].Rows[0]["Mobile"].ToString();
				model.FAX=ds.Tables[0].Rows[0]["FAX"].ToString();
				model.QQ=ds.Tables[0].Rows[0]["QQ"].ToString();
				model.Email=ds.Tables[0].Rows[0]["Email"].ToString();
				model.CompanyName=ds.Tables[0].Rows[0]["CompanyName"].ToString();
				model.CompanyAddress=ds.Tables[0].Rows[0]["CompanyAddress"].ToString();
				model.CompanyMailNum=ds.Tables[0].Rows[0]["CompanyMailNum"].ToString();
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
			strSql.Append("select CustomerID,KeepPerson,Telephone,Mobile,FAX,QQ,Email,CompanyName,CompanyAddress,CompanyMailNum,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_CustomerInfo ");
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
			strSql.Append(" CustomerID,KeepPerson,Telephone,Mobile,FAX,QQ,Email,CompanyName,CompanyAddress,CompanyMailNum,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_CustomerInfo ");
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
			parameters[0].Value = "ZT_COM_CustomerInfo";
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


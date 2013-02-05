using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.SysManage
{
	/// <summary>
	/// 数据访问类ZT_SYS_AdminInfo。
	/// </summary>
	public class ZT_SYS_AdminInfo
	{
		public ZT_SYS_AdminInfo()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("AdminID", "ZT_SYS_AdminInfo"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int AdminID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_SYS_AdminInfo");
			strSql.Append(" where AdminID=@AdminID ");
			SqlParameter[] parameters = {
					new SqlParameter("@AdminID", SqlDbType.Int,4)};
			parameters[0].Value = AdminID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.SysManage.ZT_SYS_AdminInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_SYS_AdminInfo(");
            strSql.Append("AdminNo,Password,RoleNo,IsLockedOut,AdminName,Sex,LastLoginDate,IDCardNum,Telephone,Mobile,HomeAddress,HomeMailNum,NowAddress,NowMailNum,CompanyAddress,CompanyMailNum,QQ,Email,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark)");
			strSql.Append(" values (");
            strSql.Append("@AdminNo,@Password,@RoleNo,@IsLockedOut,@AdminName,@Sex,@LastLoginDate,@IDCardNum,@Telephone,@Mobile,@HomeAddress,@HomeMailNum,@NowAddress,@NowMailNum,@CompanyAddress,@CompanyMailNum,@QQ,@Email,@CreateBy,@CreateDate,@LastUpdateBy,@LastUpdateDate,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@AdminNo", SqlDbType.VarChar,50),
					new SqlParameter("@Password", SqlDbType.VarChar,50),
					new SqlParameter("@RoleNo", SqlDbType.VarChar,50),
					new SqlParameter("@IsLockedOut", SqlDbType.VarChar,2),
					new SqlParameter("@AdminName", SqlDbType.VarChar,50),
					new SqlParameter("@Sex", SqlDbType.VarChar,2),
					new SqlParameter("@LastLoginDate", SqlDbType.DateTime),
					new SqlParameter("@IDCardNum", SqlDbType.VarChar,50),
					new SqlParameter("@Telephone", SqlDbType.VarChar,50),
					new SqlParameter("@Mobile", SqlDbType.VarChar,50),
					new SqlParameter("@HomeAddress", SqlDbType.VarChar,500),
					new SqlParameter("@HomeMailNum", SqlDbType.VarChar,50),
					new SqlParameter("@NowAddress", SqlDbType.VarChar,500),
					new SqlParameter("@NowMailNum", SqlDbType.VarChar,50),
					new SqlParameter("@CompanyAddress", SqlDbType.VarChar,500),
					new SqlParameter("@CompanyMailNum", SqlDbType.VarChar,50),
					new SqlParameter("@QQ", SqlDbType.VarChar,50),
					new SqlParameter("@Email", SqlDbType.VarChar,50),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.VarChar,7000)};
			parameters[0].Value = model.AdminNo;
			parameters[1].Value = model.Password;
			parameters[2].Value = model.RoleNo;
			parameters[3].Value = model.IsLockedOut;
			parameters[4].Value = model.AdminName;
			parameters[5].Value = model.Sex;
            parameters[6].Value = model.LastLoginDate;
			parameters[7].Value = model.IDCardNum;
			parameters[8].Value = model.Telephone;
			parameters[9].Value = model.Mobile;
			parameters[10].Value = model.HomeAddress;
			parameters[11].Value = model.HomeMailNum;
			parameters[12].Value = model.NowAddress;
			parameters[13].Value = model.NowMailNum;
			parameters[14].Value = model.CompanyAddress;
			parameters[15].Value = model.CompanyMailNum;
			parameters[16].Value = model.QQ;
			parameters[17].Value = model.Email;
			parameters[18].Value = model.CreateBy;
			parameters[19].Value = model.CreateDate;
			parameters[20].Value = model.LastUpdateBy;
			parameters[21].Value = model.LastUpdateDate;
			parameters[22].Value = model.Remark;

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
		public void Update(WebProject.Model.SysManage.ZT_SYS_AdminInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_SYS_AdminInfo set ");
			strSql.Append("AdminNo=@AdminNo,");
			strSql.Append("Password=@Password,");
			strSql.Append("RoleNo=@RoleNo,");
			strSql.Append("IsLockedOut=@IsLockedOut,");
			strSql.Append("AdminName=@AdminName,");
			strSql.Append("Sex=@Sex,");
            strSql.Append("LastLoginDate=@LastLoginDate,");
			strSql.Append("IDCardNum=@IDCardNum,");
			strSql.Append("Telephone=@Telephone,");
			strSql.Append("Mobile=@Mobile,");
			strSql.Append("HomeAddress=@HomeAddress,");
			strSql.Append("HomeMailNum=@HomeMailNum,");
			strSql.Append("NowAddress=@NowAddress,");
			strSql.Append("NowMailNum=@NowMailNum,");
			strSql.Append("CompanyAddress=@CompanyAddress,");
			strSql.Append("CompanyMailNum=@CompanyMailNum,");
			strSql.Append("QQ=@QQ,");
			strSql.Append("Email=@Email,");
			strSql.Append("CreateBy=@CreateBy,");
			strSql.Append("CreateDate=@CreateDate,");
			strSql.Append("LastUpdateBy=@LastUpdateBy,");
			strSql.Append("LastUpdateDate=@LastUpdateDate,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where AdminID=@AdminID ");
			SqlParameter[] parameters = {
					new SqlParameter("@AdminID", SqlDbType.Int,4),
					new SqlParameter("@AdminNo", SqlDbType.VarChar,50),
					new SqlParameter("@Password", SqlDbType.VarChar,50),
					new SqlParameter("@RoleNo", SqlDbType.VarChar,50),
					new SqlParameter("@IsLockedOut", SqlDbType.VarChar,2),
					new SqlParameter("@AdminName", SqlDbType.VarChar,50),
					new SqlParameter("@Sex", SqlDbType.VarChar,2),
					new SqlParameter("@LastLoginDate", SqlDbType.DateTime),
					new SqlParameter("@IDCardNum", SqlDbType.VarChar,50),
					new SqlParameter("@Telephone", SqlDbType.VarChar,50),
					new SqlParameter("@Mobile", SqlDbType.VarChar,50),
					new SqlParameter("@HomeAddress", SqlDbType.VarChar,500),
					new SqlParameter("@HomeMailNum", SqlDbType.VarChar,50),
					new SqlParameter("@NowAddress", SqlDbType.VarChar,500),
					new SqlParameter("@NowMailNum", SqlDbType.VarChar,50),
					new SqlParameter("@CompanyAddress", SqlDbType.VarChar,500),
					new SqlParameter("@CompanyMailNum", SqlDbType.VarChar,50),
					new SqlParameter("@QQ", SqlDbType.VarChar,50),
					new SqlParameter("@Email", SqlDbType.VarChar,50),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.VarChar,7000)};
			parameters[0].Value = model.AdminID;
			parameters[1].Value = model.AdminNo;
			parameters[2].Value = model.Password;
			parameters[3].Value = model.RoleNo;
			parameters[4].Value = model.IsLockedOut;
			parameters[5].Value = model.AdminName;
			parameters[6].Value = model.Sex;
            parameters[7].Value = model.LastLoginDate;
			parameters[8].Value = model.IDCardNum;
			parameters[9].Value = model.Telephone;
			parameters[10].Value = model.Mobile;
			parameters[11].Value = model.HomeAddress;
			parameters[12].Value = model.HomeMailNum;
			parameters[13].Value = model.NowAddress;
			parameters[14].Value = model.NowMailNum;
			parameters[15].Value = model.CompanyAddress;
			parameters[16].Value = model.CompanyMailNum;
			parameters[17].Value = model.QQ;
			parameters[18].Value = model.Email;
			parameters[19].Value = model.CreateBy;
			parameters[20].Value = model.CreateDate;
			parameters[21].Value = model.LastUpdateBy;
			parameters[22].Value = model.LastUpdateDate;
			parameters[23].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int AdminID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_SYS_AdminInfo ");
			strSql.Append(" where AdminID=@AdminID ");
			SqlParameter[] parameters = {
					new SqlParameter("@AdminID", SqlDbType.Int,4)};
			parameters[0].Value = AdminID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.SysManage.ZT_SYS_AdminInfo GetModel(int AdminID)
		{
			
			StringBuilder strSql=new StringBuilder();
            strSql.Append("select  top 1 AdminID,AdminNo,Password,RoleNo,IsLockedOut,AdminName,Sex,LastLoginDate,IDCardNum,Telephone,Mobile,HomeAddress,HomeMailNum,NowAddress,NowMailNum,CompanyAddress,CompanyMailNum,QQ,Email,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark from ZT_SYS_AdminInfo ");
			strSql.Append(" where AdminID=@AdminID ");
			SqlParameter[] parameters = {
					new SqlParameter("@AdminID", SqlDbType.Int,4)};
			parameters[0].Value = AdminID;

			WebProject.Model.SysManage.ZT_SYS_AdminInfo model=new WebProject.Model.SysManage.ZT_SYS_AdminInfo();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["AdminID"].ToString()!="")
				{
					model.AdminID=int.Parse(ds.Tables[0].Rows[0]["AdminID"].ToString());
				}
				model.AdminNo=ds.Tables[0].Rows[0]["AdminNo"].ToString();
				model.Password=ds.Tables[0].Rows[0]["Password"].ToString();
				model.RoleNo=ds.Tables[0].Rows[0]["RoleNo"].ToString();
				model.IsLockedOut=ds.Tables[0].Rows[0]["IsLockedOut"].ToString();
				model.AdminName=ds.Tables[0].Rows[0]["AdminName"].ToString();
				model.Sex=ds.Tables[0].Rows[0]["Sex"].ToString();
                if (ds.Tables[0].Rows[0]["LastLoginDate"].ToString() != "")
				{
                    model.LastLoginDate = DateTime.Parse(ds.Tables[0].Rows[0]["LastLoginDate"].ToString());
				}
				model.IDCardNum=ds.Tables[0].Rows[0]["IDCardNum"].ToString();
				model.Telephone=ds.Tables[0].Rows[0]["Telephone"].ToString();
				model.Mobile=ds.Tables[0].Rows[0]["Mobile"].ToString();
				model.HomeAddress=ds.Tables[0].Rows[0]["HomeAddress"].ToString();
				model.HomeMailNum=ds.Tables[0].Rows[0]["HomeMailNum"].ToString();
				model.NowAddress=ds.Tables[0].Rows[0]["NowAddress"].ToString();
				model.NowMailNum=ds.Tables[0].Rows[0]["NowMailNum"].ToString();
				model.CompanyAddress=ds.Tables[0].Rows[0]["CompanyAddress"].ToString();
				model.CompanyMailNum=ds.Tables[0].Rows[0]["CompanyMailNum"].ToString();
				model.QQ=ds.Tables[0].Rows[0]["QQ"].ToString();
				model.Email=ds.Tables[0].Rows[0]["Email"].ToString();
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
            strSql.Append("select AdminID,AdminNo,Password,RoleNo,IsLockedOut,AdminName,Sex,LastLoginDate,IDCardNum,Telephone,Mobile,HomeAddress,HomeMailNum,NowAddress,NowMailNum,CompanyAddress,CompanyMailNum,QQ,Email,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_SYS_AdminInfo ");
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
            strSql.Append(" AdminID,AdminNo,Password,RoleNo,IsLockedOut,AdminName,Sex,LastLoginDate,IDCardNum,Telephone,Mobile,HomeAddress,HomeMailNum,NowAddress,NowMailNum,CompanyAddress,CompanyMailNum,QQ,Email,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_SYS_AdminInfo ");
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
			parameters[0].Value = "ZT_SYS_AdminInfo";
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


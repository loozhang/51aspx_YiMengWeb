using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.BaseData
{
	/// <summary>
	/// 数据访问类ZT_COM_MemberInfo。
	/// </summary>
	public class ZT_COM_MemberInfo
	{
		public ZT_COM_MemberInfo()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("MemberID", "ZT_COM_MemberInfo"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int MemberID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_COM_MemberInfo");
			strSql.Append(" where MemberID=@MemberID ");
			SqlParameter[] parameters = {
					new SqlParameter("@MemberID", SqlDbType.Int,4)};
			parameters[0].Value = MemberID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.BaseData.ZT_COM_MemberInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_COM_MemberInfo(");
			strSql.Append("MemberNo,MemberName,MemberRole,Sex,Birthday,IDCardNum,Telephone,Fax,Mobile,QQ,Email,School,HomeAddress,HomeMailNum,NowAddress,NowMailNum,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark)");
			strSql.Append(" values (");
			strSql.Append("@MemberNo,@MemberName,@MemberRole,@Sex,@Birthday,@IDCardNum,@Telephone,@Fax,@Mobile,@QQ,@Email,@School,@HomeAddress,@HomeMailNum,@NowAddress,@NowMailNum,@CreateBy,@CreateDate,@LastUpdateBy,@LastUpdateDate,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@MemberNo", SqlDbType.VarChar,50),
					new SqlParameter("@MemberName", SqlDbType.VarChar,50),
					new SqlParameter("@MemberRole", SqlDbType.VarChar,50),
					new SqlParameter("@Sex", SqlDbType.VarChar,2),
					new SqlParameter("@Birthday", SqlDbType.DateTime),
					new SqlParameter("@IDCardNum", SqlDbType.VarChar,50),
					new SqlParameter("@Telephone", SqlDbType.VarChar,50),
					new SqlParameter("@Fax", SqlDbType.VarChar,50),
					new SqlParameter("@Mobile", SqlDbType.VarChar,50),
					new SqlParameter("@QQ", SqlDbType.VarChar,50),
					new SqlParameter("@Email", SqlDbType.VarChar,50),
					new SqlParameter("@School", SqlDbType.VarChar,500),
					new SqlParameter("@HomeAddress", SqlDbType.VarChar,500),
					new SqlParameter("@HomeMailNum", SqlDbType.VarChar,50),
					new SqlParameter("@NowAddress", SqlDbType.VarChar,500),
					new SqlParameter("@NowMailNum", SqlDbType.VarChar,50),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.MemberNo;
			parameters[1].Value = model.MemberName;
			parameters[2].Value = model.MemberRole;
			parameters[3].Value = model.Sex;
			parameters[4].Value = model.Birthday;
			parameters[5].Value = model.IDCardNum;
			parameters[6].Value = model.Telephone;
			parameters[7].Value = model.Fax;
			parameters[8].Value = model.Mobile;
			parameters[9].Value = model.QQ;
			parameters[10].Value = model.Email;
			parameters[11].Value = model.School;
			parameters[12].Value = model.HomeAddress;
			parameters[13].Value = model.HomeMailNum;
			parameters[14].Value = model.NowAddress;
			parameters[15].Value = model.NowMailNum;
			parameters[16].Value = model.CreateBy;
			parameters[17].Value = model.CreateDate;
			parameters[18].Value = model.LastUpdateBy;
			parameters[19].Value = model.LastUpdateDate;
			parameters[20].Value = model.Remark;

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
		public void Update(WebProject.Model.BaseData.ZT_COM_MemberInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_COM_MemberInfo set ");
			strSql.Append("MemberNo=@MemberNo,");
			strSql.Append("MemberName=@MemberName,");
			strSql.Append("MemberRole=@MemberRole,");
			strSql.Append("Sex=@Sex,");
			strSql.Append("Birthday=@Birthday,");
			strSql.Append("IDCardNum=@IDCardNum,");
			strSql.Append("Telephone=@Telephone,");
			strSql.Append("Fax=@Fax,");
			strSql.Append("Mobile=@Mobile,");
			strSql.Append("QQ=@QQ,");
			strSql.Append("Email=@Email,");
			strSql.Append("School=@School,");
			strSql.Append("HomeAddress=@HomeAddress,");
			strSql.Append("HomeMailNum=@HomeMailNum,");
			strSql.Append("NowAddress=@NowAddress,");
			strSql.Append("NowMailNum=@NowMailNum,");
			strSql.Append("CreateBy=@CreateBy,");
			strSql.Append("CreateDate=@CreateDate,");
			strSql.Append("LastUpdateBy=@LastUpdateBy,");
			strSql.Append("LastUpdateDate=@LastUpdateDate,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where MemberID=@MemberID ");
			SqlParameter[] parameters = {
					new SqlParameter("@MemberID", SqlDbType.Int,4),
					new SqlParameter("@MemberNo", SqlDbType.VarChar,50),
					new SqlParameter("@MemberName", SqlDbType.VarChar,50),
					new SqlParameter("@MemberRole", SqlDbType.VarChar,50),
					new SqlParameter("@Sex", SqlDbType.VarChar,2),
					new SqlParameter("@Birthday", SqlDbType.DateTime),
					new SqlParameter("@IDCardNum", SqlDbType.VarChar,50),
					new SqlParameter("@Telephone", SqlDbType.VarChar,50),
					new SqlParameter("@Fax", SqlDbType.VarChar,50),
					new SqlParameter("@Mobile", SqlDbType.VarChar,50),
					new SqlParameter("@QQ", SqlDbType.VarChar,50),
					new SqlParameter("@Email", SqlDbType.VarChar,50),
					new SqlParameter("@School", SqlDbType.VarChar,500),
					new SqlParameter("@HomeAddress", SqlDbType.VarChar,500),
					new SqlParameter("@HomeMailNum", SqlDbType.VarChar,50),
					new SqlParameter("@NowAddress", SqlDbType.VarChar,500),
					new SqlParameter("@NowMailNum", SqlDbType.VarChar,50),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.MemberID;
			parameters[1].Value = model.MemberNo;
			parameters[2].Value = model.MemberName;
			parameters[3].Value = model.MemberRole;
			parameters[4].Value = model.Sex;
			parameters[5].Value = model.Birthday;
			parameters[6].Value = model.IDCardNum;
			parameters[7].Value = model.Telephone;
			parameters[8].Value = model.Fax;
			parameters[9].Value = model.Mobile;
			parameters[10].Value = model.QQ;
			parameters[11].Value = model.Email;
			parameters[12].Value = model.School;
			parameters[13].Value = model.HomeAddress;
			parameters[14].Value = model.HomeMailNum;
			parameters[15].Value = model.NowAddress;
			parameters[16].Value = model.NowMailNum;
			parameters[17].Value = model.CreateBy;
			parameters[18].Value = model.CreateDate;
			parameters[19].Value = model.LastUpdateBy;
			parameters[20].Value = model.LastUpdateDate;
			parameters[21].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int MemberID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_COM_MemberInfo ");
			strSql.Append(" where MemberID=@MemberID ");
			SqlParameter[] parameters = {
					new SqlParameter("@MemberID", SqlDbType.Int,4)};
			parameters[0].Value = MemberID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_MemberInfo GetModel(int MemberID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 MemberID,MemberNo,MemberName,MemberRole,Sex,Birthday,IDCardNum,Telephone,Fax,Mobile,QQ,Email,School,HomeAddress,HomeMailNum,NowAddress,NowMailNum,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark from ZT_COM_MemberInfo ");
			strSql.Append(" where MemberID=@MemberID ");
			SqlParameter[] parameters = {
					new SqlParameter("@MemberID", SqlDbType.Int,4)};
			parameters[0].Value = MemberID;

			WebProject.Model.BaseData.ZT_COM_MemberInfo model=new WebProject.Model.BaseData.ZT_COM_MemberInfo();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["MemberID"].ToString()!="")
				{
					model.MemberID=int.Parse(ds.Tables[0].Rows[0]["MemberID"].ToString());
				}
				model.MemberNo=ds.Tables[0].Rows[0]["MemberNo"].ToString();
				model.MemberName=ds.Tables[0].Rows[0]["MemberName"].ToString();
				model.MemberRole=ds.Tables[0].Rows[0]["MemberRole"].ToString();
				model.Sex=ds.Tables[0].Rows[0]["Sex"].ToString();
				if(ds.Tables[0].Rows[0]["Birthday"].ToString()!="")
				{
					model.Birthday=DateTime.Parse(ds.Tables[0].Rows[0]["Birthday"].ToString());
				}
				model.IDCardNum=ds.Tables[0].Rows[0]["IDCardNum"].ToString();
				model.Telephone=ds.Tables[0].Rows[0]["Telephone"].ToString();
				model.Fax=ds.Tables[0].Rows[0]["Fax"].ToString();
				model.Mobile=ds.Tables[0].Rows[0]["Mobile"].ToString();
				model.QQ=ds.Tables[0].Rows[0]["QQ"].ToString();
				model.Email=ds.Tables[0].Rows[0]["Email"].ToString();
				model.School=ds.Tables[0].Rows[0]["School"].ToString();
				model.HomeAddress=ds.Tables[0].Rows[0]["HomeAddress"].ToString();
				model.HomeMailNum=ds.Tables[0].Rows[0]["HomeMailNum"].ToString();
				model.NowAddress=ds.Tables[0].Rows[0]["NowAddress"].ToString();
				model.NowMailNum=ds.Tables[0].Rows[0]["NowMailNum"].ToString();
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
			strSql.Append("select MemberID,MemberNo,MemberName,MemberRole,Sex,Birthday,IDCardNum,Telephone,Fax,Mobile,QQ,Email,School,HomeAddress,HomeMailNum,NowAddress,NowMailNum,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_MemberInfo ");
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
			strSql.Append(" MemberID,MemberNo,MemberName,MemberRole,Sex,Birthday,IDCardNum,Telephone,Fax,Mobile,QQ,Email,School,HomeAddress,HomeMailNum,NowAddress,NowMailNum,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_MemberInfo ");
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
			parameters[0].Value = "ZT_COM_MemberInfo";
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


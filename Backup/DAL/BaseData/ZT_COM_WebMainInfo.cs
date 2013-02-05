using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.BaseData
{
	/// <summary>
	/// 数据访问类ZT_COM_WebMainInfo。
	/// </summary>
	public class ZT_COM_WebMainInfo
	{
		public ZT_COM_WebMainInfo()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("ID", "ZT_COM_WebMainInfo"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int ID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_COM_WebMainInfo");
			strSql.Append(" where ID=@ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
			parameters[0].Value = ID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.BaseData.ZT_COM_WebMainInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_COM_WebMainInfo(");
			strSql.Append("Title,WebURL,CompanyName,Address,MailNum,Mobile,Fax,Email,QQ,KeepPerson,Telephone,KeyWords,Description,ICP,Remark)");
			strSql.Append(" values (");
			strSql.Append("@Title,@WebURL,@CompanyName,@Address,@MailNum,@Mobile,@Fax,@Email,@QQ,@KeepPerson,@Telephone,@KeyWords,@Description,@ICP,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@Title", SqlDbType.Text),
					new SqlParameter("@WebURL", SqlDbType.VarChar,100),
					new SqlParameter("@CompanyName", SqlDbType.VarChar,500),
					new SqlParameter("@Address", SqlDbType.Text),
					new SqlParameter("@MailNum", SqlDbType.VarChar,50),
					new SqlParameter("@Mobile", SqlDbType.VarChar,50),
					new SqlParameter("@Fax", SqlDbType.VarChar,50),
					new SqlParameter("@Email", SqlDbType.VarChar,50),
					new SqlParameter("@QQ", SqlDbType.VarChar,50),
					new SqlParameter("@KeepPerson", SqlDbType.VarChar,50),
					new SqlParameter("@Telephone", SqlDbType.VarChar,50),
					new SqlParameter("@KeyWords", SqlDbType.Text),
					new SqlParameter("@Description", SqlDbType.Text),
					new SqlParameter("@ICP", SqlDbType.VarChar,50),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.Title;
			parameters[1].Value = model.WebURL;
			parameters[2].Value = model.CompanyName;
			parameters[3].Value = model.Address;
			parameters[4].Value = model.MailNum;
			parameters[5].Value = model.Mobile;
			parameters[6].Value = model.Fax;
			parameters[7].Value = model.Email;
			parameters[8].Value = model.QQ;
			parameters[9].Value = model.KeepPerson;
			parameters[10].Value = model.Telephone;
			parameters[11].Value = model.KeyWords;
			parameters[12].Value = model.Description;
			parameters[13].Value = model.ICP;
			parameters[14].Value = model.Remark;

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
		public void Update(WebProject.Model.BaseData.ZT_COM_WebMainInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_COM_WebMainInfo set ");
			strSql.Append("Title=@Title,");
			strSql.Append("WebURL=@WebURL,");
			strSql.Append("CompanyName=@CompanyName,");
			strSql.Append("Address=@Address,");
			strSql.Append("MailNum=@MailNum,");
			strSql.Append("Mobile=@Mobile,");
			strSql.Append("Fax=@Fax,");
			strSql.Append("Email=@Email,");
			strSql.Append("QQ=@QQ,");
			strSql.Append("KeepPerson=@KeepPerson,");
			strSql.Append("Telephone=@Telephone,");
			strSql.Append("KeyWords=@KeyWords,");
			strSql.Append("Description=@Description,");
			strSql.Append("ICP=@ICP,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where ID=@ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4),
					new SqlParameter("@Title", SqlDbType.Text),
					new SqlParameter("@WebURL", SqlDbType.VarChar,100),
					new SqlParameter("@CompanyName", SqlDbType.VarChar,500),
					new SqlParameter("@Address", SqlDbType.Text),
					new SqlParameter("@MailNum", SqlDbType.VarChar,50),
					new SqlParameter("@Mobile", SqlDbType.VarChar,50),
					new SqlParameter("@Fax", SqlDbType.VarChar,50),
					new SqlParameter("@Email", SqlDbType.VarChar,50),
					new SqlParameter("@QQ", SqlDbType.VarChar,50),
					new SqlParameter("@KeepPerson", SqlDbType.VarChar,50),
					new SqlParameter("@Telephone", SqlDbType.VarChar,50),
					new SqlParameter("@KeyWords", SqlDbType.Text),
					new SqlParameter("@Description", SqlDbType.Text),
					new SqlParameter("@ICP", SqlDbType.VarChar,50),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.ID;
			parameters[1].Value = model.Title;
			parameters[2].Value = model.WebURL;
			parameters[3].Value = model.CompanyName;
			parameters[4].Value = model.Address;
			parameters[5].Value = model.MailNum;
			parameters[6].Value = model.Mobile;
			parameters[7].Value = model.Fax;
			parameters[8].Value = model.Email;
			parameters[9].Value = model.QQ;
			parameters[10].Value = model.KeepPerson;
			parameters[11].Value = model.Telephone;
			parameters[12].Value = model.KeyWords;
			parameters[13].Value = model.Description;
			parameters[14].Value = model.ICP;
			parameters[15].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int ID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_COM_WebMainInfo ");
			strSql.Append(" where ID=@ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
			parameters[0].Value = ID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_WebMainInfo GetModel(int ID)
		{			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 ID,Title,WebURL,CompanyName,Address,MailNum,Mobile,Fax,Email,QQ,KeepPerson,Telephone,KeyWords,Description,ICP,Remark from ZT_COM_WebMainInfo ");
			strSql.Append(" where ID=@ID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)};
			parameters[0].Value = ID;

			WebProject.Model.BaseData.ZT_COM_WebMainInfo model=new WebProject.Model.BaseData.ZT_COM_WebMainInfo();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["ID"].ToString()!="")
				{
					model.ID=int.Parse(ds.Tables[0].Rows[0]["ID"].ToString());
				}
				model.Title=ds.Tables[0].Rows[0]["Title"].ToString();
				model.WebURL=ds.Tables[0].Rows[0]["WebURL"].ToString();
				model.CompanyName=ds.Tables[0].Rows[0]["CompanyName"].ToString();
				model.Address=ds.Tables[0].Rows[0]["Address"].ToString();
				model.MailNum=ds.Tables[0].Rows[0]["MailNum"].ToString();
				model.Mobile=ds.Tables[0].Rows[0]["Mobile"].ToString();
				model.Fax=ds.Tables[0].Rows[0]["Fax"].ToString();
				model.Email=ds.Tables[0].Rows[0]["Email"].ToString();
				model.QQ=ds.Tables[0].Rows[0]["QQ"].ToString();
				model.KeepPerson=ds.Tables[0].Rows[0]["KeepPerson"].ToString();
				model.Telephone=ds.Tables[0].Rows[0]["Telephone"].ToString();
				model.KeyWords=ds.Tables[0].Rows[0]["KeyWords"].ToString();
				model.Description=ds.Tables[0].Rows[0]["Description"].ToString();
				model.ICP=ds.Tables[0].Rows[0]["ICP"].ToString();
				model.Remark=ds.Tables[0].Rows[0]["Remark"].ToString();
				return model;
			}
			else
			{
				return null;
			}
		}

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public WebProject.Model.BaseData.ZT_COM_WebMainInfo GetModel()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 ID,Title,WebURL,CompanyName,Address,MailNum,Mobile,Fax,Email,QQ,KeepPerson,Telephone,KeyWords,Description,ICP,Remark from ZT_COM_WebMainInfo ");
            WebProject.Model.BaseData.ZT_COM_WebMainInfo model = new WebProject.Model.BaseData.ZT_COM_WebMainInfo();
            DataSet ds = DbHelperSQL.Query(strSql.ToString());
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["ID"].ToString() != "")
                {
                    model.ID = int.Parse(ds.Tables[0].Rows[0]["ID"].ToString());
                }
                model.Title = ds.Tables[0].Rows[0]["Title"].ToString();
                model.WebURL = ds.Tables[0].Rows[0]["WebURL"].ToString();
                model.CompanyName = ds.Tables[0].Rows[0]["CompanyName"].ToString();
                model.Address = ds.Tables[0].Rows[0]["Address"].ToString();
                model.MailNum = ds.Tables[0].Rows[0]["MailNum"].ToString();
                model.Mobile = ds.Tables[0].Rows[0]["Mobile"].ToString();
                model.Fax = ds.Tables[0].Rows[0]["Fax"].ToString();
                model.Email = ds.Tables[0].Rows[0]["Email"].ToString();
                model.QQ = ds.Tables[0].Rows[0]["QQ"].ToString();
                model.KeepPerson = ds.Tables[0].Rows[0]["KeepPerson"].ToString();
                model.Telephone = ds.Tables[0].Rows[0]["Telephone"].ToString();
                model.KeyWords = ds.Tables[0].Rows[0]["KeyWords"].ToString();
                model.Description = ds.Tables[0].Rows[0]["Description"].ToString();
                model.ICP = ds.Tables[0].Rows[0]["ICP"].ToString();
                model.Remark = ds.Tables[0].Rows[0]["Remark"].ToString();
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
			strSql.Append("select ID,Title,WebURL,CompanyName,Address,MailNum,Mobile,Fax,Email,QQ,KeepPerson,Telephone,KeyWords,Description,ICP,Remark ");
			strSql.Append(" FROM ZT_COM_WebMainInfo ");
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
			strSql.Append(" ID,Title,WebURL,CompanyName,Address,MailNum,Mobile,Fax,Email,QQ,KeepPerson,Telephone,KeyWords,Description,ICP,Remark ");
			strSql.Append(" FROM ZT_COM_WebMainInfo ");
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
			parameters[0].Value = "ZT_COM_WebMainInfo";
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


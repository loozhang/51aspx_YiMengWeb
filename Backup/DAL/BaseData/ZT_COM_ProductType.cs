using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.BaseData
{
	/// <summary>
	/// 数据访问类ZT_COM_ProductType。
	/// </summary>
	public class ZT_COM_ProductType
	{
		public ZT_COM_ProductType()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("TypeID", "ZT_COM_ProductType"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int TypeID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_COM_ProductType");
			strSql.Append(" where TypeID=@TypeID ");
			SqlParameter[] parameters = {
					new SqlParameter("@TypeID", SqlDbType.Int,4)};
			parameters[0].Value = TypeID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.BaseData.ZT_COM_ProductType model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_COM_ProductType(");
			strSql.Append("TypeName,TypeNo,TypeOrder,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark)");
			strSql.Append(" values (");
			strSql.Append("@TypeName,@TypeNo,@TypeOrder,@CreateBy,@CreateDate,@LastUpdateBy,@LastUpdateDate,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@TypeName", SqlDbType.VarChar,500),
					new SqlParameter("@TypeNo", SqlDbType.VarChar,50),
					new SqlParameter("@TypeOrder", SqlDbType.Int,4),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.TypeName;
			parameters[1].Value = model.TypeNo;
			parameters[2].Value = model.TypeOrder;
			parameters[3].Value = model.CreateBy;
			parameters[4].Value = model.CreateDate;
			parameters[5].Value = model.LastUpdateBy;
			parameters[6].Value = model.LastUpdateDate;
			parameters[7].Value = model.Remark;

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
		public void Update(WebProject.Model.BaseData.ZT_COM_ProductType model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_COM_ProductType set ");
			strSql.Append("TypeName=@TypeName,");
			strSql.Append("TypeNo=@TypeNo,");
			strSql.Append("TypeOrder=@TypeOrder,");
			strSql.Append("CreateBy=@CreateBy,");
			strSql.Append("CreateDate=@CreateDate,");
			strSql.Append("LastUpdateBy=@LastUpdateBy,");
			strSql.Append("LastUpdateDate=@LastUpdateDate,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where TypeID=@TypeID ");
			SqlParameter[] parameters = {
					new SqlParameter("@TypeID", SqlDbType.Int,4),
					new SqlParameter("@TypeName", SqlDbType.VarChar,500),
					new SqlParameter("@TypeNo", SqlDbType.VarChar,50),
					new SqlParameter("@TypeOrder", SqlDbType.Int,4),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.TypeID;
			parameters[1].Value = model.TypeName;
			parameters[2].Value = model.TypeNo;
			parameters[3].Value = model.TypeOrder;
			parameters[4].Value = model.CreateBy;
			parameters[5].Value = model.CreateDate;
			parameters[6].Value = model.LastUpdateBy;
			parameters[7].Value = model.LastUpdateDate;
			parameters[8].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int TypeID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_COM_ProductType ");
			strSql.Append(" where TypeID=@TypeID ");
			SqlParameter[] parameters = {
					new SqlParameter("@TypeID", SqlDbType.Int,4)};
			parameters[0].Value = TypeID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_ProductType GetModel(int TypeID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 TypeID,TypeName,TypeNo,TypeOrder,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark from ZT_COM_ProductType ");
			strSql.Append(" where TypeID=@TypeID ");
			SqlParameter[] parameters = {
					new SqlParameter("@TypeID", SqlDbType.Int,4)};
			parameters[0].Value = TypeID;

			WebProject.Model.BaseData.ZT_COM_ProductType model=new WebProject.Model.BaseData.ZT_COM_ProductType();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["TypeID"].ToString()!="")
				{
					model.TypeID=int.Parse(ds.Tables[0].Rows[0]["TypeID"].ToString());
				}
				model.TypeName=ds.Tables[0].Rows[0]["TypeName"].ToString();
				model.TypeNo=ds.Tables[0].Rows[0]["TypeNo"].ToString();
				if(ds.Tables[0].Rows[0]["TypeOrder"].ToString()!="")
				{
					model.TypeOrder=int.Parse(ds.Tables[0].Rows[0]["TypeOrder"].ToString());
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
			strSql.Append("select TypeID,TypeName,TypeNo,TypeOrder,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_ProductType ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

        /// <summary>
        /// 获得前几行数据
        /// </summary>
        public DataSet GetList(string strWhere, string filedOrder)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");
            strSql.Append(" TypeID,TypeName,TypeNo,TypeOrder,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
            strSql.Append(" FROM ZT_COM_ProductType ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            strSql.Append(" order by " + filedOrder);
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
			strSql.Append(" TypeID,TypeName,TypeNo,TypeOrder,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_ProductType ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		#endregion  成员方法
	}
}


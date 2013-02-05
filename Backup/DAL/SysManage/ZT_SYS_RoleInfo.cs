using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.SysManage
{
	/// <summary>
	/// 数据访问类ZT_SYS_RoleInfo。
	/// </summary>
	public class ZT_SYS_RoleInfo
	{
		public ZT_SYS_RoleInfo()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("RoleID", "ZT_SYS_RoleInfo"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int RoleID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_SYS_RoleInfo");
			strSql.Append(" where RoleID=@RoleID ");
			SqlParameter[] parameters = {
					new SqlParameter("@RoleID", SqlDbType.Int,4)};
			parameters[0].Value = RoleID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.SysManage.ZT_SYS_RoleInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_SYS_RoleInfo(");
			strSql.Append("RoleNo,RoleName,RoleDesc,RoleElements,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Status,Remark)");
			strSql.Append(" values (");
			strSql.Append("@RoleNo,@RoleName,@RoleDesc,@RoleElements,@CreateBy,@CreateDate,@LastUpdateBy,@LastUpdateDate,@Status,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@RoleNo", SqlDbType.VarChar,50),
					new SqlParameter("@RoleName", SqlDbType.VarChar,50),
					new SqlParameter("@RoleDesc", SqlDbType.VarChar,500),
					new SqlParameter("@RoleElements", SqlDbType.VarChar,7000),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Status", SqlDbType.VarChar,2),
					new SqlParameter("@Remark", SqlDbType.VarChar,7000)};
			parameters[0].Value = model.RoleNo;
			parameters[1].Value = model.RoleName;
			parameters[2].Value = model.RoleDesc;
			parameters[3].Value = model.RoleElements;
			parameters[4].Value = model.CreateBy;
			parameters[5].Value = model.CreateDate;
			parameters[6].Value = model.LastUpdateBy;
			parameters[7].Value = model.LastUpdateDate;
			parameters[8].Value = model.Status;
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
		public void Update(WebProject.Model.SysManage.ZT_SYS_RoleInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_SYS_RoleInfo set ");
			strSql.Append("RoleNo=@RoleNo,");
			strSql.Append("RoleName=@RoleName,");
			strSql.Append("RoleDesc=@RoleDesc,");
			strSql.Append("RoleElements=@RoleElements,");
			strSql.Append("CreateBy=@CreateBy,");
			strSql.Append("CreateDate=@CreateDate,");
			strSql.Append("LastUpdateBy=@LastUpdateBy,");
			strSql.Append("LastUpdateDate=@LastUpdateDate,");
			strSql.Append("Status=@Status,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where RoleID=@RoleID ");
			SqlParameter[] parameters = {
					new SqlParameter("@RoleID", SqlDbType.Int,4),
					new SqlParameter("@RoleNo", SqlDbType.VarChar,50),
					new SqlParameter("@RoleName", SqlDbType.VarChar,50),
					new SqlParameter("@RoleDesc", SqlDbType.VarChar,500),
					new SqlParameter("@RoleElements", SqlDbType.VarChar,7000),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Status", SqlDbType.VarChar,2),
					new SqlParameter("@Remark", SqlDbType.VarChar,7000)};
			parameters[0].Value = model.RoleID;
			parameters[1].Value = model.RoleNo;
			parameters[2].Value = model.RoleName;
			parameters[3].Value = model.RoleDesc;
			parameters[4].Value = model.RoleElements;
			parameters[5].Value = model.CreateBy;
			parameters[6].Value = model.CreateDate;
			parameters[7].Value = model.LastUpdateBy;
			parameters[8].Value = model.LastUpdateDate;
			parameters[9].Value = model.Status;
			parameters[10].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int RoleID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_SYS_RoleInfo ");
			strSql.Append(" where RoleID=@RoleID ");
			SqlParameter[] parameters = {
					new SqlParameter("@RoleID", SqlDbType.Int,4)};
			parameters[0].Value = RoleID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.SysManage.ZT_SYS_RoleInfo GetModel(int RoleID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 RoleID,RoleNo,RoleName,RoleDesc,RoleElements,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Status,Remark from ZT_SYS_RoleInfo ");
			strSql.Append(" where RoleID=@RoleID ");
			SqlParameter[] parameters = {
					new SqlParameter("@RoleID", SqlDbType.Int,4)};
			parameters[0].Value = RoleID;

			WebProject.Model.SysManage.ZT_SYS_RoleInfo model=new WebProject.Model.SysManage.ZT_SYS_RoleInfo();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["RoleID"].ToString()!="")
				{
					model.RoleID=int.Parse(ds.Tables[0].Rows[0]["RoleID"].ToString());
				}
				model.RoleNo=ds.Tables[0].Rows[0]["RoleNo"].ToString();
				model.RoleName=ds.Tables[0].Rows[0]["RoleName"].ToString();
				model.RoleDesc=ds.Tables[0].Rows[0]["RoleDesc"].ToString();
				model.RoleElements=ds.Tables[0].Rows[0]["RoleElements"].ToString();
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
				model.Status=ds.Tables[0].Rows[0]["Status"].ToString();
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
			strSql.Append("select RoleID,RoleNo,RoleName,RoleDesc,RoleElements,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Status,Remark ");
			strSql.Append(" FROM ZT_SYS_RoleInfo ");
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
			strSql.Append(" RoleID,RoleNo,RoleName,RoleDesc,RoleElements,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Status,Remark ");
			strSql.Append(" FROM ZT_SYS_RoleInfo ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public WebProject.Model.SysManage.ZT_SYS_RoleInfo GetModel(string RoleNo)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 RoleID,RoleNo,RoleName,RoleDesc,RoleElements,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Status,Remark from ZT_SYS_RoleInfo ");
            strSql.Append(" where RoleNo=@RoleNo ");
            SqlParameter[] parameters = {
					new SqlParameter("@RoleNo", SqlDbType.VarChar,50)};
            parameters[0].Value = RoleNo;

            WebProject.Model.SysManage.ZT_SYS_RoleInfo model = new WebProject.Model.SysManage.ZT_SYS_RoleInfo();
            DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["RoleID"].ToString() != "")
                {
                    model.RoleID = int.Parse(ds.Tables[0].Rows[0]["RoleID"].ToString());
                }
                model.RoleNo = ds.Tables[0].Rows[0]["RoleNo"].ToString();
                model.RoleName = ds.Tables[0].Rows[0]["RoleName"].ToString();
                model.RoleDesc = ds.Tables[0].Rows[0]["RoleDesc"].ToString();
                model.RoleElements = ds.Tables[0].Rows[0]["RoleElements"].ToString();
                model.CreateBy = ds.Tables[0].Rows[0]["CreateBy"].ToString();
                if (ds.Tables[0].Rows[0]["CreateDate"].ToString() != "")
                {
                    model.CreateDate = DateTime.Parse(ds.Tables[0].Rows[0]["CreateDate"].ToString());
                }
                model.LastUpdateBy = ds.Tables[0].Rows[0]["LastUpdateBy"].ToString();
                if (ds.Tables[0].Rows[0]["LastUpdateDate"].ToString() != "")
                {
                    model.LastUpdateDate = DateTime.Parse(ds.Tables[0].Rows[0]["LastUpdateDate"].ToString());
                }
                model.Status = ds.Tables[0].Rows[0]["Status"].ToString();
                model.Remark = ds.Tables[0].Rows[0]["Remark"].ToString();
                return model;
            }
            else
            {
                return null;
            }
        }

        public DataSet GetExcelList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select RoleID,RoleNo,RoleName,RoleDesc,RoleElements,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Status,Remark");
            strSql.Append(" FROM ZT_SYS_RoleInfo ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获取数据列表
        /// </summary>
        public string GetCount(string strWhere)
        {
            return DbHelperSQL.GetSingle("select count(RoleID) from ZT_SYS_RoleInfo where " + strWhere) + "";
        }

        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        public DataSet GetList(int PageSize, int PageIndex, string strWhere)
        {
            SqlParameter[] parameters = {
					new SqlParameter("@tablename", SqlDbType.VarChar, 255),
					new SqlParameter("@id", SqlDbType.VarChar, 255),
                    new SqlParameter("@selectstr", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@wheresql", SqlDbType.VarChar,7000),
                    new SqlParameter("@ordersql", SqlDbType.VarChar,1000)
					};
            parameters[0].Value = "ZT_SYS_RoleInfo";
            parameters[1].Value = "RoleID";
            parameters[2].Value = "*";
            parameters[3].Value = PageSize;
            parameters[4].Value = PageIndex;
            parameters[5].Value = 0;
            parameters[6].Value = " where " + strWhere;
            parameters[7].Value = " order by RoleID desc ";

            return DbHelperSQL.RunProcedure("UP_GetRecordByPage", parameters, "ds");
        }
		#endregion  成员方法
	}
}


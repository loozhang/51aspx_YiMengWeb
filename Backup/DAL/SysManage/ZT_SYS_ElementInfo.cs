using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.SysManage
{
	/// <summary>
	/// 数据访问类ZT_SYS_ElementInfo。
	/// </summary>
	public class ZT_SYS_ElementInfo
	{
		public ZT_SYS_ElementInfo()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("ElementID", "ZT_SYS_ElementInfo"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int ElementID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_SYS_ElementInfo");
			strSql.Append(" where ElementID=@ElementID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ElementID", SqlDbType.Int,4)};
			parameters[0].Value = ElementID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.SysManage.ZT_SYS_ElementInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_SYS_ElementInfo(");
			strSql.Append("ElementCode,ElementName,ElementDesc,ParentCode,ElementLink,ElementPicLink,ElementShow,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark)");
			strSql.Append(" values (");
			strSql.Append("@ElementCode,@ElementName,@ElementDesc,@ParentCode,@ElementLink,@ElementPicLink,@ElementShow,@CreateBy,@CreateDate,@LastUpdateBy,@LastUpdateDate,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@ElementCode", SqlDbType.VarChar,50),
					new SqlParameter("@ElementName", SqlDbType.VarChar,50),
					new SqlParameter("@ElementDesc", SqlDbType.VarChar,7000),
					new SqlParameter("@ParentCode", SqlDbType.VarChar,50),
					new SqlParameter("@ElementLink", SqlDbType.VarChar,500),
					new SqlParameter("@ElementPicLink", SqlDbType.VarChar,500),
					new SqlParameter("@ElementShow", SqlDbType.VarChar,2),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.VarChar,7000)};
			parameters[0].Value = model.ElementCode;
			parameters[1].Value = model.ElementName;
			parameters[2].Value = model.ElementDesc;
			parameters[3].Value = model.ParentCode;
			parameters[4].Value = model.ElementLink;
			parameters[5].Value = model.ElementPicLink;
			parameters[6].Value = model.ElementShow;
			parameters[7].Value = model.CreateBy;
			parameters[8].Value = model.CreateDate;
			parameters[9].Value = model.LastUpdateBy;
			parameters[10].Value = model.LastUpdateDate;
			parameters[11].Value = model.Remark;

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
		public void Update(WebProject.Model.SysManage.ZT_SYS_ElementInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_SYS_ElementInfo set ");
			strSql.Append("ElementCode=@ElementCode,");
			strSql.Append("ElementName=@ElementName,");
			strSql.Append("ElementDesc=@ElementDesc,");
			strSql.Append("ParentCode=@ParentCode,");
			strSql.Append("ElementLink=@ElementLink,");
			strSql.Append("ElementPicLink=@ElementPicLink,");
			strSql.Append("ElementShow=@ElementShow,");
			strSql.Append("CreateBy=@CreateBy,");
			strSql.Append("CreateDate=@CreateDate,");
			strSql.Append("LastUpdateBy=@LastUpdateBy,");
			strSql.Append("LastUpdateDate=@LastUpdateDate,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where ElementID=@ElementID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ElementID", SqlDbType.Int,4),
					new SqlParameter("@ElementCode", SqlDbType.VarChar,50),
					new SqlParameter("@ElementName", SqlDbType.VarChar,50),
					new SqlParameter("@ElementDesc", SqlDbType.VarChar,7000),
					new SqlParameter("@ParentCode", SqlDbType.VarChar,50),
					new SqlParameter("@ElementLink", SqlDbType.VarChar,500),
					new SqlParameter("@ElementPicLink", SqlDbType.VarChar,500),
					new SqlParameter("@ElementShow", SqlDbType.VarChar,2),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.VarChar,7000)};
			parameters[0].Value = model.ElementID;
			parameters[1].Value = model.ElementCode;
			parameters[2].Value = model.ElementName;
			parameters[3].Value = model.ElementDesc;
			parameters[4].Value = model.ParentCode;
			parameters[5].Value = model.ElementLink;
			parameters[6].Value = model.ElementPicLink;
			parameters[7].Value = model.ElementShow;
			parameters[8].Value = model.CreateBy;
			parameters[9].Value = model.CreateDate;
			parameters[10].Value = model.LastUpdateBy;
			parameters[11].Value = model.LastUpdateDate;
			parameters[12].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int ElementID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_SYS_ElementInfo ");
			strSql.Append(" where ElementID=@ElementID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ElementID", SqlDbType.Int,4)};
			parameters[0].Value = ElementID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.SysManage.ZT_SYS_ElementInfo GetModel(int ElementID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 ElementID,ElementCode,ElementName,ElementDesc,ParentCode,ElementLink,ElementPicLink,ElementShow,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark from ZT_SYS_ElementInfo ");
			strSql.Append(" where ElementID=@ElementID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ElementID", SqlDbType.Int,4)};
			parameters[0].Value = ElementID;

			WebProject.Model.SysManage.ZT_SYS_ElementInfo model=new WebProject.Model.SysManage.ZT_SYS_ElementInfo();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["ElementID"].ToString()!="")
				{
					model.ElementID=int.Parse(ds.Tables[0].Rows[0]["ElementID"].ToString());
				}
				model.ElementCode=ds.Tables[0].Rows[0]["ElementCode"].ToString();
				model.ElementName=ds.Tables[0].Rows[0]["ElementName"].ToString();
				model.ElementDesc=ds.Tables[0].Rows[0]["ElementDesc"].ToString();
				model.ParentCode=ds.Tables[0].Rows[0]["ParentCode"].ToString();
				model.ElementLink=ds.Tables[0].Rows[0]["ElementLink"].ToString();
				model.ElementPicLink=ds.Tables[0].Rows[0]["ElementPicLink"].ToString();
				model.ElementShow=ds.Tables[0].Rows[0]["ElementShow"].ToString();
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
        /// 得到一个对象实体
        /// </summary>
        public WebProject.Model.SysManage.ZT_SYS_ElementInfo GetModel(string ElementLink)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 ElementID,ElementCode,ElementName,ElementDesc,ParentCode,ElementLink,ElementPicLink,ElementShow,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark from ZT_SYS_ElementInfo ");
            strSql.Append(" where ElementLink=@ElementLink ");
            SqlParameter[] parameters = {
					new SqlParameter("@ElementLink", SqlDbType.VarChar,500)};
            parameters[0].Value = ElementLink;

            WebProject.Model.SysManage.ZT_SYS_ElementInfo model = new WebProject.Model.SysManage.ZT_SYS_ElementInfo();
            DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["ElementID"].ToString() != "")
                {
                    model.ElementID = int.Parse(ds.Tables[0].Rows[0]["ElementID"].ToString());
                }
                model.ElementCode = ds.Tables[0].Rows[0]["ElementCode"].ToString();
                model.ElementName = ds.Tables[0].Rows[0]["ElementName"].ToString();
                model.ElementDesc = ds.Tables[0].Rows[0]["ElementDesc"].ToString();
                model.ParentCode = ds.Tables[0].Rows[0]["ParentCode"].ToString();
                model.ElementLink = ds.Tables[0].Rows[0]["ElementLink"].ToString();
                model.ElementPicLink = ds.Tables[0].Rows[0]["ElementPicLink"].ToString();
                model.ElementShow = ds.Tables[0].Rows[0]["ElementShow"].ToString();
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
			strSql.Append("select ElementID,ElementCode,ElementName,ElementDesc,ParentCode,ElementLink,ElementPicLink,ElementShow,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_SYS_ElementInfo ");
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
			strSql.Append(" ElementID,ElementCode,ElementName,ElementDesc,ParentCode,ElementLink,ElementPicLink,ElementShow,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_SYS_ElementInfo ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

        /// <summary>
        /// 获得菜单列表
        /// </summary>
        public DataSet GetMenuList(string RoleNo)
        {
            string strSql = "select distinct ParentCode from ZT_SYS_ElementInfo where " +
                  "(select RoleElements from " + "ZT_SYS_RoleInfo where RoleNo='" + RoleNo + "') like '%'+ElementCode+'%' " +
                  "and ElementShow =1";
            return DbHelperSQL.Query(strSql);
        }

        public DataSet GetMenuItemList(string ParentCode, string RoleNo)
        {
            string strSql = "select ElementName,ElementCode,ElementLink from ZT_SYS_ElementInfo where " +
                  "(select RoleElements from " +
                "ZT_SYS_RoleInfo where RoleNo='" + RoleNo + "') like '%'+ElementCode+'%' " +
                 "and ElementShow =1  and ParentCode = '" + ParentCode + "'";
            return DbHelperSQL.Query(strSql);
        }

		#endregion  成员方法
	}
}


using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.BaseData
{
	/// <summary>
	/// 数据访问类ZT_COM_ZhaoPin。
	/// </summary>
	public class ZT_COM_ZhaoPin
	{
		public ZT_COM_ZhaoPin()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("ZhaoPinID", "ZT_COM_ZhaoPin"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int ZhaoPinID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_COM_ZhaoPin");
			strSql.Append(" where ZhaoPinID=@ZhaoPinID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ZhaoPinID", SqlDbType.Int,4)};
			parameters[0].Value = ZhaoPinID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.BaseData.ZT_COM_ZhaoPin model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_COM_ZhaoPin(");
			strSql.Append("Position,ZhaoPinOrder,Address,Number,Salary,StartDate,EndDate,Body,YingPin,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark)");
			strSql.Append(" values (");
			strSql.Append("@Position,@ZhaoPinOrder,@Address,@Number,@Salary,@StartDate,@EndDate,@Body,@YingPin,@CreateBy,@CreateDate,@LastUpdateBy,@LastUpdateDate,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@Position", SqlDbType.VarChar,500),
					new SqlParameter("@ZhaoPinOrder", SqlDbType.Int,4),
					new SqlParameter("@Address", SqlDbType.Text),
					new SqlParameter("@Number", SqlDbType.Int,4),
					new SqlParameter("@Salary", SqlDbType.Text),
					new SqlParameter("@StartDate", SqlDbType.DateTime),
					new SqlParameter("@EndDate", SqlDbType.DateTime),
					new SqlParameter("@Body", SqlDbType.Text),
					new SqlParameter("@YingPin", SqlDbType.Int,4),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.Position;
			parameters[1].Value = model.ZhaoPinOrder;
			parameters[2].Value = model.Address;
			parameters[3].Value = model.Number;
			parameters[4].Value = model.Salary;
			parameters[5].Value = model.StartDate;
			parameters[6].Value = model.EndDate;
			parameters[7].Value = model.Body;
			parameters[8].Value = model.YingPin;
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
		public void Update(WebProject.Model.BaseData.ZT_COM_ZhaoPin model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_COM_ZhaoPin set ");
			strSql.Append("Position=@Position,");
			strSql.Append("ZhaoPinOrder=@ZhaoPinOrder,");
			strSql.Append("Address=@Address,");
			strSql.Append("Number=@Number,");
			strSql.Append("Salary=@Salary,");
			strSql.Append("StartDate=@StartDate,");
			strSql.Append("EndDate=@EndDate,");
			strSql.Append("Body=@Body,");
			strSql.Append("YingPin=@YingPin,");
			strSql.Append("CreateBy=@CreateBy,");
			strSql.Append("CreateDate=@CreateDate,");
			strSql.Append("LastUpdateBy=@LastUpdateBy,");
			strSql.Append("LastUpdateDate=@LastUpdateDate,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where ZhaoPinID=@ZhaoPinID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ZhaoPinID", SqlDbType.Int,4),
					new SqlParameter("@Position", SqlDbType.VarChar,500),
					new SqlParameter("@ZhaoPinOrder", SqlDbType.Int,4),
					new SqlParameter("@Address", SqlDbType.Text),
					new SqlParameter("@Number", SqlDbType.Int,4),
					new SqlParameter("@Salary", SqlDbType.Text),
					new SqlParameter("@StartDate", SqlDbType.DateTime),
					new SqlParameter("@EndDate", SqlDbType.DateTime),
					new SqlParameter("@Body", SqlDbType.Text),
					new SqlParameter("@YingPin", SqlDbType.Int,4),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.ZhaoPinID;
			parameters[1].Value = model.Position;
			parameters[2].Value = model.ZhaoPinOrder;
			parameters[3].Value = model.Address;
			parameters[4].Value = model.Number;
			parameters[5].Value = model.Salary;
			parameters[6].Value = model.StartDate;
			parameters[7].Value = model.EndDate;
			parameters[8].Value = model.Body;
			parameters[9].Value = model.YingPin;
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
		public void Delete(int ZhaoPinID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_COM_ZhaoPin ");
			strSql.Append(" where ZhaoPinID=@ZhaoPinID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ZhaoPinID", SqlDbType.Int,4)};
			parameters[0].Value = ZhaoPinID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_ZhaoPin GetModel(int ZhaoPinID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 ZhaoPinID,Position,ZhaoPinOrder,Address,Number,Salary,StartDate,EndDate,Body,YingPin,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark from ZT_COM_ZhaoPin ");
			strSql.Append(" where ZhaoPinID=@ZhaoPinID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ZhaoPinID", SqlDbType.Int,4)};
			parameters[0].Value = ZhaoPinID;

			WebProject.Model.BaseData.ZT_COM_ZhaoPin model=new WebProject.Model.BaseData.ZT_COM_ZhaoPin();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["ZhaoPinID"].ToString()!="")
				{
					model.ZhaoPinID=int.Parse(ds.Tables[0].Rows[0]["ZhaoPinID"].ToString());
				}
				model.Position=ds.Tables[0].Rows[0]["Position"].ToString();
				if(ds.Tables[0].Rows[0]["ZhaoPinOrder"].ToString()!="")
				{
					model.ZhaoPinOrder=int.Parse(ds.Tables[0].Rows[0]["ZhaoPinOrder"].ToString());
				}
				model.Address=ds.Tables[0].Rows[0]["Address"].ToString();
				if(ds.Tables[0].Rows[0]["Number"].ToString()!="")
				{
					model.Number=int.Parse(ds.Tables[0].Rows[0]["Number"].ToString());
				}
				model.Salary=ds.Tables[0].Rows[0]["Salary"].ToString();
				if(ds.Tables[0].Rows[0]["StartDate"].ToString()!="")
				{
					model.StartDate=DateTime.Parse(ds.Tables[0].Rows[0]["StartDate"].ToString());
				}
				if(ds.Tables[0].Rows[0]["EndDate"].ToString()!="")
				{
					model.EndDate=DateTime.Parse(ds.Tables[0].Rows[0]["EndDate"].ToString());
				}
				model.Body=ds.Tables[0].Rows[0]["Body"].ToString();
				if(ds.Tables[0].Rows[0]["YingPin"].ToString()!="")
				{
					model.YingPin=int.Parse(ds.Tables[0].Rows[0]["YingPin"].ToString());
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
			strSql.Append("select ZhaoPinID,Position,ZhaoPinOrder,Address,Number,Salary,StartDate,EndDate,Body,YingPin,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_ZhaoPin ");
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
			strSql.Append(" ZhaoPinID,Position,ZhaoPinOrder,Address,Number,Salary,StartDate,EndDate,Body,YingPin,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_ZhaoPin ");
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
			parameters[0].Value = "ZT_COM_ZhaoPin";
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


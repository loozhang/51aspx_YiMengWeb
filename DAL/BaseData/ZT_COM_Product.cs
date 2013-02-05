using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//请先添加引用
namespace WebProject.DAL.BaseData
{
	/// <summary>
	/// 数据访问类ZT_COM_Product。
	/// </summary>
	public class ZT_COM_Product
	{
		public ZT_COM_Product()
		{}
		#region  成员方法

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("ProductID", "ZT_COM_Product"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int ProductID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_COM_Product");
			strSql.Append(" where ProductID=@ProductID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ProductID", SqlDbType.Int,4)};
			parameters[0].Value = ProductID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WebProject.Model.BaseData.ZT_COM_Product model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_COM_Product(");
			strSql.Append("ProductName,ProductOrder,ProductImgUrl,ProductInfo,TypeName,TypeNo,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark)");
			strSql.Append(" values (");
			strSql.Append("@ProductName,@ProductOrder,@ProductImgUrl,@ProductInfo,@TypeName,@TypeNo,@CreateBy,@CreateDate,@LastUpdateBy,@LastUpdateDate,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@ProductName", SqlDbType.VarChar,500),
					new SqlParameter("@ProductOrder", SqlDbType.Int,4),
					new SqlParameter("@ProductImgUrl", SqlDbType.VarChar,100),
					new SqlParameter("@ProductInfo", SqlDbType.Text),
					new SqlParameter("@TypeName", SqlDbType.VarChar,500),
					new SqlParameter("@TypeNo", SqlDbType.VarChar,50),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.ProductName;
			parameters[1].Value = model.ProductOrder;
			parameters[2].Value = model.ProductImgUrl;
			parameters[3].Value = model.ProductInfo;
			parameters[4].Value = model.TypeName;
			parameters[5].Value = model.TypeNo;
			parameters[6].Value = model.CreateBy;
			parameters[7].Value = model.CreateDate;
			parameters[8].Value = model.LastUpdateBy;
			parameters[9].Value = model.LastUpdateDate;
			parameters[10].Value = model.Remark;

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
		public void Update(WebProject.Model.BaseData.ZT_COM_Product model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_COM_Product set ");
			strSql.Append("ProductName=@ProductName,");
			strSql.Append("ProductOrder=@ProductOrder,");
			strSql.Append("ProductImgUrl=@ProductImgUrl,");
			strSql.Append("ProductInfo=@ProductInfo,");
			strSql.Append("TypeName=@TypeName,");
			strSql.Append("TypeNo=@TypeNo,");
			strSql.Append("CreateBy=@CreateBy,");
			strSql.Append("CreateDate=@CreateDate,");
			strSql.Append("LastUpdateBy=@LastUpdateBy,");
			strSql.Append("LastUpdateDate=@LastUpdateDate,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where ProductID=@ProductID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ProductID", SqlDbType.Int,4),
					new SqlParameter("@ProductName", SqlDbType.VarChar,500),
					new SqlParameter("@ProductOrder", SqlDbType.Int,4),
					new SqlParameter("@ProductImgUrl", SqlDbType.VarChar,100),
					new SqlParameter("@ProductInfo", SqlDbType.Text),
					new SqlParameter("@TypeName", SqlDbType.VarChar,500),
					new SqlParameter("@TypeNo", SqlDbType.VarChar,50),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.ProductID;
			parameters[1].Value = model.ProductName;
			parameters[2].Value = model.ProductOrder;
			parameters[3].Value = model.ProductImgUrl;
			parameters[4].Value = model.ProductInfo;
			parameters[5].Value = model.TypeName;
			parameters[6].Value = model.TypeNo;
			parameters[7].Value = model.CreateBy;
			parameters[8].Value = model.CreateDate;
			parameters[9].Value = model.LastUpdateBy;
			parameters[10].Value = model.LastUpdateDate;
			parameters[11].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public void Delete(int ProductID)
		{			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_COM_Product ");
			strSql.Append(" where ProductID=@ProductID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ProductID", SqlDbType.Int,4)};
			parameters[0].Value = ProductID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_Product GetModel(int ProductID)
		{			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 ProductID,ProductName,ProductOrder,ProductImgUrl,ProductInfo,TypeName,TypeNo,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark from ZT_COM_Product ");
			strSql.Append(" where ProductID=@ProductID ");
			SqlParameter[] parameters = {
					new SqlParameter("@ProductID", SqlDbType.Int,4)};
			parameters[0].Value = ProductID;

			WebProject.Model.BaseData.ZT_COM_Product model=new WebProject.Model.BaseData.ZT_COM_Product();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["ProductID"].ToString()!="")
				{
					model.ProductID=int.Parse(ds.Tables[0].Rows[0]["ProductID"].ToString());
				}
				model.ProductName=ds.Tables[0].Rows[0]["ProductName"].ToString();
				if(ds.Tables[0].Rows[0]["ProductOrder"].ToString()!="")
				{
					model.ProductOrder=int.Parse(ds.Tables[0].Rows[0]["ProductOrder"].ToString());
				}
				model.ProductImgUrl=ds.Tables[0].Rows[0]["ProductImgUrl"].ToString();
				model.ProductInfo=ds.Tables[0].Rows[0]["ProductInfo"].ToString();
				model.TypeName=ds.Tables[0].Rows[0]["TypeName"].ToString();
				model.TypeNo=ds.Tables[0].Rows[0]["TypeNo"].ToString();
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
			strSql.Append("select ProductID,ProductName,ProductOrder,ProductImgUrl,ProductInfo,TypeName,TypeNo,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_Product ");
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
			strSql.Append(" ProductID,ProductName,ProductOrder,ProductImgUrl,ProductInfo,TypeName,TypeNo,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_Product ");
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


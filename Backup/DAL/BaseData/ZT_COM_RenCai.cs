using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using WebProject.DBUtility;//�����������
namespace WebProject.DAL.BaseData
{
	/// <summary>
	/// ���ݷ�����ZT_COM_RenCai��
	/// </summary>
	public class ZT_COM_RenCai
	{
		public ZT_COM_RenCai()
		{}
		#region  ��Ա����

		/// <summary>
		/// �õ����ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("RenCaiID", "ZT_COM_RenCai"); 
		}

		/// <summary>
		/// �Ƿ���ڸü�¼
		/// </summary>
		public bool Exists(int RenCaiID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ZT_COM_RenCai");
			strSql.Append(" where RenCaiID=@RenCaiID ");
			SqlParameter[] parameters = {
					new SqlParameter("@RenCaiID", SqlDbType.Int,4)};
			parameters[0].Value = RenCaiID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// ����һ������
		/// </summary>
		public int Add(WebProject.Model.BaseData.ZT_COM_RenCai model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ZT_COM_RenCai(");
			strSql.Append("Position,Name,Sex,Birthday,Address,Telephone,Mobile,Email,School,Resume,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark)");
			strSql.Append(" values (");
			strSql.Append("@Position,@Name,@Sex,@Birthday,@Address,@Telephone,@Mobile,@Email,@School,@Resume,@CreateBy,@CreateDate,@LastUpdateBy,@LastUpdateDate,@Remark)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@Position", SqlDbType.VarChar,500),
					new SqlParameter("@Name", SqlDbType.VarChar,50),
					new SqlParameter("@Sex", SqlDbType.VarChar,2),
					new SqlParameter("@Birthday", SqlDbType.DateTime),
					new SqlParameter("@Address", SqlDbType.Text),
					new SqlParameter("@Telephone", SqlDbType.VarChar,50),
					new SqlParameter("@Mobile", SqlDbType.VarChar,50),
					new SqlParameter("@Email", SqlDbType.VarChar,50),
					new SqlParameter("@School", SqlDbType.VarChar,500),
					new SqlParameter("@Resume", SqlDbType.Text),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.Position;
			parameters[1].Value = model.Name;
			parameters[2].Value = model.Sex;
			parameters[3].Value = model.Birthday;
			parameters[4].Value = model.Address;
			parameters[5].Value = model.Telephone;
			parameters[6].Value = model.Mobile;
			parameters[7].Value = model.Email;
			parameters[8].Value = model.School;
			parameters[9].Value = model.Resume;
			parameters[10].Value = model.CreateBy;
			parameters[11].Value = model.CreateDate;
			parameters[12].Value = model.LastUpdateBy;
			parameters[13].Value = model.LastUpdateDate;
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
		/// ����һ������
		/// </summary>
		public void Update(WebProject.Model.BaseData.ZT_COM_RenCai model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ZT_COM_RenCai set ");
			strSql.Append("Position=@Position,");
			strSql.Append("Name=@Name,");
			strSql.Append("Sex=@Sex,");
			strSql.Append("Birthday=@Birthday,");
			strSql.Append("Address=@Address,");
			strSql.Append("Telephone=@Telephone,");
			strSql.Append("Mobile=@Mobile,");
			strSql.Append("Email=@Email,");
			strSql.Append("School=@School,");
			strSql.Append("Resume=@Resume,");
			strSql.Append("CreateBy=@CreateBy,");
			strSql.Append("CreateDate=@CreateDate,");
			strSql.Append("LastUpdateBy=@LastUpdateBy,");
			strSql.Append("LastUpdateDate=@LastUpdateDate,");
			strSql.Append("Remark=@Remark");
			strSql.Append(" where RenCaiID=@RenCaiID ");
			SqlParameter[] parameters = {
					new SqlParameter("@RenCaiID", SqlDbType.Int,4),
					new SqlParameter("@Position", SqlDbType.VarChar,500),
					new SqlParameter("@Name", SqlDbType.VarChar,50),
					new SqlParameter("@Sex", SqlDbType.VarChar,2),
					new SqlParameter("@Birthday", SqlDbType.DateTime),
					new SqlParameter("@Address", SqlDbType.Text),
					new SqlParameter("@Telephone", SqlDbType.VarChar,50),
					new SqlParameter("@Mobile", SqlDbType.VarChar,50),
					new SqlParameter("@Email", SqlDbType.VarChar,50),
					new SqlParameter("@School", SqlDbType.VarChar,500),
					new SqlParameter("@Resume", SqlDbType.Text),
					new SqlParameter("@CreateBy", SqlDbType.VarChar,50),
					new SqlParameter("@CreateDate", SqlDbType.DateTime),
					new SqlParameter("@LastUpdateBy", SqlDbType.VarChar,50),
					new SqlParameter("@LastUpdateDate", SqlDbType.DateTime),
					new SqlParameter("@Remark", SqlDbType.Text)};
			parameters[0].Value = model.RenCaiID;
			parameters[1].Value = model.Position;
			parameters[2].Value = model.Name;
			parameters[3].Value = model.Sex;
			parameters[4].Value = model.Birthday;
			parameters[5].Value = model.Address;
			parameters[6].Value = model.Telephone;
			parameters[7].Value = model.Mobile;
			parameters[8].Value = model.Email;
			parameters[9].Value = model.School;
			parameters[10].Value = model.Resume;
			parameters[11].Value = model.CreateBy;
			parameters[12].Value = model.CreateDate;
			parameters[13].Value = model.LastUpdateBy;
			parameters[14].Value = model.LastUpdateDate;
			parameters[15].Value = model.Remark;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int RenCaiID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ZT_COM_RenCai ");
			strSql.Append(" where RenCaiID=@RenCaiID ");
			SqlParameter[] parameters = {
					new SqlParameter("@RenCaiID", SqlDbType.Int,4)};
			parameters[0].Value = RenCaiID;

			DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
		}


		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
		public WebProject.Model.BaseData.ZT_COM_RenCai GetModel(int RenCaiID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 RenCaiID,Position,Name,Sex,Birthday,Address,Telephone,Mobile,Email,School,Resume,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark from ZT_COM_RenCai ");
			strSql.Append(" where RenCaiID=@RenCaiID ");
			SqlParameter[] parameters = {
					new SqlParameter("@RenCaiID", SqlDbType.Int,4)};
			parameters[0].Value = RenCaiID;

			WebProject.Model.BaseData.ZT_COM_RenCai model=new WebProject.Model.BaseData.ZT_COM_RenCai();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				if(ds.Tables[0].Rows[0]["RenCaiID"].ToString()!="")
				{
					model.RenCaiID=int.Parse(ds.Tables[0].Rows[0]["RenCaiID"].ToString());
				}
				model.Position=ds.Tables[0].Rows[0]["Position"].ToString();
				model.Name=ds.Tables[0].Rows[0]["Name"].ToString();
				model.Sex=ds.Tables[0].Rows[0]["Sex"].ToString();
				if(ds.Tables[0].Rows[0]["Birthday"].ToString()!="")
				{
					model.Birthday=DateTime.Parse(ds.Tables[0].Rows[0]["Birthday"].ToString());
				}
				model.Address=ds.Tables[0].Rows[0]["Address"].ToString();
				model.Telephone=ds.Tables[0].Rows[0]["Telephone"].ToString();
				model.Mobile=ds.Tables[0].Rows[0]["Mobile"].ToString();
				model.Email=ds.Tables[0].Rows[0]["Email"].ToString();
				model.School=ds.Tables[0].Rows[0]["School"].ToString();
				model.Resume=ds.Tables[0].Rows[0]["Resume"].ToString();
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
		/// ��������б�
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select RenCaiID,Position,Name,Sex,Birthday,Address,Telephone,Mobile,Email,School,Resume,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_RenCai ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// ���ǰ��������
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
			strSql.Append(" RenCaiID,Position,Name,Sex,Birthday,Address,Telephone,Mobile,Email,School,Resume,CreateBy,CreateDate,LastUpdateBy,LastUpdateDate,Remark ");
			strSql.Append(" FROM ZT_COM_RenCai ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/*
		/// <summary>
		/// ��ҳ��ȡ�����б�
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
			parameters[0].Value = "ZT_COM_RenCai";
			parameters[1].Value = "ID";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  ��Ա����
	}
}


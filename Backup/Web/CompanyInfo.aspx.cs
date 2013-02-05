using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class CompanyInfo : System.Web.UI.Page
{
    //用于动态设置页面标题、关键字、描述
    protected string Title;
    protected string KeyWords;
    protected string Description;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string url = Request.Url.ToString().ToLower();
            if (CheckString.CheckSqlKeyWord(url) == true)
            {
                MessageBox.ShowAndRedirect(this, "你的IP地址为:" + Page.Request.UserHostAddress + "请不要输入非法字段", "Index.aspx");
            }
            else
            {
                ShowCompanyInfo();
                ShowWebInfo();
            }
        }
    }

    #region 公司简介
    public void ShowCompanyInfo()
    {
        WebProject.BLL.BaseData.ZT_COM_CompanyInfo bll_CompanyInfo = new WebProject.BLL.BaseData.ZT_COM_CompanyInfo();
        DataSet ds = bll_CompanyInfo.GetList(" 1=1 ");
        if (ds.Tables[0].Rows.Count > 0)
        {
            this.lblBody.Text = ds.Tables[0].Rows[0]["Body"].ToString();
        }
    }
    #endregion

    #region 页面标题、关键字、描述的显示
    public void ShowWebInfo()
    {
        WebProject.BLL.BaseData.ZT_COM_WebInfo bll_WebInfo = new WebProject.BLL.BaseData.ZT_COM_WebInfo();
        DataSet ds1 = bll_WebInfo.GetList("FilePath='CompanyInfo.aspx'");
        if (ds1.Tables[0].Rows.Count > 0)
        {
            Title = ds1.Tables[0].Rows[0]["Title"].ToString();
            KeyWords = ds1.Tables[0].Rows[0]["KeyWords"].ToString();
            Description = ds1.Tables[0].Rows[0]["Description"].ToString();
        }
        else
        {
            WebProject.BLL.BaseData.ZT_COM_WebMainInfo bll_WebMainInfo = new WebProject.BLL.BaseData.ZT_COM_WebMainInfo();
            DataSet ds2 = bll_WebMainInfo.GetList(" 1=1 ");
            if (ds2.Tables[0].Rows.Count > 0)
            {
                Title = ds2.Tables[0].Rows[0]["Title"].ToString();
                KeyWords = ds2.Tables[0].Rows[0]["KeyWords"].ToString();
                Description = ds2.Tables[0].Rows[0]["Description"].ToString();
            }
        }
    }
    #endregion
}

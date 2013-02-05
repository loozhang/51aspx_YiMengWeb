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

public partial class NewsView : System.Web.UI.Page
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
                ShowNewsInfo();
                ShowWebInfo();
            }
        }
    }


    #region 显示新闻详细信息

    public void ShowNewsInfo()
    {
        if (Request["NewsID"] + "" == "")
        {
            Response.Redirect("ErrorPage.aspx");
        }
        else
        {
            try
            {
                int NewsID = Convert.ToInt32(Request.QueryString["NewsID"].ToString());
                WebProject.BLL.BaseData.ZT_COM_News bll_News = new WebProject.BLL.BaseData.ZT_COM_News();
                WebProject.Model.BaseData.ZT_COM_News model_News = bll_News.GetModel(NewsID);
                this.lblTitle.Text = model_News.Title.ToString();
                this.lblBody.Text = model_News.Body.ToString();
            }
            catch
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }
    }

    #endregion

    #region 页面标题、关键字、描述的显示
    public void ShowWebInfo()
    {
        if (Request["NewsID"] + "" == "")
        {
            Response.Redirect("ErrorPage.aspx");
        }
        else
        {
            try
            {
                int NewsID = Convert.ToInt32(Request.QueryString["NewsID"].ToString());
                WebProject.BLL.BaseData.ZT_COM_WebInfo bll_WebInfo = new WebProject.BLL.BaseData.ZT_COM_WebInfo();
                DataSet ds = bll_WebInfo.GetList("FilePath='NewsView.aspx?NewsID="+NewsID.ToString()+"'");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Title = ds.Tables[0].Rows[0]["Title"].ToString();
                    KeyWords = ds.Tables[0].Rows[0]["KeyWords"].ToString();
                    Description = ds.Tables[0].Rows[0]["Description"].ToString();
                }
                else
                {
                    DataSet ds1 = bll_WebInfo.GetList("FilePath='NewsView.aspx'");
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

            }
            catch
            {
                Response.Redirect("ErrorPage.aspx");
            }
        } 
    }
    #endregion
}

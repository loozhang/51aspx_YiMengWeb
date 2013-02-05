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

public partial class SysManage_WebInfoView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string url = Request.Url.ToString();
        if (CheckString.CheckSqlKeyWord(url) == true)
        {
            MessageBox.ShowAndRedirect(this, "你的IP地址为:" + Page.Request.UserHostAddress + ",请不要输入非法字段！", "Login.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                if (Session["ZT_ADMIN"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    if (!Communal.CheckQx("WebInfoView.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        ShowData();
                    }
                }
            }
        }
    }

    public void ShowData()
    {
        if (Request["ID"] + "" == "")
        {
            Response.Redirect("RightsWarn.aspx");
        }
        else
        {
            try
            {
                WebProject.BLL.BaseData.ZT_COM_WebInfo bll_WebInfo = new WebProject.BLL.BaseData.ZT_COM_WebInfo();
                WebProject.Model.BaseData.ZT_COM_WebInfo model_WebInfo = bll_WebInfo.GetModel(Int32.Parse(Request["ID"].ToString()));
                this.lblID.Text = model_WebInfo.ID.ToString();
                this.lblTitle.Text = model_WebInfo.Title.ToString();
                this.lblFilePath.Text = model_WebInfo.FilePath.ToString();
                this.lblWebURL.Text = model_WebInfo.WebURL.ToString();
                this.lblKeyWords.Text = model_WebInfo.KeyWords.ToString();
                this.lblDescription.Text = model_WebInfo.KeyWords.ToString();
            }
            catch
            {
                Response.Redirect("RightsWarn.aspx");
            }
        }
    }
}

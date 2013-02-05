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

public partial class SysManage_NewsTypeAdd : System.Web.UI.Page
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
                    if (!Communal.CheckQx("NewsTypeAdd.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                }
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            WebProject.Model.BaseData.ZT_COM_NewsType model_NewsType = new WebProject.Model.BaseData.ZT_COM_NewsType();
            model_NewsType.NewsTypeName = this.txtNewsTypeName.Text.Trim();
            model_NewsType.NewsTypeNo = this.txtNewsTypeNo.Text.Trim();
            model_NewsType.CreateBy = SessionUtil.GetAdminSession().AdminNo;
            model_NewsType.CreateDate = DateTime.Now;
            WebProject.BLL.BaseData.ZT_COM_NewsType bll_NewsType = new WebProject.BLL.BaseData.ZT_COM_NewsType();
            bll_NewsType.Add(model_NewsType);
            LogManage.WriteLog(Request.UserHostAddress, "新闻管理", "添加新闻分类", "成功", "新闻分类名称：" + model_NewsType.NewsTypeName + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
            MessageBox.ShowAndRedirect(this, "添加信息成功！", "NewsTypeList.aspx");
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        this.txtNewsTypeName.Text = "";
        this.txtNewsTypeNo.Text = "";
    }
}

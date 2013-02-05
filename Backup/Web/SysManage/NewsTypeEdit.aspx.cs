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

public partial class SysManage_NewsTypeEdit : System.Web.UI.Page
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
            if (!this.IsPostBack)
            {
                if (Session["ZT_ADMIN"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    if (!Communal.CheckQx("NewsTypeEdit.aspx"))
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
        if (Request["NewsTypeID"] + "" == "")
        {
            Response.Redirect("RightsWarn.aspx");
        }
        else
        {
            try
            {
                WebProject.BLL.BaseData.ZT_COM_NewsType bll_NewsType = new WebProject.BLL.BaseData.ZT_COM_NewsType();
                WebProject.Model.BaseData.ZT_COM_NewsType model_NewsType = bll_NewsType.GetModel(Int32.Parse(Request["NewsTypeID"].ToString()));
                this.txtNewsTypeName.Text = model_NewsType.NewsTypeName.ToString();
                this.txtNewsTypeNo.Text = model_NewsType.NewsTypeNo.ToString();
            }
            catch
            {
                Response.Redirect("RightsWarn.aspx");
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
            if (this.txtNewsTypeName.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入新闻类别标题！");
                return;
            }
            if (this.txtNewsTypeNo.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入新闻类别编号！");
                return;
            }
            try
            {
                WebProject.BLL.BaseData.ZT_COM_NewsType bll_NewsType = new WebProject.BLL.BaseData.ZT_COM_NewsType();
                WebProject.Model.BaseData.ZT_COM_NewsType model_NewsType = bll_NewsType.GetModel(Int32.Parse(Request["NewsTypeID"].ToString()));
                model_NewsType.NewsTypeName = this.txtNewsTypeName.Text.Trim();
                model_NewsType.NewsTypeNo = this.txtNewsTypeNo.Text.Trim();
                model_NewsType.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                model_NewsType.LastUpdateDate = DateTime.Now;
                bll_NewsType.Update(model_NewsType);
                LogManage.WriteLog(Request.UserHostAddress, "新闻管理", "修改新闻分类", "成功", "新闻分类名称：" + model_NewsType.NewsTypeName + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                MessageBox.ShowAndRedirect(this, "修改信息成功！", "NewsTypeList.aspx");
            }
            catch
            {
                Response.Redirect("RightsWarn.aspx");
            }
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            ShowData();
        }
    }
}

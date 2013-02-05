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

public partial class SysManage_AdminEdit : System.Web.UI.Page
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
                    if (!Communal.CheckQx("AdminEdit.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        WebProject.BLL.SysManage.ZT_SYS_RoleInfo bll_RoleInfo = new WebProject.BLL.SysManage.ZT_SYS_RoleInfo();
                        DataSet ds = bll_RoleInfo.GetList(" 1=1 ");
                        BindData.BindDropDownList("RoleName", "RoleNo", ds, txtRole);
                        ShowData();
                    }
                }
            }
        }
    }
    public void ShowData()
    {
        if (Request["AdminID"] + "" == "")
        {
            Response.Redirect("RightsWarn.aspx");
        }
        else
        {
            int i;
            if (!int.TryParse(Request["AdminID"].ToString(), out i))
            {
                Response.Redirect("RightsWarn.aspx");
            }
            else
            {
                try
                {
                    WebProject.BLL.SysManage.ZT_SYS_AdminInfo bll_AdminInfo = new WebProject.BLL.SysManage.ZT_SYS_AdminInfo();
                    WebProject.Model.SysManage.ZT_SYS_AdminInfo model_AdminInfo = bll_AdminInfo.GetModel(Int32.Parse(Request["AdminID"].ToString()));
                    this.lblAdminNo.Text = model_AdminInfo.AdminNo.ToString();
                    this.txtIsLockedOut.SelectedValue = model_AdminInfo.IsLockedOut.ToString();
                    this.txtRole.SelectedValue = model_AdminInfo.RoleNo.ToString();
                }
                catch
                {
                    Response.Redirect("RightsWarn.aspx");
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
            if (Request["AdminID"] + "" == "")
            {
                Response.Redirect("RightsWarn.aspx");
            }
            else
            {
                if (CheckString.CheckSqlKeyWord(this.txtPassword.Text) == true)
                {
                    MessageBox.Show(this, "密码中请不要包含非法字段！");
                    return;
                }
                try
                {
                    WebProject.BLL.SysManage.ZT_SYS_AdminInfo bll_AdminInfo = new WebProject.BLL.SysManage.ZT_SYS_AdminInfo();
                    WebProject.Model.SysManage.ZT_SYS_AdminInfo model_AdminInfo = bll_AdminInfo.GetModel(Int32.Parse(Request["AdminID"].ToString()));
                    model_AdminInfo.RoleNo = this.txtRole.SelectedValue;
                    model_AdminInfo.IsLockedOut = this.txtIsLockedOut.SelectedValue;
                    model_AdminInfo.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                    model_AdminInfo.LastUpdateDate = DateTime.Now;
                    if (this.txtPassword.Text.Trim() != "")
                    {
                        model_AdminInfo.Password = WebProject.Common.Encrypt.MD5Encrypt.MD5(this.txtPassword.Text.Trim());
                    }
                    bll_AdminInfo.Update(model_AdminInfo);
                    LogManage.WriteLog(Request.UserHostAddress, "用户管理", "修改用户", "成功", "用户名：" + model_AdminInfo.AdminNo + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                    MessageBox.ShowAndRedirect(this, "修改用户信息成功！", "AdminList.aspx");
                }
                catch
                {
                    Response.Redirect("RightsWarn.aspx");
                }
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

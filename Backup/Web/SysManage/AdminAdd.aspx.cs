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

public partial class SysManage_AdminAdd : System.Web.UI.Page
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
                    if (!Communal.CheckQx("AdminAdd.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        WebProject.BLL.SysManage.ZT_SYS_RoleInfo bll_RoleInfo = new WebProject.BLL.SysManage.ZT_SYS_RoleInfo();
                        DataSet ds = bll_RoleInfo.GetList(" 1=1 ");
                        BindData.BindDropDownList("RoleName", "RoleNo", ds, txtRole);
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
            WebProject.BLL.SysManage.ZT_SYS_AdminInfo bll_AdminInfo = new WebProject.BLL.SysManage.ZT_SYS_AdminInfo();
            if (this.txtAdminNo.Text.Trim() == "")
            {
                MessageBox.Show(this, "用户名不能为空！");
                return;
            }
            if (this.txtPassword.Text.Trim() == "")
            {
                MessageBox.Show(this, "密码不能为空！");
                return;
            }
            if (CheckString.CheckSqlKeyWord(this.txtAdminNo.Text) == true || CheckString.CheckSqlKeyWord(this.txtPassword.Text) == true)
            {
                MessageBox.Show(this, "用户名和密码中请不要包含非法字段！");
                return;
            }
            if (bll_AdminInfo.GetModelList(" AdminNo='" + this.txtAdminNo.Text.Trim() + "'").Count > 0)
            {
                MessageBox.Show(this, "用户名已存在！");
                return;
            }
            WebProject.Model.SysManage.ZT_SYS_AdminInfo model_AdminInfo = new WebProject.Model.SysManage.ZT_SYS_AdminInfo();
            model_AdminInfo.AdminNo = this.txtAdminNo.Text.Trim();
            model_AdminInfo.Password = WebProject.Common.Encrypt.MD5Encrypt.MD5(this.txtPassword.Text.Trim());
            model_AdminInfo.IsLockedOut = this.txtIsLockedOut.SelectedValue.ToString();
            model_AdminInfo.RoleNo = this.txtRole.SelectedValue.ToString();
            model_AdminInfo.CreateBy = SessionUtil.GetAdminSession().AdminNo;
            model_AdminInfo.CreateDate = DateTime.Now;
            bll_AdminInfo.Add(model_AdminInfo);
            LogManage.WriteLog(Request.UserHostAddress, "用户管理", "添加用户", "成功", "用户名：" + model_AdminInfo.AdminNo + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
            MessageBox.ShowAndRedirect(this, "添加用户成功！", "AdminList.aspx");
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
            this.txtAdminNo.Text = "";
            this.txtPassword.Text = "";
            this.txtIsLockedOut.SelectedValue = "0";
        }
    }
}

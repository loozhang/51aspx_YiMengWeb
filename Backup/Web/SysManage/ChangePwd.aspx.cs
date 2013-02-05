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

public partial class SysManage_ChangePwd : System.Web.UI.Page
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
                    if (!Communal.CheckQx("ChangePwd.aspx"))
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

    #region 提交事件
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        WebProject.BLL.SysManage.ZT_SYS_AdminInfo bll_AdminInfo = new WebProject.BLL.SysManage.ZT_SYS_AdminInfo();
        WebProject.Model.SysManage.ZT_SYS_AdminInfo model_AdminInfo = bll_AdminInfo.GetModel(SessionUtil.GetAdminSession().AdminID);
        if (this.txtOldPwd.Text.Trim() == "")
        {
            MessageBox.Show(this, "原密码不能为空！");
        }
        else if (this.txtNewPwd.Text.Trim() == "")
        {
            MessageBox.Show(this, "新密码不能为空！");
        }
        else if (this.txtOkNewPwd.Text.Trim() == "")
        {
            MessageBox.Show(this, "新密码不能为空！");
        }
        else if (this.txtNewPwd.Text.Trim() != this.txtOkNewPwd.Text.Trim())
        {
            MessageBox.Show(this, "两次输入的新密码不一致！");
        }
        else if (WebProject.Common.Encrypt.MD5Encrypt.MD5(this.txtOldPwd.Text.Trim()) != model_AdminInfo.Password.ToString())
        {
            MessageBox.Show(this, "原密码不正确，请重新输入！");
        }
        else
        {
            model_AdminInfo.Password = WebProject.Common.Encrypt.MD5Encrypt.MD5(this.txtNewPwd.Text.Trim());
            bll_AdminInfo.Update(model_AdminInfo);
            LogManage.WriteLog(Request.UserHostAddress, "用户管理", "修改密码", "成功", "操作名：" + SessionUtil.GetAdminSession().AdminNo);
            MessageBox.ShowAndRedirect(this, "密码修改成功！", "Main.aspx");
        }
    }
    #endregion

    public void ShowData()
    {
        WebProject.BLL.SysManage.ZT_SYS_AdminInfo bll_AdminInfo = new WebProject.BLL.SysManage.ZT_SYS_AdminInfo();
        WebProject.Model.SysManage.ZT_SYS_AdminInfo model_AdminInfo = bll_AdminInfo.GetModel(SessionUtil.GetAdminSession().AdminID);
        this.lblAdminNo.Text = model_AdminInfo.AdminNo;
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        this.txtOldPwd.Text = "";
        this.txtNewPwd.Text = "";
        this.txtOkNewPwd.Text = "";
    }
}

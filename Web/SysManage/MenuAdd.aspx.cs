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

public partial class SysManage_MenuAdd : System.Web.UI.Page
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
                    if (!Communal.CheckQx("MenuAdd.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                }
            }
        }
    }
    #region 提交事件
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            if (this.txtElementCode.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入菜单编号！");
                return;
            }
            if (this.txtElementName.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入菜单名称！");
                return;
            }
            if (this.txtElementShow.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入菜单是否显示！");
                return;
            }
            if (this.txtParentCode.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入父级菜单编号！");
                return;
            }
            WebProject.Model.SysManage.ZT_SYS_ElementInfo model_ElementInfo = new WebProject.Model.SysManage.ZT_SYS_ElementInfo();
            model_ElementInfo.ElementName = this.txtElementName.Text.Trim();
            model_ElementInfo.ElementCode = this.txtElementCode.Text.Trim();
            model_ElementInfo.ParentCode = this.txtParentCode.Text.Trim();
            model_ElementInfo.ElementLink = this.txtElementLink.Text.Trim();
            model_ElementInfo.ElementShow = this.txtElementShow.Text.Trim();
            model_ElementInfo.CreateBy = SessionUtil.GetAdminSession().AdminNo;
            model_ElementInfo.CreateDate = DateTime.Now;
            WebProject.BLL.SysManage.ZT_SYS_ElementInfo bll_ElementInfo = new WebProject.BLL.SysManage.ZT_SYS_ElementInfo();
            bll_ElementInfo.Add(model_ElementInfo);
            LogManage.WriteLog(Request.UserHostAddress, "菜单管理", "添加菜单", "成功", "菜单名：" + model_ElementInfo.ElementName + ", 创建人：" + SessionUtil.GetAdminSession().AdminNo);
            MessageBox.ShowAndRedirect(this, "添加菜单成功！", "MenuList.aspx");
        }

    }
    #endregion

    #region 重置事件
    protected void btnReset_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            this.txtElementName.Text = "";
            this.txtElementCode.Text = "";
            this.txtParentCode.Text = "";
            this.txtElementLink.Text = "";
            this.txtElementShow.Text = "";
        }
    }
    #endregion
}

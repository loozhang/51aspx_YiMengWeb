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

public partial class SysManage_LiuYanHuiFu : System.Web.UI.Page
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
                    if (!Communal.CheckQx("LiuYanHuiFu.aspx"))
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
            if (Request["LiuYanID"] + "" == "")
            {
                Response.Redirect("RightsWarn.aspx");
            }
            else
            {
                try
                {
                    WebProject.BLL.BaseData.ZT_COM_LiuYan bll_LiuYan = new WebProject.BLL.BaseData.ZT_COM_LiuYan();
                    WebProject.Model.BaseData.ZT_COM_LiuYan model_LiuYan = bll_LiuYan.GetModel(Int32.Parse(Request["LiuYanID"].ToString()));
                    model_LiuYan.Reply = this.txtReply.Text.Trim();
                    model_LiuYan.ReplyTime = DateTime.Now;
                    model_LiuYan.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                    model_LiuYan.LastUpdateDate = DateTime.Now;
                    bll_LiuYan.Update(model_LiuYan);
                    LogManage.WriteLog(Request.UserHostAddress, "留言管理", "回复留言", "成功", "回复主题：" + model_LiuYan.MainInfo + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);

                    MessageBox.ShowAndRedirect(this, "回复留言成功！", "LiuYanList.aspx");
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
            this.txtReply.Text = "";
        }
    }
}

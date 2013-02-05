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

public partial class SysManage_RongYuTypeAdd : System.Web.UI.Page
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
            if (Session["ZT_ADMIN"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!Communal.CheckQx("RongYuTypeAdd.aspx"))
                {
                    Response.Redirect("RightsWarn.aspx");
                }
                else
                {
                    this.txtRongYuTypeOrder.Attributes.Add("onpaste", "return false"); //屏蔽粘贴
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
            WebProject.Model.BaseData.ZT_COM_RongYuType model_RongYuType = new WebProject.Model.BaseData.ZT_COM_RongYuType();
            model_RongYuType.RongYuTypeName = this.txtRongYuTypeName.Text.Trim();
            model_RongYuType.RongYuTypeNo = this.txtRongYuTypeNo.Text.Trim();
            model_RongYuType.RongYuTypeOrder = Int32.Parse(this.txtRongYuTypeOrder.Text.Trim());
            model_RongYuType.CreateBy = SessionUtil.GetAdminSession().AdminNo;
            model_RongYuType.CreateDate = DateTime.Now;
            WebProject.BLL.BaseData.ZT_COM_RongYuType bll_RongYuType = new WebProject.BLL.BaseData.ZT_COM_RongYuType();
            bll_RongYuType.Add(model_RongYuType);
            LogManage.WriteLog(Request.UserHostAddress, "荣誉管理", "添加荣誉分类", "成功", "荣誉分类名称：" + model_RongYuType.RongYuTypeName + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
            MessageBox.ShowAndRedirect(this, "添加荣誉成功！", "RongYuTypeList.aspx");
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
            this.txtRongYuTypeName.Text = "";
            this.txtRongYuTypeNo.Text = "";
            this.txtRongYuTypeOrder.Text = "";
        }
    }
}

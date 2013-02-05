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

public partial class SysManage_RongYuTypeEdit : System.Web.UI.Page
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
                    if (!Communal.CheckQx("RongYuTypeEdit.aspx"))
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
        if (Request["RongYuTypeID"] + "" == "")
        {
            Response.Redirect("RightsWarn.aspx");
        }
        else
        {
            try
            {
                WebProject.BLL.BaseData.ZT_COM_RongYuType bll_RongYuType = new WebProject.BLL.BaseData.ZT_COM_RongYuType();
                WebProject.Model.BaseData.ZT_COM_RongYuType model_RongYuType = bll_RongYuType.GetModel(Int32.Parse(Request["RongYuTypeID"].ToString()));

                this.txtRongYuTypeName.Text = model_RongYuType.RongYuTypeName.ToString();
                this.txtRongYuTypeNo.Text = model_RongYuType.RongYuTypeNo.ToString();
                this.txtRongYuTypeOrder.Text = model_RongYuType.RongYuTypeOrder.ToString();
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
            if (this.txtRongYuTypeName.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入荣誉类别标题！");
                return;
            }
            if (this.txtRongYuTypeNo.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入荣誉类别编号！");
                return;
            }
            try
            {
                WebProject.BLL.BaseData.ZT_COM_RongYuType bll_RongYuType = new WebProject.BLL.BaseData.ZT_COM_RongYuType();
                WebProject.Model.BaseData.ZT_COM_RongYuType model_RongYuType = bll_RongYuType.GetModel(Int32.Parse(Request["RongYuTypeID"].ToString()));

                model_RongYuType.RongYuTypeName = this.txtRongYuTypeName.Text.Trim();
                model_RongYuType.RongYuTypeNo = this.txtRongYuTypeNo.Text.Trim();
                model_RongYuType.RongYuTypeOrder = Int32.Parse(this.txtRongYuTypeOrder.Text.Trim());
                model_RongYuType.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                model_RongYuType.LastUpdateDate = DateTime.Now;

                bll_RongYuType.Update(model_RongYuType);
                LogManage.WriteLog(Request.UserHostAddress, "荣誉管理", "修改荣誉分类", "成功", "荣誉分类名称：" + model_RongYuType.RongYuTypeName + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                MessageBox.ShowAndRedirect(this, "修改信息成功！", "RongYuTypeList.aspx");
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

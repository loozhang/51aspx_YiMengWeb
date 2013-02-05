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

public partial class SysManage_WebMainInfo : System.Web.UI.Page
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
                    if (!Communal.CheckQx("WebMainInfo.aspx"))
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
        WebProject.BLL.BaseData.ZT_COM_WebMainInfo bll_WebMainInfo = new WebProject.BLL.BaseData.ZT_COM_WebMainInfo();
        WebProject.Model.BaseData.ZT_COM_WebMainInfo model_WebMainInfo = bll_WebMainInfo.GetModel();
        if (model_WebMainInfo != null)
        {
            model_WebMainInfo.Title = this.txtTitle.Text.Trim();
            model_WebMainInfo.WebURL = this.txtWebURL.Text.Trim();
            model_WebMainInfo.CompanyName = this.txtCompanyName.Text.Trim();
            model_WebMainInfo.Address = this.txtAddress.Text.Trim();
            model_WebMainInfo.MailNum = this.txtMailNum.Text.Trim();
            model_WebMainInfo.Mobile = this.txtMobile.Text.Trim();
            model_WebMainInfo.Fax = this.txtFax.Text.Trim();
            model_WebMainInfo.Email = this.txtEmail.Text.Trim();
            model_WebMainInfo.QQ = this.txtQQ.Text.Trim();
            model_WebMainInfo.KeepPerson = this.txtKeepPerson.Text.Trim();
            model_WebMainInfo.Telephone = this.txtTelephone.Text.Trim();
            model_WebMainInfo.KeyWords = this.txtKeyWords.Text.Trim();
            model_WebMainInfo.Description = this.txtDescription.Text.Trim();
            model_WebMainInfo.ICP = this.txtICP.Text.Trim();
            bll_WebMainInfo.Update(model_WebMainInfo);
            MessageBox.ShowAndRedirect(this, "修改成功", "Main.aspx");
        }
    }
    #endregion

    public void ShowData()
    {
        WebProject.BLL.BaseData.ZT_COM_WebMainInfo bll_WebMainInfo = new WebProject.BLL.BaseData.ZT_COM_WebMainInfo();
        WebProject.Model.BaseData.ZT_COM_WebMainInfo model_WebMainInfo = bll_WebMainInfo.GetModel(SessionUtil.GetAdminSession().AdminID);
        if (model_WebMainInfo != null)
        {
            this.txtTitle.Text = model_WebMainInfo.Title.ToString();
            this.txtWebURL.Text = model_WebMainInfo.WebURL.ToString();
            this.txtCompanyName.Text = model_WebMainInfo.CompanyName.ToString();
            this.txtAddress.Text = model_WebMainInfo.Address.ToString();
            this.txtMailNum.Text = model_WebMainInfo.MailNum.ToString();
            this.txtMobile.Text = model_WebMainInfo.Mobile.ToString();
            this.txtFax.Text = model_WebMainInfo.Fax.ToString();
            this.txtEmail.Text = model_WebMainInfo.Email.ToString();
            this.txtQQ.Text = model_WebMainInfo.QQ.ToString();
            this.txtKeepPerson.Text = model_WebMainInfo.KeepPerson.ToString();
            this.txtTelephone.Text = model_WebMainInfo.Telephone.ToString();
            this.txtKeyWords.Text = model_WebMainInfo.KeyWords.ToString();
            this.txtDescription.Text = model_WebMainInfo.Description.ToString();
            this.txtICP.Text = model_WebMainInfo.ICP.ToString();
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        ShowData();
    }
}

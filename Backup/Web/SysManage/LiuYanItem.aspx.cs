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

public partial class SysManage_LiuYanItem : System.Web.UI.Page
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
                    if (!Communal.CheckQx("LiuYanItem.aspx"))
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
                this.lblAddress.Text = model_LiuYan.Address.ToString();
                this.lblBody.Text = model_LiuYan.Body.ToString();
                this.lblCompanyName.Text = model_LiuYan.CompanyName.ToString();
                this.lblEmail.Text = model_LiuYan.Email.ToString();
                this.lblFax.Text = model_LiuYan.Fax.ToString();
                if (model_LiuYan.IsIndex.ToString() == "1")
                {
                    this.lblIsIndex.Text = "已审核";
                }
                else
                {
                    this.lblIsIndex.Text = "未审核";
                }
                this.lblMailNum.Text = model_LiuYan.MailNum.ToString();
                this.lblMainInfo.Text = model_LiuYan.MainInfo.ToString();
                this.lblMobile.Text = model_LiuYan.Mobile.ToString();
                this.lblName.Text = model_LiuYan.Name.ToString();
                this.lblReply.Text = model_LiuYan.Reply.ToString();
                this.lblReplyTime.Text = model_LiuYan.ReplyTime.ToString();
                if (model_LiuYan.Sex.ToString() == "1")
                {
                    this.lblSex.Text = "男";
                }
                else
                {
                    this.lblSex.Text = "女";
                }
                this.lblTelephone.Text = model_LiuYan.Telephone.ToString();
            }
            catch
            {
                Response.Redirect("RightsWarn.aspx");
            }
        }
    }
    protected void btnIsIndex_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            try
            {
                WebProject.BLL.BaseData.ZT_COM_LiuYan bll_LiuYan = new WebProject.BLL.BaseData.ZT_COM_LiuYan();
                WebProject.Model.BaseData.ZT_COM_LiuYan model_LiuYan = bll_LiuYan.GetModel(Int32.Parse(Request["LiuYanID"].ToString()));
                model_LiuYan.IsIndex = "1";
                model_LiuYan.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                model_LiuYan.LastUpdateDate = DateTime.Now;
                bll_LiuYan.Update(model_LiuYan);
                MessageBox.ShowAndRedirect(this, "设为审核通过成功！", "LiuYanList.aspx");
            }
            catch
            {
                Response.Redirect("RightsWarn.aspx");
            }
        }

    }
    protected void btnIsNoIndex_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            try
            {
                WebProject.BLL.BaseData.ZT_COM_LiuYan bll_LiuYan = new WebProject.BLL.BaseData.ZT_COM_LiuYan();
                WebProject.Model.BaseData.ZT_COM_LiuYan model_LiuYan = bll_LiuYan.GetModel(Int32.Parse(Request["LiuYanID"].ToString()));
                model_LiuYan.IsIndex = "0";
                model_LiuYan.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                model_LiuYan.LastUpdateDate = DateTime.Now;
                bll_LiuYan.Update(model_LiuYan);
                MessageBox.ShowAndRedirect(this, "设为审核不通过成功！", "LiuYanList.aspx");
            }
            catch
            {
                Response.Redirect("RightsWarn.aspx");
            }
        }

    }
}

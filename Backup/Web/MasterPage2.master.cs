using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected string ThisYear;
    protected string PageUrl;
    protected string CompanyInfo;

    protected void Page_Load(object sender, EventArgs e)
    {
        ThisYear = DateTime.Now.Year.ToString();
        if (!Page.IsPostBack)
        {
            ShowWebInfo();
            dlkan();
        }
    }


    #region 页面标题、关键字、描述的显示
    public void ShowWebInfo()
    {
        WebProject.BLL.BaseData.ZT_COM_WebMainInfo bll_WebMainInfo = new WebProject.BLL.BaseData.ZT_COM_WebMainInfo();
        DataSet ds = bll_WebMainInfo.GetList(" 1=1 ");
        if (ds.Tables[0].Rows.Count > 0)
        {
            PageUrl = ds.Tables[0].Rows[0]["WebURL"].ToString();
            CompanyInfo = ds.Tables[0].Rows[0]["Title"].ToString();

            this.lblLeftTelephone.Text = ds.Tables[0].Rows[0]["Telephone"].ToString();
            this.lblLeftKeepPerson.Text = ds.Tables[0].Rows[0]["KeepPerson"].ToString();
            this.lblLeftMobile.Text = ds.Tables[0].Rows[0]["Mobile"].ToString();
            this.lblLeftFax.Text = ds.Tables[0].Rows[0]["Fax"].ToString();
            this.lblLeftAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            this.lblLeftMailNum.Text = ds.Tables[0].Rows[0]["MailNum"].ToString();
            this.lblLeftEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();

            this.lblEndCompanyName.Text = ds.Tables[0].Rows[0]["CompanyName"].ToString();
            this.lblEndTelephone.Text = ds.Tables[0].Rows[0]["Telephone"].ToString();
            this.lblEndFax.Text = ds.Tables[0].Rows[0]["Fax"].ToString();
            this.lblEndEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            this.lblEndAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            this.lblEndICP.Text = ds.Tables[0].Rows[0]["ICP"].ToString();
            
        }
    }

    #endregion

    #region 产品类别的显示

    public void dlkan()
    {
        WebProject.BLL.BaseData.ZT_COM_ProductType bll_ProductType = new WebProject.BLL.BaseData.ZT_COM_ProductType();
        DataSet ds = bll_ProductType.GetList("1=1");
        if (ds.Tables[0].Rows.Count > 0)
        {
            this.DLProductType.DataSource = ds;
            this.DLProductType.DataBind();
        }
    }

    #endregion
}

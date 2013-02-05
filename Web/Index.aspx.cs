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

public partial class Index : System.Web.UI.Page
{
    //用于动态设置页面标题、关键字、描述
    protected string Title;
    protected string KeyWords;
    protected string Description;

    protected string ThisYear;
    protected string PageUrl;
    protected string CompanyInfo;
    protected void Page_Load(object sender, EventArgs e)
    {
        ThisYear = DateTime.Now.Year.ToString();
        if (!Page.IsPostBack)
        {
            string url = Request.Url.ToString().ToLower();
            if (CheckString.CheckSqlKeyWord(url) == true)
            {
                MessageBox.ShowAndRedirect(this, "你的IP地址为:" + Page.Request.UserHostAddress + "请不要输入非法字段", "Index.aspx");
            }
            else
            {
                ShowCompanyInfo();
                //ShowNewsInfo();
                ShowProductInfo();
                ShowWebInfo();
                dlkan();
            }
        }
    }

    #region 公司简介的显示
    public void ShowCompanyInfo()
    {
        WebProject.BLL.BaseData.ZT_COM_CompanyInfo bll_CompanyInfo = new WebProject.BLL.BaseData.ZT_COM_CompanyInfo();
        DataSet ds = bll_CompanyInfo.GetList(" 1=1 ");
        if (ds.Tables[0].Rows.Count > 0)
        {
            if (ds.Tables[0].Rows[0]["Body"].ToString().Length >= 300)
            {
                this.lblBody.Text = ds.Tables[0].Rows[0]["Body"].ToString().Substring(0, 300).ToString() + "……";
            }
            else
            {
                this.lblBody.Text = ds.Tables[0].Rows[0]["Body"].ToString();
            }
        }
    }
    #endregion

    //#region 新闻的显示
    //public void ShowNewsInfo()
    //{
    //    WebProject.BLL.BaseData.ZT_COM_News bll_News = new WebProject.BLL.BaseData.ZT_COM_News();
    //    DataSet ds = bll_News.GetList(" 1=1 ");
    //    this.RPNews.DataSource = ds;
    //    this.RPNews.DataBind();
    //}
    //#endregion

    #region 产品类别的显示

    public void dlkan()
    {
        WebProject.BLL.BaseData.ZT_COM_ProductType bll_ProductType = new WebProject.BLL.BaseData.ZT_COM_ProductType();
        DataSet ds = bll_ProductType.GetList(6, "1=1", "CreateDate asc");
        if (ds.Tables[0].Rows.Count > 0)
        {
            this.DLProductType.DataSource = ds;
            this.DLProductType.DataBind();
        }
    }

    #endregion
    #region 产品的显示
    public void ShowProductInfo()
    {
        WebProject.BLL.BaseData.ZT_COM_Product bll_Product = new WebProject.BLL.BaseData.ZT_COM_Product();
        DataSet ds = bll_Product.GetList(" 1=1 ");
        this.RPProduct.DataSource = ds;
        this.RPProduct.DataBind();
    }
    #endregion

    #region 页面标题、关键字、描述的显示
    public void ShowWebInfo()
    {
        WebProject.BLL.BaseData.ZT_COM_WebInfo bll_WebInfo = new WebProject.BLL.BaseData.ZT_COM_WebInfo();
        DataSet ds1 = bll_WebInfo.GetList("FilePath='Index.aspx'");
        if (ds1.Tables[0].Rows.Count > 0)
        {
            Title = ds1.Tables[0].Rows[0]["Title"].ToString();
            KeyWords = ds1.Tables[0].Rows[0]["KeyWords"].ToString();
            Description = ds1.Tables[0].Rows[0]["Description"].ToString();

            this.lblLeftTelephone.Text = ds1.Tables[0].Rows[0]["Telephone"].ToString();
            this.lblLeftKeepPerson.Text = ds1.Tables[0].Rows[0]["KeepPerson"].ToString();
            this.lblLeftMobile.Text = ds1.Tables[0].Rows[0]["Mobile"].ToString();
            this.lblLeftFax.Text = ds1.Tables[0].Rows[0]["Fax"].ToString();
            this.lblLeftAddress.Text = ds1.Tables[0].Rows[0]["Address"].ToString();
            this.lblLeftMailNum.Text = ds1.Tables[0].Rows[0]["MailNum"].ToString();
            this.lblLeftEmail.Text = ds1.Tables[0].Rows[0]["Email"].ToString();

            this.lblEndCompanyName.Text = ds1.Tables[0].Rows[0]["CompanyName"].ToString();
            this.lblEndTelephone.Text = ds1.Tables[0].Rows[0]["Telephone"].ToString();
            this.lblEndFax.Text = ds1.Tables[0].Rows[0]["Fax"].ToString();
            this.lblEndAddress.Text = ds1.Tables[0].Rows[0]["Address"].ToString();
            this.lblEndICP.Text = ds1.Tables[0].Rows[0]["ICP"].ToString();
            this.lblEndEmail.Text = ds1.Tables[0].Rows[0]["Email"].ToString();
        }
        else
        {
            WebProject.BLL.BaseData.ZT_COM_WebMainInfo bll_WebMainInfo = new WebProject.BLL.BaseData.ZT_COM_WebMainInfo();
            DataSet ds2 = bll_WebMainInfo.GetList(" 1=1 ");
            if (ds2.Tables[0].Rows.Count > 0)
            {
                Title = ds2.Tables[0].Rows[0]["Title"].ToString();
                KeyWords = ds2.Tables[0].Rows[0]["KeyWords"].ToString();
                Description = ds2.Tables[0].Rows[0]["Description"].ToString();

                PageUrl = ds2.Tables[0].Rows[0]["WebURL"].ToString();
                CompanyInfo = ds2.Tables[0].Rows[0]["Title"].ToString();

                this.lblLeftTelephone.Text = ds2.Tables[0].Rows[0]["Telephone"].ToString();
                this.lblLeftKeepPerson.Text = ds2.Tables[0].Rows[0]["KeepPerson"].ToString();
                this.lblLeftMobile.Text = ds2.Tables[0].Rows[0]["Mobile"].ToString();
                this.lblLeftFax.Text = ds2.Tables[0].Rows[0]["Fax"].ToString();
                this.lblLeftAddress.Text = ds2.Tables[0].Rows[0]["Address"].ToString();
                this.lblLeftMailNum.Text = ds2.Tables[0].Rows[0]["MailNum"].ToString();
                this.lblLeftEmail.Text = ds2.Tables[0].Rows[0]["Email"].ToString();

                this.lblEndCompanyName.Text = ds2.Tables[0].Rows[0]["CompanyName"].ToString();
                this.lblEndTelephone.Text = ds2.Tables[0].Rows[0]["Telephone"].ToString();
                this.lblEndFax.Text = ds2.Tables[0].Rows[0]["Fax"].ToString();
                this.lblEndAddress.Text = ds2.Tables[0].Rows[0]["Address"].ToString();
                this.lblEndICP.Text = ds2.Tables[0].Rows[0]["ICP"].ToString();
                this.lblEndEmail.Text = ds2.Tables[0].Rows[0]["Email"].ToString();
            }
        }
    }
    #endregion
}

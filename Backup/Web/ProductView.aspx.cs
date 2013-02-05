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

public partial class ProductView : System.Web.UI.Page
{
    //用于动态设置页面标题、关键字、描述
    protected string Title;
    protected string KeyWords;
    protected string Description;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string url = Request.Url.ToString().ToLower();
            if (CheckString.CheckSqlKeyWord(url) == true)
            {
                MessageBox.ShowAndRedirect(this, "你的IP地址为:" + Page.Request.UserHostAddress + "请不要输入非法字段", "Index.aspx");
            }
            else
            {
                ShowProductInfo();
                ShowWebInfo();
            }
        }
    }

    #region 显示产品详细信息

    public void ShowProductInfo()
    {
        if (Request["ProductID"] + "" == "")
        {
            Response.Redirect("ErrorPage.aspx");
        }
        else
        {
            try
            {
                int ProductID = Convert.ToInt32(Request.QueryString["ProductID"].ToString());
                WebProject.BLL.BaseData.ZT_COM_Product bll_Product = new WebProject.BLL.BaseData.ZT_COM_Product();
                WebProject.Model.BaseData.ZT_COM_Product model_Product = bll_Product.GetModel(ProductID);
                this.ProductImgUrl.ImageUrl = "SysManage/IMG/" + model_Product.ProductImgUrl.ToString();
                this.lblProductName.Text = model_Product.ProductName.ToString();
                this.lblProductInfo.Text = model_Product.ProductInfo.ToString();
            }
            catch
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }
    }

    #endregion

    #region 页面标题、关键字、描述的显示
    public void ShowWebInfo()
    {
        if (Request["ProductID"] + "" == "")
        {
            Response.Redirect("ErrorPage.aspx");
        }
        else
        {
            try
            {
                int ProductID = Convert.ToInt32(Request.QueryString["ProductID"].ToString());
                WebProject.BLL.BaseData.ZT_COM_WebInfo bll_WebInfo = new WebProject.BLL.BaseData.ZT_COM_WebInfo();
                DataSet ds1 = bll_WebInfo.GetList("FilePath='ProductView.aspx?ProductID=" + ProductID.ToString() + "'");
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    Title = ds1.Tables[0].Rows[0]["Title"].ToString();
                    KeyWords = ds1.Tables[0].Rows[0]["KeyWords"].ToString();
                    Description = ds1.Tables[0].Rows[0]["Description"].ToString();
                }
                else
                {
                    DataSet ds2 = bll_WebInfo.GetList("FilePath='ProductView.aspx'");
                    if (ds2.Tables[0].Rows.Count > 0)
                    {
                        Title = ds2.Tables[0].Rows[0]["Title"].ToString();
                        KeyWords = ds2.Tables[0].Rows[0]["KeyWords"].ToString();
                        Description = ds2.Tables[0].Rows[0]["Description"].ToString();
                    }
                    else
                    {
                        WebProject.BLL.BaseData.ZT_COM_WebMainInfo bll_WebMainInfo = new WebProject.BLL.BaseData.ZT_COM_WebMainInfo();
                        DataSet ds3 = bll_WebMainInfo.GetList(" 1=1 ");
                        if (ds3.Tables[0].Rows.Count > 0)
                        {
                            Title = ds3.Tables[0].Rows[0]["Title"].ToString();
                            KeyWords = ds3.Tables[0].Rows[0]["KeyWords"].ToString();
                            Description = ds3.Tables[0].Rows[0]["Description"].ToString();
                        }
                    }
                }

            }
            catch
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }
    }
    #endregion
}


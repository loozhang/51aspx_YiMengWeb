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

public partial class ProductType : System.Web.UI.Page
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
                ProductView();
                ShowWebInfo();
            }
        }
    }

    #region 查看

    public void ProductView()
    {
        if (Request["TypeID"] + "" == "")
        {
            Response.Redirect("ErrorPage.aspx");
        }
        else
        {
            try
            {
                int TypeID = Convert.ToInt32(Request.QueryString["TypeID"].ToString());
                WebProject.BLL.BaseData.ZT_COM_ProductType bll_ProductType = new WebProject.BLL.BaseData.ZT_COM_ProductType();
                WebProject.Model.BaseData.ZT_COM_ProductType model_ProductType = bll_ProductType.GetModel(TypeID);
                int currentPage = Convert.ToInt32(this.dang.Text);  //当前页
                WebProject.BLL.BaseData.ZT_COM_Product bll_Product = new WebProject.BLL.BaseData.ZT_COM_Product();
                DataSet ds = bll_Product.GetList(" TypeNo='" + model_ProductType.TypeNo + "'");
                this.count.Text = ds.Tables[0].Rows.Count.ToString();
                if (ds.Tables[0].Rows.Count >= 0)
                {
                    System.Web.UI.WebControls.PagedDataSource pds = new PagedDataSource();
                    pds.DataSource = ds.Tables[0].DefaultView;
                    pds.AllowPaging = true;
                    pds.PageSize = 6;
                    pds.CurrentPageIndex = currentPage - 1; //当前页面索引,索引号从0开始
                    this.countpage.Text = pds.PageCount.ToString();//总页数

                    if (currentPage == 1)
                    {
                        this.shou.Enabled = false;
                        this.shang.Enabled = false;

                    }
                    else
                    {
                        this.shou.Enabled = true;
                        this.shang.Enabled = true;

                    }
                    if (currentPage == pds.PageCount)
                    {
                        this.xia.Enabled = false;
                        this.last.Enabled = false;

                    }
                    else
                    {
                        this.xia.Enabled = true;
                        this.last.Enabled = true;

                    }

                    this.DataList1.DataSource = pds;
                    this.DataList1.DataBind();
                }

                else
                {
                    this.lblMessage.Visible = true;
                    this.countpage.Text = this.dang.Text;
                    this.shou.Enabled = false;
                    this.shang.Enabled = false;
                    this.xia.Enabled = false;
                    this.last.Enabled = false;

                }
            }
            catch
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }
    }

    #endregion

    #region 分页
    protected void shou_Click(object sender, EventArgs e)
    {
        this.dang.Text = "1";
        ProductView();
    }
    protected void shang_Click(object sender, EventArgs e)
    {
        this.dang.Text = Convert.ToString(Convert.ToInt32(this.dang.Text) - 1);
        ProductView();
    }
    protected void xia_Click(object sender, EventArgs e)
    {
        this.dang.Text = Convert.ToString(Convert.ToInt32(this.dang.Text) + 1);
        ProductView();
    }
    protected void last_Click(object sender, EventArgs e)
    {
        this.dang.Text = this.countpage.Text;
        ProductView();
    }
    #endregion

    #region 页面标题、关键字、描述的显示
    public void ShowWebInfo()
    {
        if (Request["TypeID"] + "" == "")
        {
            Response.Redirect("ErrorPage.aspx");
        }
        else
        {
            try
            {
                int TypeID = Convert.ToInt32(Request.QueryString["TypeID"].ToString());
                WebProject.BLL.BaseData.ZT_COM_WebInfo bll_WebInfo = new WebProject.BLL.BaseData.ZT_COM_WebInfo();
                DataSet ds1 = bll_WebInfo.GetList("FilePath='ProductType.aspx?TypeID=" + TypeID.ToString() + "'");
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    Title = ds1.Tables[0].Rows[0]["Title"].ToString();
                    KeyWords = ds1.Tables[0].Rows[0]["KeyWords"].ToString();
                    Description = ds1.Tables[0].Rows[0]["Description"].ToString();
                }
                else
                {
                    DataSet ds2 = bll_WebInfo.GetList("FilePath='ProductType.aspx'");
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

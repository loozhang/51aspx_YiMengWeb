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

public partial class RongYu : System.Web.UI.Page
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
                ShowRongYuInfo();
                ShowWebInfo();
            }
        }
    }


    #region 查看企业荣誉

    public void ShowRongYuInfo()
    {
        int currentPage = Convert.ToInt32(this.dang.Text);  //当前页
        WebProject.BLL.BaseData.ZT_COM_RongYu bll_RongYu = new WebProject.BLL.BaseData.ZT_COM_RongYu();
        DataSet ds = bll_RongYu.GetList(" 1=1 ");

        this.count.Text = ds.Tables[0].Rows.Count.ToString();
        if (ds.Tables[0].Rows.Count != 0)
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

    #endregion

    #region 分页
    protected void shou_Click(object sender, EventArgs e)
    {
        this.dang.Text = "1";
        ShowRongYuInfo();
    }
    protected void shang_Click(object sender, EventArgs e)
    {
        this.dang.Text = Convert.ToString(Convert.ToInt32(this.dang.Text) - 1);
        ShowRongYuInfo();
    }
    protected void xia_Click(object sender, EventArgs e)
    {
        this.dang.Text = Convert.ToString(Convert.ToInt32(this.dang.Text) + 1);
        ShowRongYuInfo();
    }
    protected void last_Click(object sender, EventArgs e)
    {
        this.dang.Text = this.countpage.Text;
        ShowRongYuInfo();
    }
    #endregion

    #region 页面标题、关键字、描述的显示
    public void ShowWebInfo()
    {
        WebProject.BLL.BaseData.ZT_COM_WebInfo bll_WebInfo = new WebProject.BLL.BaseData.ZT_COM_WebInfo();
        DataSet ds1 = bll_WebInfo.GetList("FilePath='RongYu.aspx'");
        if (ds1.Tables[0].Rows.Count > 0)
        {
            Title = ds1.Tables[0].Rows[0]["Title"].ToString();
            KeyWords = ds1.Tables[0].Rows[0]["KeyWords"].ToString();
            Description = ds1.Tables[0].Rows[0]["Description"].ToString();
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
            }
        }
    }
    #endregion
}

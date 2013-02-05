using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _LiuYanView : System.Web.UI.Page
{
    private void Page_Load(object sender, System.EventArgs e)
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
                ShowLiuYanInfo();
            }
        }
    }

    #region 留言显示

    public void ShowLiuYanInfo()
    {
        int currentPage = Convert.ToInt32(this.dang.Text);  //当前页
        WebProject.BLL.BaseData.ZT_COM_LiuYan bll_LiuYan = new WebProject.BLL.BaseData.ZT_COM_LiuYan();
        DataSet ds = bll_LiuYan.GetList(" 1=1 ");

        this.count.Text = ds.Tables[0].Rows.Count.ToString();
        if (ds.Tables[0].Rows.Count >= 0)
        {
            System.Web.UI.WebControls.PagedDataSource pds = new PagedDataSource();
            pds.DataSource = ds.Tables[0].DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = 5; //设置页面显示的数目
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

            this.Repeater1.DataSource = pds;
            this.Repeater1.DataBind();
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
        ShowLiuYanInfo();
    }
    protected void shang_Click(object sender, EventArgs e)
    {
        this.dang.Text = Convert.ToString(Convert.ToInt32(this.dang.Text) - 1);
        ShowLiuYanInfo();
    }
    protected void xia_Click(object sender, EventArgs e)
    {
        this.dang.Text = Convert.ToString(Convert.ToInt32(this.dang.Text) + 1);
        ShowLiuYanInfo();
    }
    protected void last_Click(object sender, EventArgs e)
    {
        this.dang.Text = this.countpage.Text;
        ShowLiuYanInfo();
    }
    #endregion
}

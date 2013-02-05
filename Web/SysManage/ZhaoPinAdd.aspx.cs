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

public partial class SysManage_ZhaoPinAdd : System.Web.UI.Page
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
                    if (!Communal.CheckQx("ZhaoPinAdd.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        this.txtZhaoPinOrder.Attributes.Add("onpaste", "return false"); //屏蔽粘贴
                    }
                }
            }
        }
    }
    #region 提交事件
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            if (this.txtAddress.Text == "")
            {
                MessageBox.Show(this, "请输入工作地址！");
                return;
            }
            if (this.txtBody.Text == "")
            {
                MessageBox.Show(this, "请输入招聘内容！");
                return;
            }
            if (this.txtEndDate.Text == "")
            {
                MessageBox.Show(this, "请输入截止日期！");
                return;
            }
            if (this.txtNumber.Text == "")
            {
                MessageBox.Show(this, "请输入招聘人数！");
                return;
            }
            if (this.txtPosition.Text == "")
            {
                MessageBox.Show(this, "请输入招聘职位！");
                return;
            }
            if (this.txtSalary.Text == "")
            {
                MessageBox.Show(this, "请输入工资待遇！");
                return;
            }
            if (this.txtZhaoPinOrder.Text == "")
            {
                MessageBox.Show(this, "请输入招聘排序！");
                return;
            }
            try
            {
                WebProject.Model.BaseData.ZT_COM_ZhaoPin model_ZhaoPin = new WebProject.Model.BaseData.ZT_COM_ZhaoPin();
                model_ZhaoPin.Address = this.txtAddress.Text.Trim();
                model_ZhaoPin.Body = this.txtBody.Text.Trim();
                model_ZhaoPin.CreateBy = SessionUtil.GetAdminSession().AdminNo;
                model_ZhaoPin.CreateDate = DateTime.Now;
                model_ZhaoPin.EndDate = Convert.ToDateTime(this.txtEndDate.Text.Trim());
                model_ZhaoPin.Number = Convert.ToInt32(this.txtNumber.Text.Trim());
                model_ZhaoPin.Position = this.txtPosition.Text.Trim();
                model_ZhaoPin.Salary = this.txtSalary.Text.Trim();
                model_ZhaoPin.YingPin = 0;
                model_ZhaoPin.ZhaoPinOrder = Convert.ToInt32(this.txtZhaoPinOrder.Text.Trim());
                WebProject.BLL.BaseData.ZT_COM_ZhaoPin bll_ZhaoPin = new WebProject.BLL.BaseData.ZT_COM_ZhaoPin();
                bll_ZhaoPin.Add(model_ZhaoPin);
                LogManage.WriteLog(Request.UserHostAddress, "招聘管理", "添加招聘信息", "成功", "招聘职位：" + model_ZhaoPin.Position.ToString() + ", 创建人：" + SessionUtil.GetAdminSession().AdminNo);
                MessageBox.ShowAndRedirect(this, "添加招聘信息成功！", "ZhaoPinList.aspx");
            }
            catch
            {
                Response.Redirect("RightsWarn.aspx");
            }
        }
    }
    #endregion

    #region 重置事件
    protected void btnReset_Click(object sender, EventArgs e)
    {
        if (Session["ZT_ADMIN"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            this.txtZhaoPinOrder.Text = "";
            this.txtSalary.Text = "";
            this.txtPosition.Text = "";
            this.txtNumber.Text = "";
            this.txtEndDate.Text = "";
            this.txtBody.Text = "";
            this.txtAddress.Text = "";
        }
    }
    #endregion
}


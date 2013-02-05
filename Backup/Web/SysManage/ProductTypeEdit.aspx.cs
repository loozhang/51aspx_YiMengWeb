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

public partial class SysManage_ProductTypeEdit : System.Web.UI.Page
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
                    if (!Communal.CheckQx("ProductTypeEdit.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        ShowData();
                        this.txtTypeOrder.Attributes.Add("onpaste", "return false"); //屏蔽粘贴
                    }
                }
            }
        }

    }
    public void ShowData()
    {
        if (Request["TypeID"] + "" == "")
        {
            Response.Redirect("RightsWarn.aspx");
        }
        else
        {
            try
            {
                WebProject.BLL.BaseData.ZT_COM_ProductType bll_ProductType = new WebProject.BLL.BaseData.ZT_COM_ProductType();
                WebProject.Model.BaseData.ZT_COM_ProductType model_ProductType = bll_ProductType.GetModel(Int32.Parse(Request["TypeID"].ToString()));
                this.txtTypeName.Text = model_ProductType.TypeName.ToString();
                this.txtTypeNo.Text = model_ProductType.TypeNo.ToString();
                this.txtTypeOrder.Text = model_ProductType.TypeOrder.ToString();
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
            if (Request["TypeID"] + "" == "")
            {
                Response.Redirect("RightsWarn.aspx");
            }
            else
            {
                WebProject.BLL.BaseData.ZT_COM_ProductType bll_ProductType = new WebProject.BLL.BaseData.ZT_COM_ProductType();
                if (this.txtTypeName.Text.Trim() == "")
                {
                    MessageBox.Show(this, "类型名称不能为空！");
                    return;
                }
                if (this.txtTypeNo.Text.Trim() == "")
                {
                    MessageBox.Show(this, "类型编号不能为空！");
                    return;
                }
                int TypeOrder;
                if (this.txtTypeOrder.Text.Trim() == "")
                {
                    TypeOrder = 1000;
                }
                else
                {
                    double u;
                    if (!double.TryParse(this.txtTypeOrder.Text.Trim(), out u))
                    {
                        MessageBox.Show(this, "排序必须为数字！");
                        return;
                    }
                    else
                    {
                        TypeOrder = Convert.ToInt32(this.txtTypeOrder.Text.Trim());
                    }
                }
                try
                {
                    WebProject.Model.BaseData.ZT_COM_ProductType model_ProductType = bll_ProductType.GetModel(Int32.Parse(Request["TypeID"].ToString()));
                    model_ProductType.TypeName = this.txtTypeName.Text.Trim();
                    model_ProductType.TypeNo = this.txtTypeNo.Text.Trim();
                    model_ProductType.TypeOrder = TypeOrder;
                    model_ProductType.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                    model_ProductType.LastUpdateDate = DateTime.Now;
                    bll_ProductType.Update(model_ProductType);
                    LogManage.WriteLog(Request.UserHostAddress, "产品管理", "修改产品分类", "成功", "分类名称：" + model_ProductType.TypeName + ", 修改人：" + SessionUtil.GetAdminSession().AdminNo);
                    MessageBox.ShowAndRedirect(this, "修改产品分类成功！", "ProductTypeList.aspx");
                }
                catch
                {
                    Response.Redirect("RightsWarn.aspx");
                }
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

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

public partial class SysManage_ProductEdit : System.Web.UI.Page
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
                    if (!Communal.CheckQx("ProductEdit.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        WebProject.BLL.BaseData.ZT_COM_ProductType bll_ProductType = new WebProject.BLL.BaseData.ZT_COM_ProductType();
                        DataSet ds = bll_ProductType.GetList(" 1=1 ");
                        BindData.BindDropDownList("TypeName", "TypeNo", ds, txtProductType);
                        this.txtProductOrder.Attributes.Add("onpaste", "return false"); //屏蔽粘贴
                        ShowData();
                    }
                }
            }
        }
    }

    public void ShowData()
    {
        if (Request["ProductID"] + "" == "")
        {
            Response.Redirect("RightsWarn.aspx");
        }
        else
        {
            try
            {
                WebProject.BLL.BaseData.ZT_COM_Product bll_Product = new WebProject.BLL.BaseData.ZT_COM_Product();
                WebProject.Model.BaseData.ZT_COM_Product model_Product = bll_Product.GetModel(Int32.Parse(Request["ProductID"].ToString()));
                if (model_Product.TypeNo.ToString() != "")
                {
                    this.txtProductType.SelectedValue = model_Product.TypeNo.ToString();
                }
                this.txtProductInfo.Text = model_Product.ProductInfo.ToString();
                this.txtProductName.Text = model_Product.ProductName.ToString();
                this.txtProductOrder.Text = model_Product.ProductOrder.ToString();
            }
            catch
            {
                Response.Redirect("RightsWarn.aspx");
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
            if (this.txtProductName.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入产品名称！");
                return;
            }
            if (this.txtProductInfo.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入信息内容！");
                return;
            }
            int ProductOrder;
            if (this.txtProductOrder.Text.Trim() == "")
            {
                ProductOrder = 1000;
            }
            else
            {
                double u;
                if (!double.TryParse(this.txtProductOrder.Text.Trim(), out u))
                {
                    MessageBox.Show(this, "排序必须为数字！");
                    return;
                }
                else
                {
                    ProductOrder = Convert.ToInt32(this.txtProductOrder.Text.Trim());
                }
            }

            Boolean fileTypeOK = false;
            String path = Server.MapPath("~/SysManage/IMG/");
            if (txtProductImgUrl.HasFile == false)
            {
                try
                {
                    WebProject.BLL.BaseData.ZT_COM_Product bll_Product = new WebProject.BLL.BaseData.ZT_COM_Product();
                    WebProject.Model.BaseData.ZT_COM_Product model_Product = bll_Product.GetModel(Int32.Parse(Request["ProductID"].ToString()));
                    model_Product.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                    model_Product.LastUpdateDate = DateTime.Now;
                    if (this.txtProductType.Items.Count > 0)
                    {
                        model_Product.TypeName = this.txtProductType.Items[this.txtProductType.SelectedIndex].Text.ToString();
                        model_Product.TypeNo = this.txtProductType.SelectedValue.ToString();
                    }
                    model_Product.ProductInfo = this.txtProductInfo.Text.Trim();
                    model_Product.ProductName = this.txtProductName.Text.Trim();
                    model_Product.ProductOrder = ProductOrder;
                    bll_Product.Update(model_Product);
                    LogManage.WriteLog(Request.UserHostAddress, "产品管理", "修改产品信息", "成功", "产品名称：" + model_Product.ProductName + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                    MessageBox.ShowAndRedirect(this, "修改信息成功！", "ProductList.aspx");
                }
                catch
                {
                    Response.Redirect("RightsWarn.aspx");
                }
            }
            if (txtProductImgUrl.HasFile == true)
            {
                String fileExtension = System.IO.Path.GetExtension(txtProductImgUrl.FileName).ToLower();
                String[] allowedExtensions = { ".bmp", ".jpg", ".jpeg", ".png", ".gif" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileTypeOK = true;
                        break;
                    }
                }
                if (fileTypeOK == false)
                {
                    MessageBox.Show(this, "你要上传的文件类型不符合要求！");
                    return;
                }
                if (fileTypeOK == true)
                {
                    if (txtProductImgUrl.PostedFile.ContentLength > 10240000)
                    {
                        MessageBox.Show(this, "你选择上传的文件不能大于10M，请重新选择！");
                        return;
                    }
                    if (txtProductImgUrl.PostedFile.ContentLength <= 10240000)
                    {
                        try
                        {
                            string SaveFileName = DateTime.Now.ToString().Replace("-", "").Replace(" ", "").Replace(":", "") + fileExtension;
                            txtProductImgUrl.PostedFile.SaveAs(path + SaveFileName);
                            WebProject.BLL.BaseData.ZT_COM_Product bll_Product = new WebProject.BLL.BaseData.ZT_COM_Product();
                            WebProject.Model.BaseData.ZT_COM_Product model_Product = bll_Product.GetModel(Int32.Parse(Request["ProductID"].ToString()));
                            model_Product.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                            model_Product.LastUpdateDate = DateTime.Now;
                            if (this.txtProductType.Items.Count > 0)
                            {
                                model_Product.TypeName = this.txtProductType.Items[this.txtProductType.SelectedIndex].Text.ToString();
                                model_Product.TypeNo = this.txtProductType.SelectedValue.ToString();
                            }
                            model_Product.ProductImgUrl = SaveFileName;
                            model_Product.ProductInfo = this.txtProductInfo.Text.Trim();
                            model_Product.ProductName = this.txtProductName.Text.Trim();
                            model_Product.ProductOrder = ProductOrder;
                            bll_Product.Update(model_Product);
                            LogManage.WriteLog(Request.UserHostAddress, "产品管理", "修改产品信息", "成功", "产品名称：" + model_Product.ProductName + ", 操作人：" + SessionUtil.GetAdminSession().AdminNo);
                            MessageBox.ShowAndRedirect(this, "修改信息成功！", "ProductList.aspx");
                        }
                        catch (Exception)
                        {
                            MessageBox.Show(this, "文件上传失败！");
                            return;
                        }
                    }
                }
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
            ShowData();
        }
    }
    #endregion

    #region 删除图片事件
    protected void btnSetNoImg_Click(object sender, EventArgs e)
    {
        if (Request["ProductID"] + "" == "")
        {
            Response.Redirect("RightsWarn.aspx");
        }
        else
        {
            try
            {
                WebProject.BLL.BaseData.ZT_COM_Product bll_Product = new WebProject.BLL.BaseData.ZT_COM_Product();
                WebProject.Model.BaseData.ZT_COM_Product model_Product = bll_Product.GetModel(Int32.Parse(Request["ProductID"].ToString()));
                if (model_Product.ProductImgUrl.ToString() != "onlinenone.jpg")
                {
                    System.IO.File.Delete(Server.MapPath("IMG/" + model_Product.ProductImgUrl.ToString()));
                    model_Product.ProductImgUrl = "onlinenone.jpg";
                    model_Product.LastUpdateBy = SessionUtil.GetAdminSession().AdminNo;
                    model_Product.LastUpdateDate = DateTime.Now;
                    bll_Product.Update(model_Product);
                }
                LogManage.WriteLog(Request.UserHostAddress, "产品管理", "删除图片", "成功", "产品名称：" + model_Product.ProductName + ", 修改人：" + SessionUtil.GetAdminSession().AdminNo);
                MessageBox.Show(this, "删除原图片成功！");
            }
            catch
            {
                Response.Redirect("RightsWarn.aspx");
            }
        }
    }
    #endregion
}

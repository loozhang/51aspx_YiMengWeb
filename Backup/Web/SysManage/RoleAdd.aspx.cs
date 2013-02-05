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

public partial class SysManage_RoleAdd : System.Web.UI.Page
{
    private string mElemStr = "";
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
                    if (!Communal.CheckQx("RoleAdd.aspx"))
                    {
                        Response.Redirect("RightsWarn.aspx");
                    }
                    else
                    {
                        mElemStr = "";
                        LoadTree();
                    }
                }
            }
        }
    }

    private void LoadTree()
    {
        this.TreeView1.Nodes.Clear();

        TreeNode item = new TreeNode();
        item.Text = "角色权限选择";
        item.Value = "root";
        item.Target = "1";
        item.Expanded = true;

        item.ImageUrl = "Images/tree_to.ico";
        TreeView1.Nodes.Add(item);

        bool blnModule = false;

        string whereSql = "";
        WebProject.BLL.SysManage.ZT_SYS_ElementInfo bll_ElementInfo = new WebProject.BLL.SysManage.ZT_SYS_ElementInfo();
        System.Data.DataTable dt1, dt2;
        DataRow dr;

        whereSql = "  ParentCode='00' and ElementShow = '1'";// order by  SequenceNo";
        //排序           

        dt1 = bll_ElementInfo.GetList(whereSql).Tables[0];


        if (dt1.Rows.Count == 0) return;
        for (int i = 0; i < dt1.Rows.Count; i++)  //模块
        {
            dr = dt1.Rows[i];
            TreeNode module = new TreeNode();
            module.Target = "2";
            module.ShowCheckBox = true;
            module.Checked = true;
            module.Text = dr["ElementName"].ToString();
            module.Value = dr["ElementCode"].ToString();
            module.Expanded = false;
            item.ChildNodes.Add(module);

            blnModule = false;
            //获取功能列表
            whereSql = " ParentCode='" + dr["ElementCode"].ToString() + "' order by  SequenceNo";

            dt2 = bll_ElementInfo.GetList(whereSql).Tables[0];
            if (dt2.Rows.Count == 0) continue;
            for (int j = 0; j < dt2.Rows.Count; j++) //功能
            {
                dr = dt2.Rows[j];
                TreeNode func = new TreeNode();
                func.Target = "3";
                func.Value = dr["ElementCode"].ToString();
                func.Text = dr["ElementName"].ToString();
                func.ShowCheckBox = true;
                func.Checked = true;

                module.ChildNodes.Add(func);

                if (func.Checked) blnModule = true;

            }//功能

            module.Checked = blnModule;

        }//模块

    }

    private string GetAllNodeText(TreeNodeCollection tnc)
    {
        foreach (TreeNode node in tnc)
        {
            if (node.ChildNodes.Count != 0)
                GetAllNodeText(node.ChildNodes);
            if (node.Target == "3")
            {
                if (node.Checked)
                {
                    mElemStr += "," + node.Value;
                }
            }
        }

        return mElemStr;
    }

    private DataTable BindDataDT()
    {
        WebProject.BLL.SysManage.ZT_SYS_ElementInfo bll_ElementInfo = new WebProject.BLL.SysManage.ZT_SYS_ElementInfo();
        string whereSql = " ElementShow = '0'"; //order by  SequenceNo";
        //排序    
        DataTable dtTree = bll_ElementInfo.GetList(whereSql).Tables[0];
        return dtTree;
    }

    private DataTable dtRFG = null;

    public void AddTree(string ParentID, TreeNode pNode)
    {
        if (dtRFG == null) dtRFG = BindDataDT();

        DataView dvTree = new DataView(dtRFG);
        string Fstr = "[ParentCode] ='" + ParentID + "'";
        dvTree.RowFilter = Fstr;
        foreach (DataRowView Row in dvTree)
        {
            TreeNode Node = new TreeNode();
            if (pNode == null)                  //处理主节点
            {
                Node.Value = Row["ElementCode"].ToString(); //这里+了2个值分别到Value和Text，可随便
                Node.Text = Row["ElementName"].ToString();
                Node.Expanded = true;
                Node.ImageUrl = "Images/tree_to.ico";
                Node.Target = "1";
                this.TreeView1.Nodes.Add(Node);    //加入
                AddTree(Row["ElementCode"].ToString(), Node); //递归
            }
            else //处理子节点
            {
                Node.Value = Row["ElementCode"].ToString();
                Node.Text = Row["ElementName"].ToString();

                Node.ShowCheckBox = true;
                Node.Checked = true;
                Node.Expanded = false;

                //最终功能结点
                if (Row["ElementDesc"].ToString() == "1")
                {
                    Node.Target = "3";//终极结点
                }
                else
                {
                    Node.Target = "2";//中间结点
                }

                pNode.ChildNodes.Add(Node);
                AddTree(Row["ElementCode"].ToString(), Node); //递归
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
            if (this.txtRoleNo.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入角色编号！");
                return;
            }
            if (this.txtRoleName.Text.Trim() == "")
            {
                MessageBox.Show(this, "请输入角色名称！");
                return;
            }
            WebProject.BLL.SysManage.ZT_SYS_RoleInfo bll_RoleInfo = new WebProject.BLL.SysManage.ZT_SYS_RoleInfo();
            if (bll_RoleInfo.GetModelList(" RoleNo='" + this.txtRoleNo.Text.Trim() + "'").Count > 0)
            {
                MessageBox.Show(this, "角色编号不能重复！");
                return;
            }

            this.mElemStr = "";
            string elems = this.GetAllNodeText(this.TreeView1.Nodes);
            if (elems.Split(',').Length <= 1)
            {
                MessageBox.Show(this, "至少选择一个权限！");
                return;
            }
            elems = elems.Substring(1);
            WebProject.Model.SysManage.ZT_SYS_RoleInfo model_RoleInfo = new WebProject.Model.SysManage.ZT_SYS_RoleInfo();
            model_RoleInfo.RoleNo = this.txtRoleNo.Text.Trim();
            model_RoleInfo.RoleName = this.txtRoleName.Text.Trim();
            model_RoleInfo.RoleElements = elems;
            model_RoleInfo.CreateBy = SessionUtil.GetAdminSession().AdminNo;
            model_RoleInfo.CreateDate = DateTime.Now;
            bll_RoleInfo.Add(model_RoleInfo);
            LogManage.WriteLog(Request.UserHostAddress, "角色管理", "添加角色", "成功", "角色编号：" + model_RoleInfo.RoleNo + " 角色名称：" + model_RoleInfo.RoleName + "操作人：" + SessionUtil.GetAdminSession().AdminNo);
            MessageBox.ShowAndRedirect(this, "添加角色成功！", "RoleList.aspx");
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
            this.txtRoleName.Text = "";
            this.txtRoleNo.Text = "";
        }
    }
    #endregion
}

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

public partial class SysManage_Left : Go
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["ZT_ADMIN"] == null)
            {
                GoTo("Login.aspx", Go.Target.Parent);
            }
            else
            {
                BindMenu();
            }
        }
    }

    public void BindMenu()
    {
        try
        {
            TreeNode node = null;
            WebProject.BLL.SysManage.ZT_SYS_ElementInfo bll_ElementInfo = new WebProject.BLL.SysManage.ZT_SYS_ElementInfo();
            DataSet ds = bll_ElementInfo.GetMenuList(SessionUtil.GetAdminSession().RoleNo);
            DataSet nodeview = ds;
            for (int i = 0; i < nodeview.Tables[0].Rows.Count; i++)
            {
                node = new TreeNode();
                node.Text = GetName(nodeview.Tables[0].Rows[i]["ParentCode"].ToString());
                node.Value = nodeview.Tables[0].Rows[i]["ParentCode"].ToString();
                node.Target = "main-frame";
                TreeView1.Nodes.Add(node);
                BindMenuChild(nodeview.Tables[0].Rows[i]["ParentCode"].ToString(), node);
            }
        }
        catch
        {
            TreeNode node = null;
            node = new TreeNode();
            node.Text = "无法显示菜单";
            node.Value = "无法显示菜单";
            TreeView1.Nodes.Add(node);
        }
    }

    public void BindMenuChild(string ParentCode, TreeNode rootNode)
    {
        try
        {
            //显示菜单
            TreeNode node = null;
            WebProject.BLL.SysManage.ZT_SYS_ElementInfo bll_ElementInfo = new WebProject.BLL.SysManage.ZT_SYS_ElementInfo();
            DataSet ds = bll_ElementInfo.GetMenuItemList(ParentCode, SessionUtil.GetAdminSession().RoleNo);
            DataSet nodeview = ds;
            for (int i = 0; i < nodeview.Tables[0].Rows.Count; i++)
            {
                node = new TreeNode();
                node.Text = nodeview.Tables[0].Rows[i]["ElementName"].ToString();
                node.Value = nodeview.Tables[0].Rows[i]["ElementCode"].ToString();
                node.NavigateUrl = "javascript:parent.frames['header-frame'].document.getElementById('load-div').style.display='';parent.frames['main-frame'].document.location.href='" + Request.Path.Replace("Left.aspx", nodeview.Tables[0].Rows[i]["ElementLink"].ToString()) + "';";
                node.Target = "main-frame";
                rootNode.ChildNodes.Add(node);
            }
        }
        catch
        {

        }
    }

    public string GetName(string str)
    {
        WebProject.BLL.SysManage.ZT_SYS_ElementInfo bll_ElementInfo = new WebProject.BLL.SysManage.ZT_SYS_ElementInfo();
        return bll_ElementInfo.GetModelList(" ElementCode = '" + str + "'")[0].ElementName;
    }

    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < this.TreeView1.Nodes.Count; i++)
        {//跌迭根节点
            if (this.TreeView1.SelectedValue == this.TreeView1.Nodes[i].Value)
            {//如果选中的是根节点,就展开
                this.TreeView1.SelectedNode.Expanded = true;
            }
        }
    }

    protected void TreeView1_TreeNodeExpanded(object sender, TreeNodeEventArgs e)
    {
        TreeNodeCollection ts = null;
        if (e.Node.Parent == null)
        {
            ts = ((TreeView)sender).Nodes;
        }
        else
        {
            ts = e.Node.Parent.ChildNodes;
        }
        foreach (TreeNode node in ts)
        {
            if (node != e.Node)
            {
                node.Collapse();
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_project
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int pos;
            string no;
            if (e.CommandName == "Select")
            {
                pos = Convert.ToInt32(e.CommandArgument);
                no = GridView1.DataKeys[pos].Value.ToString();
                lblOutput.Text = no +"已加入購物車";

                
            }
        }
        
        protected void incart_Click(object sender, EventArgs e)
        {
            for(int i = 0; i < itemlist.Items.Count; i++)
            {
                if (itemlist.Items[i].Selected == true) {
                    Session["goods"] += itemlist.Items[i].Text + ",";
                }
            }
        }

        protected void viewcart_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < itemlist.Items.Count; i++)
            {
                if (itemlist.Items[i].Selected == true)
                {
                    Response.Redirect("Shopcart.aspx");
                }
            }
        }
    }
}
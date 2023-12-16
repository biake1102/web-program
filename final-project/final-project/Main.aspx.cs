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
            int count = 0;
            string tmp ; 
            List<string> item = new List<string>();
            List<string> itemprice = new List<string>();

            if (e.CommandName == "Select")
            {
                pos = Convert.ToInt32(e.CommandArgument);
                no = GridView1.DataKeys[pos].Value.ToString();
                string price = GridView1.Rows[pos].Cells[3].Text;
                
                item.Add(no);
                itemprice.Add(price);
                lblOutput.Text = item[count] + "已加入購物車";

                TextBox1.Text += item[count] + " " + itemprice[count] + "元" + "!" +"\n";
                
                tmp = TextBox1.Text;
                Session["tmp"] = TextBox1.Text;
                count++;
            }                        
        }
    }
}
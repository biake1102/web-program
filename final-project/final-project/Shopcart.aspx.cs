using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace final_project
{
    public partial class shopcar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tmp"] != null)
            {
                TextBox1.Text = Session["tmp"].ToString();
                TextBox1.Text = TextBox1.Text.Replace("!", "\n");
            }
            else
            {
                TextBox1.Text = "購物車是空的!";
            }
        }

        

        protected void buy_Click(object sender, EventArgs e)
        {
            if (Session["tmp"] != null)
            {
                output.Text = "購買成功!";
                TextBox1.Text = "";
            }
            else
            {
                output.Text = "尚未選擇購買商品!";
            }    
        }

        
    }
}
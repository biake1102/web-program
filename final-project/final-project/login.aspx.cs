using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace final_project
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox4.Text == TextBox5.Text)
            {
                Label1.Text = "註冊成功!";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string password = TextBox4.Text;
            if (TextBox1.Text == TextBox3.Text && TextBox2.Text == password)
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                Label2.Text = "尚未註冊或帳密有誤";
            }
        }
    }
}
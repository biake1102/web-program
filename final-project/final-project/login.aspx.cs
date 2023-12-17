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
            bool account_OK = false;
            bool password_OK = false;
            if(Temp1.Text == "")
            {
                account_OK = true;
            }
            else if(!Temp1.Text.Contains(TextBox3.Text))
            {
                account_OK = true;
            }

            if (TextBox4.Text == TextBox5.Text && Temp2.Text == "")
            {
                password_OK = true;
            }
            else if (TextBox4.Text == TextBox5.Text && !Temp2.Text.Contains(TextBox4.Text))
            {
                password_OK = true;
            }

            if(account_OK && password_OK)
            {
                Label1.Text = "註冊成功!";
                Temp1.Text += TextBox3.Text + "\n";
                Temp2.Text += TextBox4.Text + "\n";
                TextBox4.Text = "";
                TextBox5.Text = "";
            }
            else
            {
                TextBox4.Text = "";
                TextBox5.Text = "";
                Label1.Text = "註冊失敗!";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string password = TextBox4.Text;
            bool account_OK = false;
            bool password_OK = false;
            
            if(Temp1.Text.Contains(TextBox1.Text) && Temp1.Text != "")
            {
                account_OK = true;
            }
            if(Temp2.Text.Contains(TextBox2.Text) && Temp2.Text != "")
            {
                password_OK = true;
            }

            if (account_OK && password_OK)
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
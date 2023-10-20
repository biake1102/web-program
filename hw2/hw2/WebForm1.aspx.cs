using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hw2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(txtHamQuan.Text);
            int b = Convert.ToInt32(txtSanQuan.Text);
            int c = Convert.ToInt32(txtSoyQuan.Text);
            int d = Convert.ToInt32(txtMilQuan.Text);
            int t = 0 , count = a + b + c + d;
            
            if (chkSoyPea.Checked)
            {
                t = 50 * a + 40 * b + 30 * c + 30 * d;
                lblOutput.Text = "總價:" + t + "<br/>";
                lblOutput.Text += "項目數:" + count;
                if (chkMilPea.Checked)
                {
                    t = 50 * a + 40 * b + 30 * c + 35 * d;
                    lblOutput.Text = "總價:" + t + "<br/>";
                    lblOutput.Text += "項目數:" + count;
                }
            }
            else if (chkMilPea.Checked)
            {
                 t = 50 * a + 40 * b + 25 * c + 35 * d;
                 lblOutput.Text = "總價:" + t + "<br/>";
                 lblOutput.Text += "項目數:" + count;
            }
            else
            {
                t = 50 * a + 40 * b + 25 * c + 30 * d;
                lblOutput.Text = "總價:" + t + "<br/>";
                lblOutput.Text += "項目數:" + count;
            }
        }
    }
}
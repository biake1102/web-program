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
            int f = 0 , g = 0 , h = 0, i = 0 , count = a + b + c + d;
            
            if (chkSoyPea.Checked)
            {
                f = 50 * a + 40 * b + 30 * c + 30 * d;
                lblOutput.Text = "總價:" + f + "<br/>";
                lblOutput.Text += "項目數:" + count;
                if (chkMilPea.Checked)
                {
                    g = 50 * a + 40 * b + 25 * c + 35 * d;
                    lblOutput.Text = "總價:" + g + "<br/>";
                    lblOutput.Text += "項目數:" + count;
                    if (chkSoyPea.Checked)
                    {
                        h = 50 * a + 40 * b + 30 * c + 35 * d;
                        lblOutput.Text = "總價:" + h + "<br/>";
                        lblOutput.Text += "項目數:" + count;
                    }
                }
            }
            else
            {
                i = 50 * a + 40 * b + 25 * c + 30 * d;
                lblOutput.Text = "總價:" + i + "<br/>";
                lblOutput.Text += "項目數:" + count;
            }
        }
    }
}
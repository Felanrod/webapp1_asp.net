using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string x;
                x = TextBox1.Text;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            label1.Text = "You entered " + TextBox1.Text;
        }
    }
}

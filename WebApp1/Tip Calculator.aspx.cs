using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class Tip_Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalc_Click(object sender, EventArgs e)
        {
            //first calculate the tip amount
            decimal TipAmount = Convert.ToDecimal(txtBill.Text) * Decimal.Parse(ddlTip.SelectedValue);

            //display the amount of the tip
            lblTipAmnt.Text = String.Format("{0:c}",TipAmount);

            //calculate the total
            decimal Total = Convert.ToDecimal(txtBill.Text) + TipAmount;

            //display the total amount
            lblTotal.Text = String.Format("{0:c}", Total);

            foreach (ListItem item in ddlTip.Items)
            {
                if (item.Selected)
                {
                    Boolean x = true;
                    //or some other code here if the item is selected
                }
            }

        }
    }
}
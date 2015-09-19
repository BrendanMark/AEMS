using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AEMS
{
    public partial class ViewEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //String[] temp = new String[4];
            //temp[0] = "Profesor";
            //temp[1] = "End of the Semester";
            //temp[2] = "Student";

            //gvEvents.DataSource = temp;
            //gvEvents.DataBind();

            //GridViewRow row1 = gvEvents.Rows[0];
            //row1.Cells[0].Text = "Tampa: Phillies Spring Training 2015";
            //row1.Cells[1].Text = "Steve Hazzard";
            //row1.Cells[2].Text = "March 29th, 2015";
            //GridViewRow row2 = gvEvents.Rows[1];
            //row2.Cells[0].Text = "Alumni party";
            //row2.Cells[1].Text = "Jane Smith";
            //row2.Cells[2].Text = "April 20th, 2014";
            //GridViewRow row3 = gvEvents.Rows[2];
            //row3.Cells[0].Text = "Alumni Weekend";
            //row3.Cells[1].Text = "John Jacob Jingleheimer Schmidt";
            //row3.Cells[2].Text = "March 11th, 2014";
            //GridViewRow row4 = gvEvents.Rows[3];
            //row4.Cells[0].Text = "102939476";
            //row4.Cells[1].Text = "Kumar";
            //row4.Cells[2].Text = "Snowman";
        }

        // code for hover over effect in gridview
        protected void gvEvents_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onMouseOver", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#ea4335';this.style.cursor='pointer';");
                e.Row.Attributes.Add("OnMouseOut", "this.style.backgroundColor=this.originalstyle;");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AEMS
{
    public partial class ViewEvent : System.Web.UI.Page
    {
        Connection objDB = new Connection();
        SqlCommand objCommand = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            // fills are gridview with all the events when page is loaded for the first time
            if (!IsPostBack)
            {
                if (IsPostBack == false)
                {
                    ShowAllEvents();
                }
            }
        }

        // code for hover over effect in gridview
        protected void gvEvents_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onMouseOver", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#75A3FF';this.style.cursor='pointer';");
                e.Row.Attributes.Add("OnMouseOut", "this.style.backgroundColor=this.originalstyle;");
            }
        }
        
        // code for sorting the grid view
        protected void SortGridView(object sender, GridViewSortEventArgs e)
        {
            DataTable dt = Session["EventTable"] as DataTable;
            if (dt != null)
            {
                //Sort the data.
                dt.DefaultView.Sort = e.SortExpression + " " + GetSortDirection(e.SortExpression);
                gvEvents.DataSource = Session["EventTable"];
                gvEvents.DataBind();
            }
        }

        // gets the sort direction 
        private string GetSortDirection(string column)
        {

            // By default, set the sort direction to ascending.
            string sortDirection = "ASC";

            // Retrieve the last column that was sorted.
            string sortExpression = ViewState["SortExpression"] as string;

            if (sortExpression != null)
            {
                // Check if the same column is being sorted.
                // Otherwise, the default value can be returned.
                if (sortExpression == column)
                {
                    string lastDirection = ViewState["SortDirection"] as string;
                    if ((lastDirection != null) && (lastDirection == "ASC"))
                    {
                        sortDirection = "DESC";
                    }
                }
            }

            // Save new values in ViewState.
            ViewState["SortDirection"] = sortDirection;
            ViewState["SortExpression"] = column;

            return sortDirection;
        }

        //Show all the events
        protected void btnShowAllEvents_Click(object sender, EventArgs e)
        {
            ShowAllEvents();
        }

        private void ShowAllEvents()
        {
            // gets all the events and display them in the gridview
            // Set the SQLCommand object's properties for executing a Stored Procedure
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "GetAllEvents";

            DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);
            Session["EventTable"] = myDS.Tables[0];

            gvEvents.DataSource = myDS;
            gvEvents.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchFor = txtSearchEvent.Text;             // string entered by user to search for an event
            if (searchFor != String.Empty)                      // if user entered a word to search for an event following code will run else error will be displayed
            {
                lblDisplay.Visible = false;

                // Set the SQLCommand object's properties for executing a Stored Procedure
                objCommand.CommandType = CommandType.StoredProcedure;
                objCommand.CommandText = "SearchEventByName";
                objCommand.Parameters.AddWithValue("@EventName", searchFor);

                DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);
                Session["EventTable"] = myDS.Tables[0];

                if (myDS.Tables[0].Rows.Count == 0)   // if there were no enteries returned by the database it means there were no events matching the search criteria
                {
                    lblDisplay.Visible = true;
                    lblDisplay.Text = "No Events found";
                }
                gvEvents.DataSource = myDS;
                gvEvents.DataBind();
            }
            else
            {
                lblDisplay.Visible = true;
                lblDisplay.Text = "Please Enter the name of the event you want to search";
            }
        }

        protected void ddlStartDate_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        // Finds out which row was selected and finds the EventID of that particular Event
        protected void gvEvents_RowCommand(Object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            object argument = e.CommandArgument;
            int n;
            bool isNumeric = int.TryParse(argument.ToString(), out n);      // checks if the string is a number or not

            if (isNumeric)
            {
                int rowIndex = Convert.ToInt16(e.CommandArgument);
                int eventID = Convert.ToInt32(gvEvents.DataKeys[rowIndex].Value.ToString());
                Session["EventID"] = eventID;
                Response.Redirect("ManageEvent.aspx");
            }
        }


        // Finds out which row was selected and finds the EventID of that particular Event to delete it
        protected void btnDeleteEvent_Click(object sender, EventArgs e)
        {
            String rowIndex = gvEvents.Rows[gvEvents.SelectedIndex].Cells[0].Text;
        }

        protected void gvEvents_RowDeleting(Object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            // retrieve the row index for which the Update button was clicked
            int rowIndex = e.RowIndex;

            // retrieve the product ID from datakeynames (this property stores the primary key of the grid view without displaying it)
            //int productID = Convert.ToInt32(gvProducts.DataKeys[rowIndex].Value.ToString());
        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            if (ddlEventCategory.SelectedValue != String.Empty && ddlOwnerLastName.SelectedValue != String.Empty)
            {
                string category = ddlEventCategory.SelectedValue;      // string entered by user to search for an event
                string ownerLastName = ddlOwnerLastName.SelectedValue; // string entered by user to search for an event
                if (category != String.Empty && ownerLastName != String.Empty)                      // if user entered a word to search for an event following code will run else error will be displayed
                {
                    lblDisplay.Visible = false;

                    // Set the SQLCommand object's properties for executing a Stored Procedure
                    objCommand.CommandType = CommandType.StoredProcedure;
                    objCommand.CommandText = "SearchEventByCategoryAndOwnerLastName";
                    objCommand.Parameters.AddWithValue("@EventCategory", category);
                    objCommand.Parameters.AddWithValue("@OwnerLastName", ownerLastName);

                    DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);
                    Session["EventTable"] = myDS.Tables[0];

                    if (myDS.Tables[0].Rows.Count == 0)   // if there were no enteries returned by the database it means there were no events matching the search criteria
                    {
                        lblDisplay.Visible = true;
                        lblDisplay.Text = "No Events found";
                    }
                    gvEvents.DataSource = myDS;
                    gvEvents.DataBind();
                }
                else
                {
                    lblDisplay.Visible = true;
                    lblDisplay.Text = "Please select owner's last name to find the events";
                }
            }
            else if (ddlEventCategory.SelectedValue != String.Empty && ddlEventName.SelectedValue != String.Empty)
            {
                string category = ddlEventCategory.SelectedValue;      // string entered by user to search for an event
                string eventName = ddlEventName.Text; // string entered by user to search for an event
                if (category != String.Empty && eventName != String.Empty)                      // if user entered a word to search for an event following code will run else error will be displayed
                {
                    lblDisplay.Visible = false;

                    // Set the SQLCommand object's properties for executing a Stored Procedure
                    objCommand.CommandType = CommandType.StoredProcedure;
                    objCommand.CommandText = "SearchEventByCategoryAndEventName";
                    objCommand.Parameters.AddWithValue("@EventCategory", category);
                    objCommand.Parameters.AddWithValue("@EventName", eventName);

                    DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);
                    Session["EventTable"] = myDS.Tables[0];

                    if (myDS.Tables[0].Rows.Count == 0)   // if there were no enteries returned by the database it means there were no events matching the search criteria
                    {
                        lblDisplay.Visible = true;
                        lblDisplay.Text = "No Events found";
                    }
                    gvEvents.DataSource = myDS;
                    gvEvents.DataBind();
                }
                else            // Should this be removed????????????????????????????????????????????????????
                {
                    lblDisplay.Visible = true;
                    lblDisplay.Text = "Please select owner's last name to find the events";
                }
            }
            else if (ddlOwnerLastName.SelectedValue != String.Empty && ddlEventName.SelectedValue != String.Empty)
            {
                string ownerLastName = ddlOwnerLastName.SelectedValue;      // string entered by user to search for an event
                string eventName = ddlEventName.Text; // string entered by user to search for an event
                if (ownerLastName != String.Empty && eventName != String.Empty)                      // if user entered a word to search for an event following code will run else error will be displayed
                {
                    lblDisplay.Visible = false;

                    // Set the SQLCommand object's properties for executing a Stored Procedure
                    objCommand.CommandType = CommandType.StoredProcedure;
                    objCommand.CommandText = "SearchEventByEventNameAndOwnerLastName";
                    objCommand.Parameters.AddWithValue("@OwnerLastName", ownerLastName);
                    objCommand.Parameters.AddWithValue("@EventName", eventName);

                    DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);
                    Session["EventTable"] = myDS.Tables[0];

                    if (myDS.Tables[0].Rows.Count == 0)   // if there were no enteries returned by the database it means there were no events matching the search criteria
                    {
                        lblDisplay.Visible = true;
                        lblDisplay.Text = "No Events found";
                    }
                    gvEvents.DataSource = myDS;
                    gvEvents.DataBind();
                }
                else            // Should this be removed????????????????????????????????????????????????????
                {
                    lblDisplay.Visible = true;
                    lblDisplay.Text = "Please select owner's last name to find the events";
                }
            }
            else
            {
                // if user selected the event category, then following code runs
                if (ddlEventCategory.SelectedValue != String.Empty)
                {
                    string category = ddlEventCategory.SelectedValue;   // string entered by user to search for an event
                    if (category != String.Empty)                      // if user entered a word to search for an event following code will run else error will be displayed
                    {
                        lblDisplay.Visible = false;

                        // Set the SQLCommand object's properties for executing a Stored Procedure
                        objCommand.CommandType = CommandType.StoredProcedure;
                        objCommand.CommandText = "SearchEventByCategory";
                        objCommand.Parameters.AddWithValue("@EventCategory", category);

                        DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);
                        Session["EventTable"] = myDS.Tables[0];

                        if (myDS.Tables[0].Rows.Count == 0)   // if there were no enteries returned by the database it means there were no events matching the search criteria
                        {
                            lblDisplay.Visible = true;
                            lblDisplay.Text = "No Events found";
                        }
                        gvEvents.DataSource = myDS;
                        gvEvents.DataBind();
                    }
                    else
                    {
                        lblDisplay.Visible = true;
                        lblDisplay.Text = "Please select a category to find the events";
                    }
                }
                else if (ddlOwnerLastName.SelectedValue != String.Empty)
                {
                    string ownerLastName = ddlOwnerLastName.SelectedValue; // string entered by user to search for an event
                    if (ownerLastName != String.Empty)                      // if user entered a word to search for an event following code will run else error will be displayed
                    {
                        lblDisplay.Visible = false;

                        // Set the SQLCommand object's properties for executing a Stored Procedure
                        objCommand.CommandType = CommandType.StoredProcedure;
                        objCommand.CommandText = "SearchEventByOwnerLastName";
                        objCommand.Parameters.AddWithValue("@OwnerLastName", ownerLastName);

                        DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);
                        Session["EventTable"] = myDS.Tables[0];

                        if (myDS.Tables[0].Rows.Count == 0)   // if there were no enteries returned by the database it means there were no events matching the search criteria
                        {
                            lblDisplay.Visible = true;
                            lblDisplay.Text = "No Events found";
                        }
                        gvEvents.DataSource = myDS;
                        gvEvents.DataBind();
                    }
                    else
                    {
                        lblDisplay.Visible = true;
                        lblDisplay.Text = "Please select owner's last name to find the events";
                    }
                }
                else if (ddlEventName.SelectedValue != String.Empty)
                {
                    string eventName = ddlEventName.SelectedValue;      // string entered by user to search for an event
                    if (eventName != String.Empty)                      // if user entered a word to search for an event following code will run else error will be displayed
                    {
                        lblDisplay.Visible = false;

                        // Set the SQLCommand object's properties for executing a Stored Procedure
                        objCommand.CommandType = CommandType.StoredProcedure;
                        objCommand.CommandText = "SearchEventByName";
                        objCommand.Parameters.AddWithValue("@EventName", eventName);

                        DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);
                        Session["EventTable"] = myDS.Tables[0];

                        if (myDS.Tables[0].Rows.Count == 0)   // if there were no enteries returned by the database it means there were no events matching the search criteria
                        {
                            lblDisplay.Visible = true;
                            lblDisplay.Text = "No Events found";
                        }
                        gvEvents.DataSource = myDS;
                        gvEvents.DataBind();
                        ddlEventName.Items.Insert(0, new ListItem(string.Empty, string.Empty));
                    }
                    else
                    {
                        lblDisplay.Visible = true;
                        lblDisplay.Text = "Please select owner's last name to find the events";
                    }
                }

            } //end of main else
        }// end of GO button

        protected void btnDateGo_Click(object sender, EventArgs e)
        {
            // to get the start date
            DateTime startDate = DateTime.Parse(hdnStartDatePicker.Value);

            // to get end date
            DateTime endDate = DateTime.Parse(hdnEndDatePicker.Value);

            // Set the SQLCommand object's properties for executing a Stored Procedure
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "SearchEventByStartDateAndEndDate";
            objCommand.Parameters.AddWithValue("@StartDate", startDate);
            objCommand.Parameters.AddWithValue("@EndDate", endDate);

            DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);
            Session["EventTable"] = myDS.Tables[0];

            if (myDS.Tables[0].Rows.Count == 0)   // if there were no enteries returned by the database it means there were no events matching the search criteria
            {
                lblDisplay.Visible = true;
                lblDisplay.Text = "No Events found";
            }
            gvEvents.DataSource = myDS;
            gvEvents.DataBind();
        }



    }
}
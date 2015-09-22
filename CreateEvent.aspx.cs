using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace AEMS
{
    public partial class createEvent : System.Web.UI.Page
    {
        //connect to database
        Connection objDB = new Connection();
        SqlCommand objCommand = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            Admin admin = new Admin();
            //admin.adminID = 2;

            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //SaveMainEventOwner();
            //SaveEvent();
            SaveLocation();
        }

        public void SaveMainEventOwner()
        {
            string strSQL = "CreateEventOwner";
            objCommand.CommandText = strSQL;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.Parameters.AddWithValue("@OwnerFirstName", txtOwnerFirstName.Text);
            objCommand.Parameters.AddWithValue("@OwnerLastName", txtOwnerLastName.Text);
            objCommand.Parameters.AddWithValue("@OwnerEmail", txtEmail.Text);
            objCommand.Parameters.AddWithValue("@OwnerPhoneNumber", txtPhoneNumber.Text);
            objDB.DoUpdateUsingCmdObj(objCommand);

        }

        public void SaveEvent()
        {
            //string startDate = Request.Form["sdp"];
            string dob = Convert.ToString(Request.Form["sdp"]);
            //string startDate = Request.Form["startdatepicker.UniqueID"];
            DateTime endDate = Convert.ToDateTime(Request.Form["edp"]);
            DateTime startTime = Convert.ToDateTime(Request.Form["st"]);
            DateTime endTime = Convert.ToDateTime(Request.Form["et"]);
            string strSQL = "CreateEvent";
            objCommand.CommandText = strSQL;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.Parameters.AddWithValue("@EventName", txtEventName.Text);
            //objCommand.Parameters.AddWithValue("@StartDate", dob);
            objCommand.Parameters.AddWithValue("@EndDate", endDate);
            objCommand.Parameters.AddWithValue("@StartTime", startTime);
            objCommand.Parameters.AddWithValue("@EndTime", endTime);
            objCommand.Parameters.AddWithValue("@EventCategory", chkAlumniSociety.Text);
            objDB.DoUpdateUsingCmdObj(objCommand);
        }

        public void SaveLocation()
        {
            string strSQL = "CreateLocation";
            objCommand.CommandText = strSQL;
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.Parameters.AddWithValue("@StreetAddress1", txtStreetAddress1.Text);
            objCommand.Parameters.AddWithValue("@StreetAddress2", txtStreetAddress2.Text);
            objCommand.Parameters.AddWithValue("@BuildingName", txtBuildingName.Text);
            objCommand.Parameters.AddWithValue("@RoomNumber", txtRoomNumber.Text);
            objCommand.Parameters.AddWithValue("@City", txtCity.Text);
            objCommand.Parameters.AddWithValue("@State", ddlStates.SelectedItem);
            objCommand.Parameters.AddWithValue("@ZipCode", txtZipCode.Text);
            objCommand.Parameters.AddWithValue("@Country", ddlCountry.SelectedItem);
            objCommand.Parameters.AddWithValue("@TimeZone", ddlTimeZone.SelectedItem);
            objDB.DoUpdateUsingCmdObj(objCommand);
        }

    

        
    }
}
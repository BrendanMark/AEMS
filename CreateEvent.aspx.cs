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
        SqlCommand SaveSponserobjCommand = new SqlCommand();
        SqlCommand SavePanelListobjCommand = new SqlCommand();
        SqlCommand SaveEventLocationCommand = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            Admin admin = new Admin();
            //admin.adminID = 2;

            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SaveMainEventOwner();
            //SaveEvent();
            //SaveLocation();
            SaveSponsor();
            SavePanelList();
            SaveSubEventLocation();
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

        public void SaveSponsor()
        {
            string strSQL = "CreateSponsor";
            SaveSponserobjCommand.CommandText = strSQL;
            SaveSponserobjCommand.CommandType = CommandType.StoredProcedure;
            SaveSponserobjCommand.Parameters.AddWithValue("@SponserName", txtEventSponsorName.Text);
            SaveSponserobjCommand.Parameters.AddWithValue("@CoSponserName", txtEventCoSponsorName.Text);
            SaveSponserobjCommand.Parameters.AddWithValue("@UniversityPartnerName", rdbEventUniversityPartner.SelectedIndex);
            SaveSponserobjCommand.Parameters.AddWithValue("@UniversityPartner", rdbEventCoUniversityPartner.SelectedIndex);
            SaveSponserobjCommand.Parameters.AddWithValue("@SponsorEmail", txtEventSponsorEmail.Text);
            SaveSponserobjCommand.Parameters.AddWithValue("@CoSponsorEmail", txtEventCoSponsorEmail.Text);

            objDB.DoUpdateUsingCmdObj(SaveSponserobjCommand);
        }

        public void SavePanelList()
        {
            string strSQL = "CreatePanellist";
            SavePanelListobjCommand.CommandText = strSQL;
            SavePanelListobjCommand.CommandType = CommandType.StoredProcedure;
            SavePanelListobjCommand.Parameters.AddWithValue("@PanelistFirstName", txtEventPanelistFirstName.Text);
            SavePanelListobjCommand.Parameters.AddWithValue("@PanelistEmail", txtEventPanellistEmail.Text);
            SavePanelListobjCommand.Parameters.AddWithValue("@PanelistPhoneNumber", txtEventPanelistPhoneNumber.Text);
            SavePanelListobjCommand.Parameters.AddWithValue("@PanelistLastName", txtEventPanelistLastName.Text);
            SavePanelListobjCommand.Parameters.AddWithValue("@PanelistRole", txtEventPanelistRole.Text);

            objDB.DoUpdateUsingCmdObj(SavePanelListobjCommand);
        }

        //public void SaveSubEventDetails()
        //{
        //    string strSQL = "CreatePanellist";
        //    SaveEventDetailsCommand.CommandText = strSQL;
        //    SaveEventDetailsCommand.CommandType = CommandType.StoredProcedure;

        //    SaveEventDetailsCommand.Parameters.AddWithValue("@", txtEventPanelistFirstName.Text);
        //    SaveEventDetailsCommand.Parameters.AddWithValue("@PanelistEmail", txtEventPanellistEmail.Text);
        //    SaveEventDetailsCommand.Parameters.AddWithValue("@PanelistPhoneNumber", txtEventPanelistPhoneNumber.Text);
        //    SaveEventDetailsCommand.Parameters.AddWithValue("@PanelistLastName", txtEventPanelistLastName.Text);
        //    SaveEventDetailsCommand.Parameters.AddWithValue("@PanelistRole", txtEventPanelistRole.Text);

        //    objDB.DoUpdateUsingCmdObj(SaveEventDetailsCommand);
        //}



        //public void SaveSubEventOwner()
        //{
        //    string strSQL = "CreateSubEventOwner";
        //    SaveEventOwnerCommand.CommandText = strSQL;
        //    SaveEventOwnerCommand.CommandType = CommandType.StoredProcedure;
        //    SaveEventOwnerCommand.Parameters.AddWithValue("@SubEventName", txtSubOwnerFirstName.Text);
        //    SaveEventOwnerCommand.Parameters.AddWithValue("@SubEventStartDate", txtSubOwnerLastName.Text);
        //    SaveEventOwnerCommand.Parameters.AddWithValue("@SubEventEndDate", txtSubEmail.Text);
        //    SaveEventOwnerCommand.Parameters.AddWithValue("@RegistrationURL", txtSubPhoneNumber.Text);


        //    objDB.DoUpdateUsingCmdObj(SaveEventOwnerCommand);
        //}


        public void SaveSubEventLocation()
        {
            string strSQL = "CreateSubEventLocation";
            SaveEventLocationCommand.CommandText = strSQL;
            SaveEventLocationCommand.CommandType = CommandType.StoredProcedure;
            SaveEventLocationCommand.Parameters.AddWithValue("@SubEventStreetAddress1", txtSubStreetAddress1.Text);
            SaveEventLocationCommand.Parameters.AddWithValue("@SubEventStreetAddress2", txtSubStreetAddress2.Text);
            SaveEventLocationCommand.Parameters.AddWithValue("@SubEventCity", txtSubCity.Text);
            SaveEventLocationCommand.Parameters.AddWithValue("@SubEventState", txtSubState.Text);
            SaveEventLocationCommand.Parameters.AddWithValue("@SubEventZipCode", txtSubZipCode.Text);
            SaveEventLocationCommand.Parameters.AddWithValue("@SubEventBuildingName", txtSubBuildingName.Text);
            SaveEventLocationCommand.Parameters.AddWithValue("@SubEventRoomNumber", txtSubRoomNumber.Text);

            objDB.DoUpdateUsingCmdObj(SaveEventLocationCommand);
        }
    

        
    }
}
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateEvent.aspx.cs" Inherits="AEMS.createEvent" %>

<!DOCTYPE html>

<!-- Latest compiled and minified CSS -->
<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" />
<%--script for pickers to work--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<%--Script for accordion to work--%>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<%--Stylesheet for navigation bar--%>
<link href="navigationBar.css" rel="stylesheet" />

<%--for footer--%>
<link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />

<%--jquery script for country, state, timezone picker--%>
<link href="BootstrapPickerMaster/dist/css/bootstrap-formhelpers.min.css" rel="stylesheet" />
<script src="BootstrapPickerMaster/dist/js/bootstrap-formhelpers.min.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<%--Script for ToolTips--%>
<script>
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>

<%--jquery script, needed for all javascript to work--%>
 <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<%--script to add and remove textboxes using checkboxes--%>
<script>
    $(document).ready(initialize);

    function initialize() {
        $("input#txtGoal").hide();
        $("input#txtVenue").hide();
        $("input#txtEventURL").hide();
        $("input#txtFees").hide();
        $("input#txtAttendeeCapacity").hide();
        $("input#txtPreRegistrationNumber").hide();
        $("input#txtPostRegistrationNumber").hide();
        $("input#txtPlanningTimeline").hide();
        $("input#txtBudget").hide();
        $("input#txtAnticipatedAttendee").hide();
        $("input#txtActualAttendee").hide();
        $("input#txtCostPerAttendee").hide();
        $("input#txtContract").hide();
        $("input#txtNetProfit").hide();
        $("input#txtNetExpense").hide();
        $("input#txtTargetAudience").hide();
        $("input#txtEventStaff").hide();
        $("input#txtProgramParticipant").hide();
        $("input#txtAlumniSpeaker").hide();
        $("input#txtFacultySpeaker").hide();
        $("input#txtPanelMember").hide();
        $("input#txtTourOperator").hide();
        $("input#txtPreEventCorr").hide();
        $("input#txtPostEventCorr").hide();
        $("input#txtEmailBlast").hide();
        $("input#txtEventListing").hide();
        $("input#txtSocialMedia").hide();
        $("input#txtFlyers").hide();
        $("input#txtPosters").hide();
        $("input#txtPostcards").hide();
        $("input#txtElectronicDisplay").hide();
        $("input#txtSignage").hide();
        $("input#txtTechnologySupport").hide();
        $("input#txtAudioVideo").hide();
        $("input#txtDecorations").hide();
        $("input#txtPhotography").hide();
        $("input#txtTechnology").hide();
        $("input#txtGiveaway").hide();
        $("input#txtTravelArrangements").hide();
        $("input#txtParking").hide();
        $("input#txtSecurity").hide();
        $("input#txtRegistrationItem").hide();
        $("input#txtSupplies").hide();
        $("input#txtDebriefMeeting").hide();
        $("input#txtNotes").hide();
        $("input#txtInputManager").hide();
        $("input#txtInputBanner").hide();
        $("input#txtProgramEvaluation").hide();
        $(":checkbox").click(countChecked);
    }

    function countChecked() {
        if ($("input#chkGoal").is(':checked')) {
            $("input#txtGoal").show();
        }
        else {
            $("input#txtGoal").hide();
        }

        if ($("input#chkVenue").is(':checked')) {
            $("input#txtVenue").show();
        }
        else {
            $("input#txtVenue").hide();
        }
        if ($("input#chkEventURL").is(':checked')) {
            $("input#txtEventURL").show();
        }
        else {
            $("input#txtEventURL").hide();
        }
        if ($("input#chkFees").is(':checked')) {
            $("input#txtFees").show();
        }
        else {
            $("input#txtFees").hide();
        }
        if ($("input#chkAttendeeCapacity").is(':checked')) {
            $("input#txtAttendeeCapacity").show();
        }
        else {
            $("input#txtAttendeeCapacity").hide();
        }
        if ($("input#chkPreRegistrationNumber").is(':checked')) {
            $("input#txtPreRegistrationNumber").show();
        }
        else {
            $("input#txtPreRegistrationNumber").hide();
        }
        if ($("input#chkPostRegistrationNumber").is(':checked')) {
            $("input#txtPostRegistrationNumber").show();
        }
        else {
            $("input#txtPostRegistrationNumber").hide();
        }
        if ($("input#chkPlanningTimeline").is(':checked')) {
            $("input#txtPlanningTimeline").show();
        }
        else {
            $("input#txtPlanningTimeline").hide();
        }
        if ($("input#chkAnticipatedAttendee").is(':checked')) {
            $("input#txtAnticipatedAttendee").show();
        }
        else {
            $("input#txtAnticipatedAttendee").hide();
        }
        if ($("input#chkActualAttendee").is(':checked')) {
            $("input#txtActualAttendee").show();
        }
        else {
            $("input#txtActualAttendee").hide();
        }
        if ($("input#chkCostPerAttendee").is(':checked')) {
            $("input#txtCostPerAttendee").show();
        }
        else {
            $("input#txtCostPerAttendee").hide();
        }
        if ($("input#chkContract").is(':checked')) {
            $("input#txtContract").show();
        }
        else {
            $("input#txtContract").hide();
        }
        if ($("input#chkNetProfit").is(':checked')) {
            $("input#txtNetProfit").show();
        }
        else {
            $("input#txtNetProfit").hide();
        }
        if ($("input#chkNetExpense").is(':checked')) {
            $("input#txtNetExpense").show();
        }
        else {
            $("input#txtNetExpense").hide();
        }
        if ($("input#chkTargetAudience").is(':checked')) {
            $("input#txtTargetAudience").show();
        }
        else {
            $("input#txtTargetAudience").hide();
        }
        if ($("input#chkEventStaff").is(':checked')) {
            $("input#txtEventStaff").show();
        }
        else {
            $("input#txtEventStaff").hide();
        }
        if ($("input#chkProgramParticipant").is(':checked')) {
            $("input#txtProgramParticipant").show();
        }
        else {
            $("input#txtProgramParticipant").hide();
        }
        if ($("input#chkAlumniSpeaker").is(':checked')) {
            $("input#txtAlumniSpeaker").show();
        }
        else {
            $("input#txtAlumniSpeaker").hide();
        }
        if ($("input#chkFacultySpeaker").is(':checked')) {
            $("input#txtFacultySpeaker").show();
        }
        else {
            $("input#txtFacultySpeaker").hide();
        }
        if ($("input#chkPanelMember").is(':checked')) {
            $("input#txtPanelMember").show();
        }
        else {
            $("input#txtPanelMember").hide();
        }
        if ($("input#chkTourOperator").is(':checked')) {
            $("input#txtTourOperator").show();
        }
        else {
            $("input#txtTourOperator").hide();
        }
        if ($("input#chkPreEventCorr").is(':checked')) {
            $("input#txtPreEventCorr").show();
        }
        else {
            $("input#txtPreEventCorr").hide();
        }
        if ($("input#chkPostEventCorr").is(':checked')) {
            $("input#txtPostEventCorr").show();
        }
        else {
            $("input#txtPostEventCorr").hide();
        }
        if ($("input#chkEmailBlast").is(':checked')) {
            $("input#txtEmailBlast").show();
        }
        else {
            $("input#txtEmailBlast").hide();
        }
        if ($("input#chkEventListing").is(':checked')) {
            $("input#txtEventListing").show();
        }
        else {
            $("input#txtEventListing").hide();
        }
        if ($("input#chkSocialMedia").is(':checked')) {
            $("input#txtSocialMedia").show();
        }
        else {
            $("input#txtSocialMedia").hide();
        }
        if ($("input#chkFlyers").is(':checked')) {
            $("input#txtFlyers").show();
        }
        else {
            $("input#txtFlyers").hide();
        }
        if ($("input#chkPosters").is(':checked')) {
            $("input#txtPosters").show();
        }
        else {
            $("input#txtPosters").hide();
        }
        if ($("input#chkPostcards").is(':checked')) {
            $("input#txtPostcards").show();
        }
        else {
            $("input#txtPostcards").hide();
        }
        if ($("input#chkElectronicDisplay").is(':checked')) {
            $("input#txtElectronicDisplay").show();
        }
        else {
            $("input#txtElectronicDisplay").hide();
        }
        if ($("input#chkSignage").is(':checked')) {
            $("input#txtSignage").show();
        }
        else {
            $("input#txtSignage").hide();
        }
        if ($("input#chkTechnologySupport").is(':checked')) {
            $("input#txtTechnologySupport").show();
        }
        else {
            $("input#txtTechnologySupport").hide();
        }
        if ($("input#chkAudioVideo").is(':checked')) {
            $("input#txtAudioVideo").show();
        }
        else {
            $("input#txtAudioVideo").hide();
        }
        if ($("input#chkDecorations").is(':checked')) {
            $("input#txtDecorations").show();
        }
        else {
            $("input#txtDecorations").hide();
        }
        if ($("input#chkPhotography").is(':checked')) {
            $("input#txtPhotography").show();
        }
        else {
            $("input#txtPhotography").hide();
        }
        if ($("input#chkTechnology").is(':checked')) {
            $("input#txtTechnology").show();
        }
        else {
            $("input#txtTechnology").hide();
        }
        if ($("input#chkGiveaway").is(':checked')) {
            $("input#txtGiveaway").show();
        }
        else {
            $("input#txtGiveaway").hide();
        }
        if ($("input#chkTravelArrangements").is(':checked')) {
            $("input#txtTravelArrangements").show();
        }
        else {
            $("input#txtTravelArrangements").hide();
        }
        if ($("input#chkParking").is(':checked')) {
            $("input#txtParking").show();
        }
        else {
            $("input#txtParking").hide();
        }
        if ($("input#chkSecurity").is(':checked')) {
            $("input#txtSecurity").show();
        }
        else {
            $("input#txtSecurity").hide();
        }
        if ($("input#chkRegistrationItem").is(':checked')) {
            $("input#txtRegistrationItem").show();
        }
        else {
            $("input#txtRegistrationItem").hide();
        }
        if ($("input#chkSupplies").is(':checked')) {
            $("input#txtSupplies").show();
        }
        else {
            $("input#txtSupplies").hide();
        }
        if ($("input#chkDebriefMeeting").is(':checked')) {
            $("input#txtDebriefMeeting").show();
        }
        else {
            $("input#txtDebriefMeeting").hide();
        }
        if ($("input#chkNotes").is(':checked')) {
            $("input#txtNotes").show();
        }
        else {
            $("input#txtNotes").hide();
        }
        if ($("input#chkInputManager").is(':checked')) {
            $("input#txtInputManager").show();
        }
        else {
            $("input#txtInputManager").hide();
        }
        if ($("input#chkInputBanner").is(':checked')) {
            $("input#txtInputBanner").show();
        }
        else {
            $("input#txtInputBanner").hide();
        }
        if ($("input#chkProgramEvaluation").is(':checked')) {
            $("input#txtProgramEvaluation").show();
        }
        else {
            $("input#txtProgramEvaluation").hide();
        }
    }
</script>
<%--end of script--%>

<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <%--  Code for navigation bar--%>
        <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#"><img src="templeowl.png" height="75" width="75" /></a>
                    <%--<a class="navbar-brand" href="#"><img src="TempleT.png" height="50" width="50" /></a>--%>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-menubuilder">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="Index.aspx">Home</a>
                        </li>
                        <li class="active"><a href="CreateEvent.aspx">Create Event</a>
                        </li>
                        <li><a href="ManageEvent.aspx">View/Manage Event</a>
                        </li>
                        <li><a href="CreateReport.aspx">Create Report</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <%-- Code for navigation bar ends--%>

        <%--Code for instructions and Event Information panel--%>
         <div class="container">
            <h4 class="auto-style3">Information About Creating Event</h4>
            <h4>This page is to Add a New Event. Please fill in these fields below to create a new new event. Then press the Next button to go to the Sub-Event page.</h4>

            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion" href="#collapseOne">Event Information</a>
                    </div>

                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Event Name<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtEventName" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label">Event Start Time<span style="color: red">*</span></label>       
                                    <div class="bfh-timepicker" data-mode="12h" id="starttimepicker">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Event Start Date<span style="color: red">*</span></label>
                                    <div class="bfh-datepicker" id="startdatepicker">
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Event Owner First Name<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtOwnerFirstName" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Event Owner Last Name<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtOwnerLastName" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Email<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Phone Number<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label">Event End Time<span style="color: red">*</span></label>
                                    <div class="bfh-timepicker" data-mode="12h" id="endtimepicker">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label">Event End Date<span style="color: red">*</span></label>
                                    <div class="bfh-datepicker" id="enddatepicker">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Street Address 1<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtStreetAddress1" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Street Address 2<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtStreetAddress2" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Building Name<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtBuildingName" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Room Number<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtRoomNumber" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">City<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">State<span style="color: red">*</span></label>
                                    <div class="bfh-selectbox bfh-states" id="txtState" data-country="US" data-state="PA">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Zip Code<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Country<span style="color: red">*</span></label>
                                    <%--<select class="form-control bfh-countries" data-country="US"></select>--%>
                                    <div class="bfh-selectbox bfh-countries" id="txtCountry" data-country="US" data-flags="true">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Time Zone<span style="color: red">*</span></label>
                                    <div id="countries_timezones2" class="bfh-selectbox bfh-countries" data-country="US">
                                    </div>
                                    <%-- <br>--%>
                                    <div class="bfh-selectbox bfh-timezones" id="txttimezone" data-country="countries_timezones2">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                            </div>
                            <div class="col-md-4">
                            </div>

                           </div>
                        </div>
                    </div>
                </div>
            </div>
  
        <%--Event Sponsor Panel Starts--%>
        <div class="container">
                        <div class="panel-group" id="mainEventSponsorAccordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a data-toggle="collapse" data-parent="#mainEventSponsorAccordion" href="#sponsorsCollapse">Event Sponsors</a>
                                </div>
                                <div id="sponsorsCollapse" class="panel-collapse collapse out">
                                    <div class="panel-body">
                                        <div class="col-md-4">
                                            <label class="control-label">Sponsor Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="SponsorName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Email<span style="color: red">*</span></label>
                                            <asp:TextBox ID="SponsorEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">University Partner?<span style="color: red">*</span></label>
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">Add Sponsor</label><br />
                                            <asp:LinkButton ID="LinkButton1" runat="server" class="glyphicon glyphicon-plus"></asp:LinkButton>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Co-Sponsor Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="CoSponsorName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Email<span style="color: red">*</span></label>
                                            <asp:TextBox ID="CoSponsorEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">University Partner?<span style="color: red">*</span></label>
                                            <asp:RadioButtonList ID="UniversityPartner" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">Add Co-Sponsor</label><br />
                                            <asp:LinkButton ID="LinkButton2" runat="server" class="glyphicon glyphicon-plus"></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div></div>
                        <%--Event Sponsor Panel Ends--%>

        <%--Sub Event Panelist Panel Starts--%>
        <div class="container">
                        <div class="panel-group" id="MainEventPanelist">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    
                                    <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#MainEventPanelist" href="#PanelistCollapse">Event Panelists</a>
                                </div>
                                <div id="PanelistCollapse" class="panel-collapse collapse out">
                                    <div class="panel-body">
                                        <div class="col-md-4">
                                            <label class="control-label">First Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Last Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Email<span style="color: red">*</span></label>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Phone Number<span style="color: red">*</span></label>
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Role<span style="color: red">*</span></label>
                                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
<%--Sub Event Panelist Panel Ends--%>




            <%--Event Detail panel--%>
        <div class="container">
            <div class="panel-group" id="#eventAccordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#eventAccordion" href="#eventCollapse">Event Details</a>
                    </div>
                    <div id="eventCollapse" class="panel-collapse collapse out">
                        <div class="panel-body">

                             <%--Category Panel--%>
                            <div class="col-md-4">
                                <div class="panel-group" id="categoryPanel">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#categoryPanel" href="#categoryCollapse">Event Category</a>
                                        </div>
                                        <div id="categoryCollapse" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                <div class="container"><div class="row"><div class="col-md-6">
                                        <div class="checkbox">
                                            <label>
                                            <asp:CheckBox ID="chkAlumniSociety" runat="server" /> Alumni Society Events</label>
                                        </div>

                                        <div class="checkbox">
                                            <label>
                                                <asp:CheckBox ID="chkAthletics" runat="server" /> Athletics Events</label>
 </div>
   <div class="checkbox">
   <label>
     <asp:CheckBox ID="chkCareer" runat="server" /> Career Events
   </label>
 </div>
   <div class="checkbox">
   <label>
      <asp:CheckBox ID="chkCultural" runat="server" /> Cultural Events
   </label>
 </div>
   <div class="checkbox">
   <label>
      <asp:CheckBox ID="chkEducational" runat="server" /> Educational Events
   </label>
 </div>

   <div class="checkbox">
   <label>
      <asp:CheckBox ID="chkNetworking" runat="server" /> Networking Events
   </label>
 </div>
   <div class="checkbox">
   <label>
      <asp:CheckBox ID="chkRegionalChapter" runat="server" /> Regional Chapter Events
   </label>
 </div>
   <div class="checkbox">
   <label>
      <asp:CheckBox ID="chkReunion" runat="server" /> Reunion Events
   </label>
 </div>
   <div class="checkbox">
   <label>
      <asp:CheckBox ID="chkSchoolandCollege" runat="server" /> School and College Events
   </label>
 </div>
 <div class="checkbox">
   <label>
      <asp:CheckBox ID="chkStudent" runat="server" /> Student Events
   </label>
 </div>

   <div class="checkbox">
   <label>
      <asp:CheckBox ID="chkVolunteer" runat="server" /> Volunteer Events
   </label>
 </div>
   <div class="checkbox">
   <label>
      <asp:CheckBox ID="chkWebinar" runat="server" /> Webinar Events
   </label>
 </div></div></div></div> </div>
                                </div>
                            </div></div></div>
                            <%--Category panel end--%>

                            <%--Event Overview--%>

                            <div class="col-md-4">
                                <div class="panel-group" id="accordion2">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion2" href="#collapsetwo">Event Overview</a>
                                        </div>
                                        <div id="collapsetwo" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkGoal" value="" />Goal</label>
                                                    <input id="txtGoal" type="text" />
                                                </div>


                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkVenue" value="" />Venue</label>
                                                    <input id="txtVenue" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkEventURL" value="" />Event URL</label>
                                                    <input id="txtEventURL" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkFees" value=""/>Fees</label>
                                                    <input id="txtFees" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkAttendeeCapacity" value=""/>Attendee capactiy</label>
                                                    <input id="txtAttendeeCapacity" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPreRegistrationNumber" value=""/>Pre Event Registration Number</label>
                                                    <input id="txtPreRegistrationNumber" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPostRegistrationNumber" value=""/>Post Event Registration Number</label>
                                                    <input id="txtPostRegistrationNumber" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPlanningTimeline" value=""/>Planning timeline</label>
                                                    <input id="txtPlanningTimeline" type="text" />
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <%--Budget Panel--%>
                            <div class="col-md-4">
                                <div class="panel-group" id="accordion3">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">

                                            <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion3" href="#collapseThree">Budget</a>

                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkAnticipatedAttendee" value=""/>Anticipated Attendee</label>
                                                    <input id="txtAnticipatedAttendee" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkActualAttendee" value=""/>Actual Attendee</label>
                                                    <input id="txtActualAttendee" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkCostPerAttendee" value=""/>Overall cost per attendee</label>
                                                    <input id="txtCostPerAttendee" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkContract" value=""/>Contract</label>
                                                    <input id="txtContract" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkNetProfit" value=""/>Net Profit</label>
                                                    <input id="txtNetProfit" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkNetExpense" value=""/>Net Expense</label>
                                                    <input id="txtNetExpense" type="text" />
                                                </div>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="panel-group" id="accordion4">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">

                                            <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion4" href="#collapseFour">Participants / Banner ID #</a>

                                        </div>
                                        <div id="collapseFour" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkTargetAudience" value=""/>Targeted Audience</label>
                                                    <input id="txtTargetAudience" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkEventStaff" value=""/>Event Staff</label>
                                                    <input id="txtEventStaff" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkProgramParticipant" value=""/>Program Participant</label>
                                                    <input id="txtProgramParticipant" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkAlumniSpeaker" value=""/>Alumni Speaker(s)</label>
                                                    <input id="txtAlumniSpeaker" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkFacultySpeaker" value=""/>Faculty Speaker(s)</label>
                                                    <input id="txtFacultySpeaker" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPanelMember" value=""/>Panel Member(s)</label>
                                                    <input id="txtPanelMember" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkTourOperator" value=""/>Tour Operator</label>
                                                    <input id="txtTourOperator" type="text" />
                                                </div>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <%--Marketing panel--%>
                            <div class="col-md-4">
                                <div class="panel-group" id="accordion5">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">

                                            <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion5" href="#collapseFive">Marketing & Communication</a>

                                        </div>
                                        <div id="collapseFive" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPreEventCorr" value=""/>Pre-Event correspondence</label>
                                                    <input id="txtPreEventCorr" type="text" />
                                                </div>
                                                <%--sub fields?--%>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPostEventCorr" value=""/>Post-Event correspondence</label>
                                                    <input id="txtPostEventCorr" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkEmailBlast" value=""/>Email blast</label>
                                                    <input id="txtEmailBlast" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkEventListing" value=""/>Event Listing</label>
                                                    <input id="txtEventListing" type="text" />
                                                </div>
                                              
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkSocialMedia" value=""/>Social Media</label>
                                                    <input id="txtSocialMedia" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkFlyers" value=""/>Flyers</label>
                                                    <input id="txtFlyers" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPosters" value=""/>Posters</label>
                                                    <input id="txtPosters" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPostcards" value=""/>Postcards</label>
                                                    <input id="txtPostcards" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkElectronicDisplay" value=""/>Electronic display</label>
                                                    <input id="txtElectronicDisplay" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkSignage" value=""/>Signage</label>
                                                    <input id="txtSignage" type="text" />
                                                </div>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <%--next row--%>
                            <div class="col-md-4">
                                <div class="panel-group" id="accordion6">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">

                                            <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion6" href="#collapseSix">PreEvent Logistics</a>

                                        </div>
                                        <div id="collapseSix" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkTechnologySupport" value=""/>Technology Support</label>
                                                    <input id="txtTechnologySupport" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkAudioVideo" value=""/>Audio/Video</label>
                                                    <input id="txtAudioVideo" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkDecorations" value=""/>Decortations</label>
                                                    <input id="txtDecorations" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPhotography" value=""/>Photography</label>
                                                    <input id="txtPhotography" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkTechnology" value=""/>Technology</label>
                                                    <input id="txtTechnology" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkGiveaway" value=""/>Giveaways</label>
                                                    <input id="txtGiveaway" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkTravelArrangements" value=""/>Travel Arrangements</label>
                                                    <input id="txtTravelArrangements" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkParking" value=""/>Parking</label>
                                                    <input id="txtParking" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkSecurity" value=""/>Security</label>
                                                    <input id="txtSecurity" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkRegistrationItem" value=""/>Registrations Items</label>
                                                    <input id="txtRegistrationItem" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkSupplies" value=""/>Supplies</label>
                                                    <input id="txtSupplies" type="text" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--post event panel--%>
                            <div class="col-md-4">
                                <div class="panel-group" id="accordion7">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">

                                            <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion7" href="#collapseSeven">Post Event Activities</a>

                                        </div>
                                        <div id="collapseSeven" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkDebriefMeeting" value=""/>Debrief meeting</label>
                                                    <input id="txtDebriefMeeting" type="text" />
                                                </div>

                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkNotes" value=""/>Notes</label>
                                                    <input id="txtNotes" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkInputManager" value=""/>Enter data into Event Manager</label>
                                                    <input id="txtInputManager" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkInputBanner" value=""/>Enter data into Banner</label>
                                                    <input id="txtInputBanner" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkProgramEvaluation" value=""/>Program Evaluation</label>
                                                    <input id="txtProgramEvaluation" type="text" />
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <%--event overview panel end--%>

         <%--Adding Task Panel--%>
        <div class="container">
        <div class="panel-group" id="accordion14">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion14" href="#collapseFourteen">Task</a>
                </div>
                <div id="collapseFourteen" class="panel-collapse collapse out">
                    <div class="panel-body">

                        <%--Start Panel for Catering--%>
                        <div class="panel-group" id="accordion15">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion15" href="#collapseFifteen">Catering</a>
                                </div>
                                <div id="collapseFifteen" class="panel-collapse collapse out">
                                    <div class="panel-body">
                                        <div class="col-md-4">
                                            <label class="control-label">Order Pizza</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="chkPizza" runat="server" /><br />
                                            <label class="control-label">Order Drinks</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="chkDrinks" runat="server" /><br />
                                            <label class="control-label">Order Tables</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="chkTables" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--End Panel For Catering--%>

                        <%--Start Panel for Entertainment--%>
                        <div class="panel-group" id="accordion16">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion16" href="#collapseSixteen">Entertainment</a>
                                </div>
                                <div id="collapseSixteen" class="panel-collapse collapse out">
                                    <div class="panel-body">
                                        <div class="col-md-4">
                                            <label class="control-label">Get Music</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="CheckBox1" runat="server" /><br />
                                            <label class="control-label">Contact Guest Speaker</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="CheckBox2" runat="server" /><br />
                                            <label class="control-label">Get Microphones</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="CheckBox3" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--End Panel For Entertainment--%>
                    </div>
                </div>
            </div>
        </div>
        </div>

          <%--Adding a Sub Event Panel--%>
        <div class ="container">
            <div class="panel-group" id="accordion8">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div id="minusPanel" class="glyphicon glyphicon-minus pull-right" style="cursor: pointer"></div>
                        <div id="addPanel" class="glyphicon glyphicon-plus pull-right" style="cursor: pointer"></div>
                        <a class ="accordion-toggle" data-toggle="collapse" "tooltip" title="Click to Expand or Collapse" data-parent="#accordion8" href="#collapseEight">Sub Event</a>
                    </div>
                    <div id="collapseEight" class="panel-collapse collapse out">
                        <div class="panel-body">
                            <%--Sub Event Detail Panel Starts--%>
                            <div class="panel-group" id="accordion9">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion9" href="#collapseNine">Sub Event Details</a>
                                    </div>
                                    <div id="collapseNine" class="panel-collapse collapse out">
                                        <div class="panel-body">
                                            <div class="col-md-4">
                                                <label class="control-label">Sub Event Name<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtSubEventName" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Start Date<span style="color: red">*</span></label>
                                                <div class="bfh-datepicker" id="subEventStartDate"></div>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Start Time<span style="color: red">*</span></label>
                                                <div class="bfh-timepicker" data-mode="12h" id="subEventStartTime"></div>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Registration URL<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtRegistrationUrl" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">End Date<span style="color: red">*</span></label>
                                                <div class="bfh-datepicker" id="subEventEndDate"></div>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">End Time<span style="color: red">*</span></label>
                                                <div class="bfh-timepicker" data-mode="12h" id="subEventEndTime"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--Sub Event Detail Panel Ends--%>
                        

                        <%--Sub Event Owner Panel Starts--%>
                        <div class="panel-group" id="accordion10">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <asp:LinkButton ID="btnAddAdditionalOwners" runat="server" class="glyphicon glyphicon-plus pull-right"></asp:LinkButton>
                                    <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion10" href="#collapseTen">Sub Event Owner</a>
                                </div>
                                <div id="collapseTen" class="panel-collapse collapse out">
                                    <div class="panel-body">
                                        <div class="col-md-4">
                                            <label class="control-label">Owner First Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubOwnerFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Owner Last Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubOwnerLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">E-mail<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Phone Number<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--Sub Event Owner Panel Ends--%>

                        <%--Sub Event Location Panel Starts--%>
                        <div class="panel-group" id="accordion11">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <asp:LinkButton ID="btnAddSubEventLocation" runat="server" class="glyphicon glyphicon-plus pull-right"></asp:LinkButton>
                                    <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion11" href="#collapseEleven">Sub Event Location</a>
                                </div>
                                <div id="collapseEleven" class="panel-collapse collapse out">
                                    <div class="panel-body">
                                        <div class="col-md-4">
                                            <label class="control-label">Street Address 1<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubStreetAddress1" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Street Address 2<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubStreetAddress2" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">City<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubCity" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">State<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubState" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Zip Code<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubZipCode" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Building Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubBuildingName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Room Number<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubRoomNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--Sub Event Location Panel Ends--%>

                        <%--Sub Event Sponsor Panel Starts--%>
                        <div class="panel-group" id="accordion12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion12" href="#collapseTwelve">Sub Event Sponsors</a>
                                </div>
                                <div id="collapseTwelve" class="panel-collapse collapse out">
                                    <div class="panel-body">
                                        <div class="col-md-4">
                                            <label class="control-label">Sponsor Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSponsorName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Email<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSponsorEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">University Partner?<span style="color: red">*</span></label>
                                            <asp:RadioButtonList ID="rdbSponsorUniversityPartner" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">Add Sponsor</label><br />
                                            <asp:LinkButton ID="btnAddSponsor" runat="server" class="glyphicon glyphicon-plus"></asp:LinkButton>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Co-Sponsor Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtCoSponsorName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Email<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtCoSponsorEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">University Partner?<span style="color: red">*</span></label>
                                            <asp:RadioButtonList ID="rbnCoSponsorUniversityPartner" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">Add Co-Sponsor</label><br />
                                            <asp:LinkButton ID="btnAddCoSponsor" runat="server" class="glyphicon glyphicon-plus"></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--Sub Event Sponsor Panel Ends--%>

                        <%--Sub Event Panelist Panel Starts--%>
                        <div class="panel-group" id="accordion13">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <asp:LinkButton ID="btnAddPanelist" runat="server" class="glyphicon glyphicon-plus pull-right"></asp:LinkButton>
                                    <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#accordion13" href="#collapseThirteen">Sub Event Panelists</a>
                                </div>
                                <div id="collapseThirteen" class="panel-collapse collapse out">
                                    <div class="panel-body">
                                        <div class="col-md-4">
                                            <label class="control-label">First Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtPanelistFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Last Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtPanelistLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Email<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtPanelistEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Phone Number<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtPanelistPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Role<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtPanelistRole" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                            <%--End panel for panelist--%>

                             <%--Adding Task Panel--%>
        <div class="panel-group" id="SubEventTask">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#SubEventTask" href="#SubEventTaskCollapse">Task</a>
                </div>
                <div id="SubEventTaskCollapse" class="panel-collapse collapse out">
                    <div class="panel-body">

                        <%--Start Panel for Catering--%>
                        <div class="panel-group" id="SECatering">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#SECatering" href="#SECateringCollapse">Catering</a>
                                </div>
                                <div id="SECateringCollapse" class="panel-collapse collapse out">
                                    <div class="panel-body">
                                        <div class="col-md-4">
                                            <label class="control-label">Order Pizza</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="CheckBox4" runat="server" /><br />
                                            <label class="control-label">Order Drinks</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="CheckBox5" runat="server" /><br />
                                            <label class="control-label">Order Tables</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="CheckBox6" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--End Panel For Catering--%>

                        <%--Start Panel for Entertainment--%>
                        <div class="panel-group" id="SEEntertainment">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a data-toggle="collapse""tooltip" title="Click to Expand or Collapse" data-parent="#SEEntertainment" href="#SEEntertainmentCollapse">Entertainment</a>
                                </div>
                                <div id="SEEntertainmentCollapse" class="panel-collapse collapse out">
                                    <div class="panel-body">
                                        <div class="col-md-4">
                                            <label class="control-label">Get Music</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="CheckBox7" runat="server" /><br />
                                            <label class="control-label">Contact Guest Speaker</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="CheckBox8" runat="server" /><br />
                                            <label class="control-label">Get Microphones</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="CheckBox9" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--End Panel For Entertainment--%>
                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
                        </div>
                    </div>
            </div>
            <%--Sub Event Panel Ends--%>
        <%--Sub Event Panel Ends--%>
        <div class="container">
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        </div>
       
        <%--footer for pages--%>
        <footer id="#footer">
            <div class="footer-wrap top">
                <div class="region region-footer-top">

                    <div id="block-block-4" class="block block-block">


                        <div class="content">
                            <div itemscope="" itemtype="http://schema.org/EducationalOrganization">
                                <p><span class="h4" itemprop="name">Temple University</span></p>
                                <div itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress">
                                    <p>
                                        <span itemprop="streetAddress">1801 N. Broad Street</span><br />
                                        <span itemprop="addressLocality">Philadelphia</span>, <span itemprop="addressRegion">PA</span> <span itemprop="postalCode">19122</span> <span class="hidden" itemprop="addressCountry">USA<br />
                                            (215) 204-7000</span>
                                    </p>
                                </div>
                            </div>
                            <p></p>
                        </div>
                    </div>

                    <div id="block-menu-menu-info-links" class="block block-menu">
                        <div class="content">
                            <ul class="menu">
                                <li class="first leaf"><a href="https://directory.temple.edu/" class="icons-directory">Cherry and White Directory</a></li>
                                <li class="leaf"><a href="/maps-and-directions" class="icons-map">Maps, Directions &amp; Accommodations</a></li>
                                <li class="last leaf"><a href="/contact" class="icons-phone">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div id="block-block-6" class="block block-block">
                        <div class="content">
                            <ul>
                                <li class="first"><a class="icons-google icon-link" href="https://plus.google.com/+templeuniversity" target="_blank">Google Plus</a></li>
                                <li><a class="icons-facebook icon-link" href="http://www.facebook.com/templeu" target="_blank">Facebook</a></li>
                                <li class="third"><a class="icons-twitter icon-link" href="http://twitter.com/templeuniv" target="_blank">Twitter</a></li>
                                <li><a class="icons-linkedin icon-link" href="http://us.linkedin.com/company/temple-university" target="_blank">LinkedIn.com</a></li>
                                <li><a class="icons-youtube icon-link" href="http://www.youtube.com/TempleUniversity" target="_blank">YouTube</a></li>
                                <li class="last"><a class="icons-instagram icon-link" href="http://instagram.com/templeuniv" target="_blank">Instagram</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-wrap bottom">
                <div class="region region-footer-bottom">

                    <div id="block-menu-menu-tertiary-links" class="block block-menu">


                        <div class="content">
                            <ul class="menu">
                                <li class="first leaf"><a href="https://tuportal.temple.edu">TUPortal</a></li>
                                <li class="leaf"><a href="https://tumail.temple.edu/">TUMail</a></li>
                                <li class="leaf"><a href="/sitemap">Sitemap</a></li>
                                <li class="leaf"><a href="/about/temple-university-accessibility-statement">Accessibility</a></li>
                                <li class="leaf"><a href="http://policies.temple.edu/">Policies</a></li>
                                <li class="leaf"><a href="http://www.temple.edu/hr/departments/employment/jobs_within.htm">Careers at Temple</a></li>
                                <li class="last leaf"><a href="http://www.temple.edu/safety/">Safety</a></li>
                            </ul>
                        </div>
                    </div>
                    <div id="block-block-9" class="block block-block">
                        <div class="content">
                            <p>Copyright 2012-2015, Temple University. All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <%-- end of footer--%>

    </form>
</body>
</html>

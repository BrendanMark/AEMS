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
    <form id="form1" runat="server" onsubmit="onSave()">

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
                        <li><a href="ViewEvent.aspx">View/Manage Event</a>
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
                                    <div class="bfh-timepicker" id="starttimepicker"data-mode="12h">
                                        <%-- <asp:TextBox runat="server" type="text" ID="starttimepicker" name="stp"></asp:TextBox>--%>
                                        <input type="text" name="st" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Event Start Date<span style="color: red">*</span></label>
                                    <div class="bfh-datepicker" id="startdatepicker">
                                        <%--<asp:TextBox ID ="startdatepicker" runat="server" type="text" form="form"></asp:TextBox>--%>
                                        <input  type="text" data-name="sdp" />
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
                                    <div class="bfh-timepicker" id ="endtimepicker"  data-mode="12h">
                                        <%--<asp:TextBox runat="server" type="text" ID="endtimepicker"></asp:TextBox>--%>
                                        <input type="text" name="etp" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label">Event End Date<span style="color: red">*</span></label>
                                    <div class="bfh-datepicker" role="textbox" id="enddatepicker">
                                        <%--<asp:TextBox runat="server" type="text" ID="enddatepicker"></asp:TextBox>--%>
                                        <input type="text" name="edp" />
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
                                    
                                        <asp:DropDownList runat="server" CssClass="form-control input-md" id="ddlStates">
                                            <asp:ListItem Value="AL">Alabama</asp:ListItem>
	<asp:ListItem Value="AK">Alaska</asp:ListItem>
	<asp:ListItem Value="AZ">Arizona</asp:ListItem>
	<asp:ListItem Value="AR">Arkansas</asp:ListItem>
	<asp:ListItem Value="CA">California</asp:ListItem>
	<asp:ListItem Value="CO">Colorado</asp:ListItem>
	<asp:ListItem Value="CT">Connecticut</asp:ListItem>
	<asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	<asp:ListItem Value="DE">Delaware</asp:ListItem>
	<asp:ListItem Value="FL">Florida</asp:ListItem>
	<asp:ListItem Value="GA">Georgia</asp:ListItem>
	<asp:ListItem Value="HI">Hawaii</asp:ListItem>
	<asp:ListItem Value="ID">Idaho</asp:ListItem>
	<asp:ListItem Value="IL">Illinois</asp:ListItem>
	<asp:ListItem Value="IN">Indiana</asp:ListItem>
	<asp:ListItem Value="IA">Iowa</asp:ListItem>
	<asp:ListItem Value="KS">Kansas</asp:ListItem>
	<asp:ListItem Value="KY">Kentucky</asp:ListItem>
	<asp:ListItem Value="LA">Louisiana</asp:ListItem>
	<asp:ListItem Value="ME">Maine</asp:ListItem>
	<asp:ListItem Value="MD">Maryland</asp:ListItem>
	<asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	<asp:ListItem Value="MI">Michigan</asp:ListItem>
	<asp:ListItem Value="MN">Minnesota</asp:ListItem>
	<asp:ListItem Value="MS">Mississippi</asp:ListItem>
	<asp:ListItem Value="MO">Missouri</asp:ListItem>
	<asp:ListItem Value="MT">Montana</asp:ListItem>
	<asp:ListItem Value="NE">Nebraska</asp:ListItem>
	<asp:ListItem Value="NV">Nevada</asp:ListItem>
	<asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	<asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	<asp:ListItem Value="NM">New Mexico</asp:ListItem>
	<asp:ListItem Value="NY">New York</asp:ListItem>
	<asp:ListItem Value="NC">North Carolina</asp:ListItem>
	<asp:ListItem Value="ND">North Dakota</asp:ListItem>
	<asp:ListItem Value="OH">Ohio</asp:ListItem>
	<asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	<asp:ListItem Value="OR">Oregon</asp:ListItem>
	<asp:ListItem Value="PA" selected="True">Pennsylvania</asp:ListItem>
	<asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	<asp:ListItem Value="SC">South Carolina</asp:ListItem>
	<asp:ListItem Value="SD">South Dakota</asp:ListItem>
	<asp:ListItem Value="TN">Tennessee</asp:ListItem>
	<asp:ListItem Value="TX">Texas</asp:ListItem>
	<asp:ListItem Value="UT">Utah</asp:ListItem>
	<asp:ListItem Value="VT">Vermont</asp:ListItem>
	<asp:ListItem Value="VA">Virginia</asp:ListItem>
	<asp:ListItem Value="WA">Washington</asp:ListItem>
	<asp:ListItem Value="WV">West Virginia</asp:ListItem>
	<asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	<asp:ListItem Value="WY">Wyoming</asp:ListItem>
                                        </asp:DropDownList>
                                    
                                   
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
                                    <asp:DropDownList ID="ddlCountry" CssClass="form-control input md" runat="server">
                                        <asp:ListItem Value="AF">Afghanistan</asp:ListItem>
    <asp:ListItem Value="AL">Albania</asp:ListItem>
    <asp:ListItem Value="DZ">Algeria</asp:ListItem>
    <asp:ListItem Value="AS">American Samoa</asp:ListItem>
    <asp:ListItem Value="AD">Andorra</asp:ListItem>
    <asp:ListItem Value="AO">Angola</asp:ListItem>
    <asp:ListItem Value="AI">Anguilla</asp:ListItem>
    <asp:ListItem Value="AQ">Antarctica</asp:ListItem>
    <asp:ListItem Value="AG">Antigua And Barbuda</asp:ListItem>
    <asp:ListItem Value="AR">Argentina</asp:ListItem>
    <asp:ListItem Value="AM">Armenia</asp:ListItem>
    <asp:ListItem Value="AW">Aruba</asp:ListItem>
    <asp:ListItem Value="AU">Australia</asp:ListItem>
    <asp:ListItem Value="AT">Austria</asp:ListItem>
    <asp:ListItem Value="AZ">Azerbaijan</asp:ListItem>
    <asp:ListItem Value="BS">Bahamas</asp:ListItem>
    <asp:ListItem Value="BH">Bahrain</asp:ListItem>
    <asp:ListItem Value="BD">Bangladesh</asp:ListItem>
    <asp:ListItem Value="BB">Barbados</asp:ListItem>
    <asp:ListItem Value="BY">Belarus</asp:ListItem>
    <asp:ListItem Value="BE">Belgium</asp:ListItem>
    <asp:ListItem Value="BZ">Belize</asp:ListItem>
    <asp:ListItem Value="BJ">Benin</asp:ListItem>
    <asp:ListItem Value="BM">Bermuda</asp:ListItem>
    <asp:ListItem Value="BT">Bhutan</asp:ListItem>
    <asp:ListItem Value="BO">Bolivia</asp:ListItem>
    <asp:ListItem Value="BA">Bosnia And Herzegowina</asp:ListItem>
    <asp:ListItem Value="BW">Botswana</asp:ListItem>
    <asp:ListItem Value="BV">Bouvet Island</asp:ListItem>
    <asp:ListItem Value="BR">Brazil</asp:ListItem>
    <asp:ListItem Value="IO">British Indian Ocean Territory</asp:ListItem>
    <asp:ListItem Value="BN">Brunei Darussalam</asp:ListItem>
    <asp:ListItem Value="BG">Bulgaria</asp:ListItem>
    <asp:ListItem Value="BF">Burkina Faso</asp:ListItem>
    <asp:ListItem Value="BI">Burundi</asp:ListItem>
    <asp:ListItem Value="KH">Cambodia</asp:ListItem>
    <asp:ListItem Value="CM">Cameroon</asp:ListItem>
    <asp:ListItem Value="CA">Canada</asp:ListItem>
    <asp:ListItem Value="CV">Cape Verde</asp:ListItem>
    <asp:ListItem Value="KY">Cayman Islands</asp:ListItem>
    <asp:ListItem Value="CF">Central African Republic</asp:ListItem>
    <asp:ListItem Value="TD">Chad</asp:ListItem>
    <asp:ListItem Value="CL">Chile</asp:ListItem>
    <asp:ListItem Value="CN">China</asp:ListItem>
    <asp:ListItem Value="CX">Christmas Island</asp:ListItem>
    <asp:ListItem Value="CC">Cocos (Keeling) Islands</asp:ListItem>
    <asp:ListItem Value="CO">Colombia</asp:ListItem>
    <asp:ListItem Value="KM">Comoros</asp:ListItem>
    <asp:ListItem Value="CG">Congo</asp:ListItem>
    <asp:ListItem Value="CK">Cook Islands</asp:ListItem>
    <asp:ListItem Value="CR">Costa Rica</asp:ListItem>
    <asp:ListItem Value="CI">Cote D'Ivoire</asp:ListItem>
    <asp:ListItem Value="HR">Croatia (Local Name: Hrvatska)</asp:ListItem>
    <asp:ListItem Value="CU">Cuba</asp:ListItem>
    <asp:ListItem Value="CY">Cyprus</asp:ListItem>
    <asp:ListItem Value="CZ">Czech Republic</asp:ListItem>
    <asp:ListItem Value="DK">Denmark</asp:ListItem>
    <asp:ListItem Value="DJ">Djibouti</asp:ListItem>
    <asp:ListItem Value="DM">Dominica</asp:ListItem>
    <asp:ListItem Value="DO">Dominican Republic</asp:ListItem>
    <asp:ListItem Value="TP">East Timor</asp:ListItem>
    <asp:ListItem Value="EC">Ecuador</asp:ListItem>
    <asp:ListItem Value="EG">Egypt</asp:ListItem>
    <asp:ListItem Value="SV">El Salvador</asp:ListItem>
    <asp:ListItem Value="GQ">Equatorial Guinea</asp:ListItem>
    <asp:ListItem Value="ER">Eritrea</asp:ListItem>
    <asp:ListItem Value="EE">Estonia</asp:ListItem>
    <asp:ListItem Value="ET">Ethiopia</asp:ListItem>
    <asp:ListItem Value="FK">Falkland Islands (Malvinas)</asp:ListItem>
    <asp:ListItem Value="FO">Faroe Islands</asp:ListItem>
    <asp:ListItem Value="FJ">Fiji</asp:ListItem>
    <asp:ListItem Value="FI">Finland</asp:ListItem>
    <asp:ListItem Value="FR">France</asp:ListItem>
    <asp:ListItem Value="GF">French Guiana</asp:ListItem>
    <asp:ListItem Value="PF">French Polynesia</asp:ListItem>
    <asp:ListItem Value="TF">French Southern Territories</asp:ListItem>
    <asp:ListItem Value="GA">Gabon</asp:ListItem>
    <asp:ListItem Value="GM">Gambia</asp:ListItem>
    <asp:ListItem Value="GE">Georgia</asp:ListItem>
    <asp:ListItem Value="DE">Germany</asp:ListItem>
    <asp:ListItem Value="GH">Ghana</asp:ListItem>
    <asp:ListItem Value="GI">Gibraltar</asp:ListItem>
    <asp:ListItem Value="GR">Greece</asp:ListItem>
    <asp:ListItem Value="GL">Greenland</asp:ListItem>
    <asp:ListItem Value="GD">Grenada</asp:ListItem>
    <asp:ListItem Value="GP">Guadeloupe</asp:ListItem>
    <asp:ListItem Value="GU">Guam</asp:ListItem>
    <asp:ListItem Value="GT">Guatemala</asp:ListItem>
    <asp:ListItem Value="GN">Guinea</asp:ListItem>
    <asp:ListItem Value="GW">Guinea-Bissau</asp:ListItem>
    <asp:ListItem Value="GY">Guyana</asp:ListItem>
    <asp:ListItem Value="HT">Haiti</asp:ListItem>
    <asp:ListItem Value="HM">Heard And Mc Donald Islands</asp:ListItem>
    <asp:ListItem Value="VA">Holy See (Vatican City State)</asp:ListItem>
    <asp:ListItem Value="HN">Honduras</asp:ListItem>
    <asp:ListItem Value="HK">Hong Kong</asp:ListItem>
    <asp:ListItem Value="HU">Hungary</asp:ListItem>
    <asp:ListItem Value="IS">Icel And</asp:ListItem>
    <asp:ListItem Value="IN">India</asp:ListItem>
    <asp:ListItem Value="ID">Indonesia</asp:ListItem>
    <asp:ListItem Value="IR">Iran (Islamic Republic Of)</asp:ListItem>
    <asp:ListItem Value="IQ">Iraq</asp:ListItem>
    <asp:ListItem Value="IE">Ireland</asp:ListItem>
    <asp:ListItem Value="IL">Israel</asp:ListItem>
    <asp:ListItem Value="IT">Italy</asp:ListItem>
    <asp:ListItem Value="JM">Jamaica</asp:ListItem>
    <asp:ListItem Value="JP">Japan</asp:ListItem>
    <asp:ListItem Value="JO">Jordan</asp:ListItem>
    <asp:ListItem Value="KZ">Kazakhstan</asp:ListItem>
    <asp:ListItem Value="KE">Kenya</asp:ListItem>
    <asp:ListItem Value="KI">Kiribati</asp:ListItem>
    <asp:ListItem Value="KP">Korea, Dem People'S Republic</asp:ListItem>
    <asp:ListItem Value="KR">Korea, Republic Of</asp:ListItem>
    <asp:ListItem Value="KW">Kuwait</asp:ListItem>
    <asp:ListItem Value="KG">Kyrgyzstan</asp:ListItem>
    <asp:ListItem Value="LA">Lao People'S Dem Republic</asp:ListItem>
    <asp:ListItem Value="LV">Latvia</asp:ListItem>
    <asp:ListItem Value="LB">Lebanon</asp:ListItem>
    <asp:ListItem Value="LS">Lesotho</asp:ListItem>
    <asp:ListItem Value="LR">Liberia</asp:ListItem>
    <asp:ListItem Value="LY">Libyan Arab Jamahiriya</asp:ListItem>
    <asp:ListItem Value="LI">Liechtenstein</asp:ListItem>
    <asp:ListItem Value="LT">Lithuania</asp:ListItem>
    <asp:ListItem Value="LU">Luxembourg</asp:ListItem>
    <asp:ListItem Value="MO">Macau</asp:ListItem>
    <asp:ListItem Value="MK">Macedonia</asp:ListItem>
    <asp:ListItem Value="MG">Madagascar</asp:ListItem>
    <asp:ListItem Value="MW">Malawi</asp:ListItem>
    <asp:ListItem Value="MY">Malaysia</asp:ListItem>
    <asp:ListItem Value="MV">Maldives</asp:ListItem>
    <asp:ListItem Value="ML">Mali</asp:ListItem>
    <asp:ListItem Value="MT">Malta</asp:ListItem>
    <asp:ListItem Value="MH">Marshall Islands</asp:ListItem>
    <asp:ListItem Value="MQ">Martinique</asp:ListItem>
    <asp:ListItem Value="MR">Mauritania</asp:ListItem>
    <asp:ListItem Value="MU">Mauritius</asp:ListItem>
    <asp:ListItem Value="YT">Mayotte</asp:ListItem>
    <asp:ListItem Value="MX">Mexico</asp:ListItem>
    <asp:ListItem Value="FM">Micronesia, Federated States</asp:ListItem>
    <asp:ListItem Value="MD">Moldova, Republic Of</asp:ListItem>
    <asp:ListItem Value="MC">Monaco</asp:ListItem>
    <asp:ListItem Value="MN">Mongolia</asp:ListItem>
    <asp:ListItem Value="MS">Montserrat</asp:ListItem>
    <asp:ListItem Value="MA">Morocco</asp:ListItem>
    <asp:ListItem Value="MZ">Mozambique</asp:ListItem>
    <asp:ListItem Value="MM">Myanmar</asp:ListItem>
    <asp:ListItem Value="NA">Namibia</asp:ListItem>
    <asp:ListItem Value="NR">Nauru</asp:ListItem>
    <asp:ListItem Value="NP">Nepal</asp:ListItem>
    <asp:ListItem Value="NL">Netherlands</asp:ListItem>
    <asp:ListItem Value="AN">Netherlands Ant Illes</asp:ListItem>
    <asp:ListItem Value="NC">New Caledonia</asp:ListItem>
    <asp:ListItem Value="NZ">New Zealand</asp:ListItem>
    <asp:ListItem Value="NI">Nicaragua</asp:ListItem>
    <asp:ListItem Value="NE">Niger</asp:ListItem>
    <asp:ListItem Value="NG">Nigeria</asp:ListItem>
    <asp:ListItem Value="NU">Niue</asp:ListItem>
    <asp:ListItem Value="NF">Norfolk Island</asp:ListItem>
    <asp:ListItem Value="MP">Northern Mariana Islands</asp:ListItem>
    <asp:ListItem Value="NO">Norway</asp:ListItem>
    <asp:ListItem Value="OM">Oman</asp:ListItem>
    <asp:ListItem Value="PK">Pakistan</asp:ListItem>
    <asp:ListItem Value="PW">Palau</asp:ListItem>
    <asp:ListItem Value="PA">Panama</asp:ListItem>
    <asp:ListItem Value="PG">Papua New Guinea</asp:ListItem>
    <asp:ListItem Value="PY">Paraguay</asp:ListItem>
    <asp:ListItem Value="PE">Peru</asp:ListItem>
    <asp:ListItem Value="PH">Philippines</asp:ListItem>
    <asp:ListItem Value="PN">Pitcairn</asp:ListItem>
    <asp:ListItem Value="PL">Poland</asp:ListItem>
    <asp:ListItem Value="PT">Portugal</asp:ListItem>
    <asp:ListItem Value="PR">Puerto Rico</asp:ListItem>
    <asp:ListItem Value="QA">Qatar</asp:ListItem>
    <asp:ListItem Value="RE">Reunion</asp:ListItem>
    <asp:ListItem Value="RO">Romania</asp:ListItem>
    <asp:ListItem Value="RU">Russian Federation</asp:ListItem>
    <asp:ListItem Value="RW">Rwanda</asp:ListItem>
    <asp:ListItem Value="KN">Saint K Itts And Nevis</asp:ListItem>
    <asp:ListItem Value="LC">Saint Lucia</asp:ListItem>
    <asp:ListItem Value="VC">Saint Vincent, The Grenadines</asp:ListItem>
    <asp:ListItem Value="WS">Samoa</asp:ListItem>
    <asp:ListItem Value="SM">San Marino</asp:ListItem>
    <asp:ListItem Value="ST">Sao Tome And Principe</asp:ListItem>
    <asp:ListItem Value="SA">Saudi Arabia</asp:ListItem>
    <asp:ListItem Value="SN">Senegal</asp:ListItem>
    <asp:ListItem Value="SC">Seychelles</asp:ListItem>
    <asp:ListItem Value="SL">Sierra Leone</asp:ListItem>
    <asp:ListItem Value="SG">Singapore</asp:ListItem>
    <asp:ListItem Value="SK">Slovakia (Slovak Republic)</asp:ListItem>
    <asp:ListItem Value="SI">Slovenia</asp:ListItem>
    <asp:ListItem Value="SB">Solomon Islands</asp:ListItem>
    <asp:ListItem Value="SO">Somalia</asp:ListItem>
    <asp:ListItem Value="ZA">South Africa</asp:ListItem>
    <asp:ListItem Value="GS">South Georgia , S Sandwich Is.</asp:ListItem>
    <asp:ListItem Value="ES">Spain</asp:ListItem>
    <asp:ListItem Value="LK">Sri Lanka</asp:ListItem>
    <asp:ListItem Value="SH">St. Helena</asp:ListItem>
    <asp:ListItem Value="PM">St. Pierre And Miquelon</asp:ListItem>
    <asp:ListItem Value="SD">Sudan</asp:ListItem>
    <asp:ListItem Value="SR">Suriname</asp:ListItem>
    <asp:ListItem Value="SJ">Svalbard, Jan Mayen Islands</asp:ListItem>
    <asp:ListItem Value="SZ">Sw Aziland</asp:ListItem>
    <asp:ListItem Value="SE">Sweden</asp:ListItem>
    <asp:ListItem Value="CH">Switzerland</asp:ListItem>
    <asp:ListItem Value="SY">Syrian Arab Republic</asp:ListItem>
    <asp:ListItem Value="TW">Taiwan</asp:ListItem>
    <asp:ListItem Value="TJ">Tajikistan</asp:ListItem>
    <asp:ListItem Value="TZ">Tanzania, United Republic Of</asp:ListItem>
    <asp:ListItem Value="TH">Thailand</asp:ListItem>
    <asp:ListItem Value="TG">Togo</asp:ListItem>
    <asp:ListItem Value="TK">Tokelau</asp:ListItem>
    <asp:ListItem Value="TO">Tonga</asp:ListItem>
    <asp:ListItem Value="TT">Trinidad And Tobago</asp:ListItem>
    <asp:ListItem Value="TN">Tunisia</asp:ListItem>
    <asp:ListItem Value="TR">Turkey</asp:ListItem>
    <asp:ListItem Value="TM">Turkmenistan</asp:ListItem>
    <asp:ListItem Value="TC">Turks And Caicos Islands</asp:ListItem>
    <asp:ListItem Value="TV">Tuvalu</asp:ListItem>
    <asp:ListItem Value="UG">Uganda</asp:ListItem>
    <asp:ListItem Value="UA">Ukraine</asp:ListItem>
    <asp:ListItem Value="AE">United Arab Emirates</asp:ListItem>
    <asp:ListItem Value="GB">United Kingdom</asp:ListItem>
    <asp:ListItem Value="US" Selected="true">United States</asp:ListItem>
    <asp:ListItem Value="UM">United States Minor Is.</asp:ListItem>
    <asp:ListItem Value="UY">Uruguay</asp:ListItem>
    <asp:ListItem Value="UZ">Uzbekistan</asp:ListItem>
    <asp:ListItem Value="VU">Vanuatu</asp:ListItem>
    <asp:ListItem Value="VE">Venezuela</asp:ListItem>
    <asp:ListItem Value="VN">Viet Nam</asp:ListItem>
    <asp:ListItem Value="VG">Virgin Islands (British)</asp:ListItem>
    <asp:ListItem Value="VI">Virgin Islands (U.S.)</asp:ListItem>
    <asp:ListItem Value="WF">Wallis And Futuna Islands</asp:ListItem>
    <asp:ListItem Value="EH">Western Sahara</asp:ListItem>
    <asp:ListItem Value="YE">Yemen</asp:ListItem>
    <asp:ListItem Value="YU">Yugoslavia</asp:ListItem>
    <asp:ListItem Value="ZR">Zaire</asp:ListItem>
    <asp:ListItem Value="ZM">Zambia</asp:ListItem>
    <asp:ListItem Value="ZW">Zimbabwe</asp:ListItem>
</asp:DropDownList>
                                    
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Time Zone<span style="color: red">*</span></label>
                                    <asp:DropDownList ID="ddlTimeZone" CssClass="form-control input md" runat="server">
  <asp:ListItem value="-12">(GMT-12:00) International dateline, west</asp:ListItem>
  <asp:ListItem value="-11">(GMT-11:00) Midway Islands, Samoan Islands</asp:ListItem>
  <asp:ListItem value="-10">(GMT-10:00) Hawaii</asp:ListItem>
  <asp:ListItem value="-9">(GMT-09:00) Alaska</asp:ListItem>
  <asp:ListItem value="-8">(GMT-08:00) Pacific Time (USA og Canada); Tijuana</asp:ListItem>
  <asp:ListItem value="-7">(GMT-07:00) Mountain Time (USA og Canada)</asp:ListItem>
  <asp:ListItem value="-6">(GMT-06:00) Central time (USA og Canada)</asp:ListItem>
  <asp:ListItem value="-5" Selected="True">(GMT-05:00) Eastern time (USA og Canada)</asp:ListItem>
  <asp:ListItem value="-4">(GMT-04:00) Atlantic Time (Canada)</asp:ListItem>
  <asp:ListItem value="-3.5">(GMT-03:30) Newfoundland</asp:ListItem>
  <asp:ListItem value="-3">(GMT-03:00) Brasilia</asp:ListItem>
  <asp:ListItem value="-2">(GMT-02:00) Mid-Atlantic</asp:ListItem>
  <asp:ListItem value="-1">(GMT-01:00) Azorerne</asp:ListItem>
  <asp:ListItem value="0">(GMT) Greenwich Mean Time: Dublin, Edinburgh, Lissabon, London</asp:ListItem>
  <asp:ListItem value="1">(GMT+01:00) Amsterdam, Berlin, Bern, Rom, Stockholm, Wien</asp:ListItem>
  <asp:ListItem value="2">(GMT+02:00) Athen, Istanbul, Minsk</asp:ListItem>
  <asp:ListItem value="3">(GMT+03:00) Moscow, St. Petersburg, Volgograd</asp:ListItem>
  <asp:ListItem value="3.5">(GMT+03:30) Teheran</asp:ListItem>
  <asp:ListItem value="4">(GMT+04:00) Abu Dhabi, Muscat</asp:ListItem>
  <asp:ListItem value="4.5">(GMT+04:30) Kabul</asp:ListItem>
  <asp:ListItem value="5">(GMT+05:00) Islamabad, Karachi, Tasjkent</asp:ListItem>
  <asp:ListItem value="5.5">(GMT+05:30) Kolkata, Chennai, Mumbai, New Delhi</asp:ListItem>
  <asp:ListItem value="5.75">(GMT+05:45) Katmandu</asp:ListItem>
  <asp:ListItem value="6">(GMT+06:00) Astana, Dhaka</asp:ListItem>
  <asp:ListItem value="6.5">(GMT+06:30) Rangoon</asp:ListItem>
  <asp:ListItem value="7">(GMT+07:00) Bangkok, Hanoi, Djakarta</asp:ListItem>
  <asp:ListItem value="8">(GMT+08:00) Beijing, Chongjin, SAR Hongkong, Ürümqi</asp:ListItem>
  <asp:ListItem value="9">(GMT+09:00) Osaka, Sapporo, Tokyo</asp:ListItem>
  <asp:ListItem value="9.5">(GMT+09:30) Adelaide</asp:ListItem>
  <asp:ListItem value="10">(GMT+10:00) Canberra, Melbourne, Sydney</asp:ListItem>
  <asp:ListItem value="11">(GMT+11:00) Magadan, Solomon Islands, New Caledonien</asp:ListItem>
  <asp:ListItem value="12">(GMT+12:00) Fiji, Kamtjatka, Marshall Islands</asp:ListItem>
  <asp:ListItem value="13">(GMT+13:00) Nuku'alofa</asp:ListItem>
</asp:DropDownList>

                                   
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
                                            <asp:TextBox ID="txtEventSponsorName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Email<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtEventSponsorEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">University Partner?<span style="color: red">*</span></label>
                                            <asp:RadioButtonList ID="rdbEventUniversityPartner" runat="server" RepeatDirection="Horizontal">
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
                                            <asp:TextBox ID="txtEventCoSponsorName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Email<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtEventCoSponsorEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">University Partner?<span style="color: red">*</span></label>
                                            <asp:RadioButtonList ID="rdbEventCoUniversityPartner" runat="server" RepeatDirection="Horizontal">
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
                                            <asp:TextBox ID="txtEventPanelistFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Last Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtEventPanellistEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Email<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtEventPanelistPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Phone Number<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtEventPanelistLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Role<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtEventPanelistRole" runat="server" CssClass="form-control"></asp:TextBox>
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
                                                    <asp:TextBox id="txtGoal" runat="server" CssClass="form-control input-sm" />
                                                </div>


                                              
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkEventURL" value="" />Event URL</label>
                                                    <asp:TextBox id="txtEventURL" runat="server" CssClass="form-control input-sm" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkFees" value=""/>Fees</label>
                                                    <asp:TextBox id="txtFees" runat="server" CssClass="form-control input-sm" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkAttendeeCapacity" value=""/>Attendee capactiy</label>
                                                    <asp:TextBox id="txtAttendeeCapacity" runat="server" CssClass="form-control input-sm" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPreRegistrationNumber" value=""/>Pre Event Registration Number</label>
                                                    <asp:TextBox id="txtPreRegistrationNumber" runat="server" CssClass="form-control input-sm" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPostRegistrationNumber" value=""/>Post Event Registration Number</label>
                                                    <asp:TextBox id="txtPostRegistrationNumber" runat="server" CssClass="form-control input-sm" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkPlanningTimeline" value=""/>Planning timeline</label>
                                                    <asp:TextBox id="txtPlanningTimeline" runat="server" CssClass="form-control input-sm" />
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
                                            <asp:TextBox ID="txtSubEventSponsorName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Email<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubEventSponsorEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">University Partner?<span style="color: red">*</span></label>
                                            <asp:RadioButtonList ID="rdbSubEventSponsorUniversityPartner" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Text="Yes" Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Text="No" Value="0">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">Add Sponsor</label><br />
                                            <asp:LinkButton ID="btnSubEventAddSponsor" runat="server" class="glyphicon glyphicon-plus"></asp:LinkButton>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Co-Sponsor Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubEventCoSponsorName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Email<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubEventCoSponsorEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <label class="control-label">University Partner?<span style="color: red">*</span></label>
                                            <asp:RadioButtonList ID="rbnSubEventCoSponsorUniversityPartner" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Text="Yes" Value="1">Yes</asp:ListItem>
                                                <asp:ListItem Text="No" Value="0">No</asp:ListItem>
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
                                            <asp:TextBox ID="txtSubEventPanelistFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Last Name<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubEventPanelistLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Email<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubEventPanelistEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Phone Number<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubEventPanelistPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Role<span style="color: red">*</span></label>
                                            <asp:TextBox ID="txtSubEventPanelistRole" runat="server" CssClass="form-control"></asp:TextBox>
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
        <%--Sub Event Panel Ends--%>        <%--Sub Event Panel Ends--%>
        <div class="container">
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"  />
            <%--<asp:Button ID="btnTest" runat="server" OnClick="getdate()" Text="Button" />--%>
            <asp:Label ID="lblTest" runat="server" Text="Label"></asp:Label>

            <%--<script>
                function getdate() {
                    var d = $('enddatepicker').datepicker('getDate');
                }
            </script>--%>
              
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
        <asp:HiddenField ID="hdnEndDatePicker" runat="server" />
        <asp:HiddenField ID="hdnStartDatePicker" runat="server" />
        <asp:HiddenField ID="hdnStartTimePicker" runat="server" />
        <asp:HiddenField ID="hdnEndTimePicker" runat="server" />
    </form>

    <script>
        function onSave()
        {
            copyEndDate();
            copyStartDate();
            copyStartTime();
            copyEndTime();
        }
        function copyEndDate() {
            var value = document.querySelector('#enddatepicker div input').value;
            document.getElementById('hdnEndDatePicker').value = value;
        }   
        function copyStartDate() {
            var value = document.querySelector('#startdatepicker div input').value;
            document.getElementById('hdnStartDatePicker').value = value;

            function copyEndTime() {
                var value = document.querySelector('#endtimepicker div input').value;
                document.getElementById('hdnEndTimePicker').value = value;
            }
            function copyStartTime() {
                var value = document.querySelector('#starttimepicker div input').value;
                document.getElementById('hdnStartTimePicker').value = value;
            }
        }
    </script>
</body>
</html>

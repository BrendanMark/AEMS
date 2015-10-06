<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEventNew.aspx.cs" Inherits="AEMS.ViewEventNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <!-- Latest compiled and minified CSS -->
<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" />

<%--For navigation bar color (cherry)--%>
<link href="navigatioBar.css" rel="stylesheet" />

<%--style sheet reference for footer--%>
<link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />

<%--script for pickers to work--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<%--Script for accordion to work--%>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<%--jquery script for country, state, timezone picker--%>
<link href="BootstrapPickerMaster/dist/css/bootstrap-formhelpers.min.css" rel="stylesheet" />
<script src="BootstrapPickerMaster/dist/js/bootstrap-formhelpers.min.js"></script>

<%--jquery script, needed for all javascript to work--%>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<head runat="server">
    <title></title>

    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>


    <script>
        function onSave() {
            copyStartDate();
            copyEndDate();
        }

        function copyStartDate() {
            var value = document.querySelector('#startdatepicker div input').value;
            document.getElementById('hdnStartDatePicker').value = value;

            //$('#startdatepicker').datepicker({
            //    onClose: function (dateText, inst) {
            //        $('#startdatepicker').datepicker("setDate", new Date(2008, 7, 8));
            //    }
            //});
        }
        function copyEndDate() {
            var value = document.querySelector('#enddatepicker div input').value;
            document.getElementById('hdnEndDatePicker').value = value;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <%--  Code for navigation bar--%>
        <div class="container">

            <!-- Static navbar -->
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">A.E.M.S</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-center">
                            <li><a href="Index.aspx">HOME</a></li>
                            <li><a href="CreateEvent.aspx">CREATE EVENT</a></li>
                            <li><a href="ManageEvent.aspx">MANAGE EVENT</a></li>
                            <li><a href="ViewEvent.aspx">VIEW EVENT</a></li>
                            <li><a href="CreateReport.aspx">CREATE REPORT</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Login.aspx">LOG IN</a></li>

                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
                <!--/.container-fluid -->
            </nav>

        </div>
        <%-- Code for navigation bar ends--%>

        <div class="container">
            <div class="col-lg-12">
                <h4 style="color: #a41e35"><b>Find and select events to export them to Excel Spreadsheet</b></h4>
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="form-inline" style="text-align: left">
                            <div class="col-xs-6"><p>1</p></div>
                            <div class="col-xs-6"><p>2</p></div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="col-lg-4"><p>sdfsdf</p></div>
                        <div class="col-lg-4"><p>sdfsdf2</p></div>
                        <div class="col-lg-4"><p>sdfsdf3</p></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

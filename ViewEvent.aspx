<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEvent.aspx.cs" Inherits="AEMS.ViewEvent" %>

<!-- Latest compiled and minified CSS -->
<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" />

<%--For navigation bar color (cherry)--%>
<link href="navigationBar.css" rel="stylesheet" />

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

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">

    <script>
        function onSave() {
            copyStartDate();
            copyEndDate();
        }
        
        function copyStartDate() {
            var value = document.querySelector('#startdatepicker div input').value;
            document.getElementById('hdnStartDatePicker').value = value;
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
        <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img src="templeowl.png" height="75" width="75" /></a>
                    <%--<a class="navbar-brand" href="#"><img src="TempleT.png" height="50" width="50" /></a>--%>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-menubuilder">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="Index.aspx">Home</a>
                        </li>
                        <li><a href="CreateEvent.aspx">Create Event</a>
                        </li>
                        <li class="active"><a href="ViewEvent.aspx">View/Manage Event</a>
                        </li>
                        <li><a href="CreateReport.aspx">Create Report</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <%-- Code for navigation bar ends--%>

        <%--Code for the panel containing search and gridview--%>
        <div class="container">
            <div class="col-lg-12">
                <h4 style="color: #a41e35"><b>Find and select events to export them to Excel Spreadsheet</b></h4>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title" style="font-weight: bold">Look Up Events</h3>
                    </div>
                    <div class="panel-body">
                        <asp:Label ID="lblDisplay" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
                        <div class="form-inline" style="text-align: center">
                            <asp:Label ID="lblSearch" runat="server" Text="Search By Event Name: " Font-Bold="true"></asp:Label>&nbsp
                            <asp:TextBox ID="txtSearchEvent" runat="server" CssClass="form-control" placeHolder="Search.."></asp:TextBox>
                            &nbsp&nbsp&nbsp&nbsp

                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn-sm btn-primary" OnClick="btnSearch_Click" />
                            <br />
                            <h2 style="font-weight: bold">Or</h2>


                            <div style="border: 0px solid #a41e35; text-align: center">

                                <asp:Label ID="Label5" runat="server" Text="Event Category" Font-Bold="true"></asp:Label>
                                <asp:DropDownList ID="ddlEventCategory" runat="server" Height="20px" DataSourceID="ddlEventTypeDS" DataTextField="EventCategory" DataValueField="EventCategory">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="ddlEventTypeDS" runat="server" ConnectionString="<%$ ConnectionStrings:CIS4396F01ConnectionString %>" SelectCommand="SELECT DISTINCT [EventCategory] FROM [Event]"></asp:SqlDataSource>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                <asp:Label ID="Label1" runat="server" Text="Owner Last Name" Font-Bold="true"></asp:Label>
                                <asp:DropDownList ID="ddlOwnerLastName" runat="server" Height="20px" DataSourceID="ddlOwnerDS" DataTextField="OwnerLastName" DataValueField="OwnerLastName">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="ddlOwnerDS" runat="server" ConnectionString="<%$ ConnectionStrings:CIS4396F01ConnectionString %>" SelectCommand="SELECT DISTINCT [OwnerLastName] FROM [Event_Owner]"></asp:SqlDataSource>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                <asp:Label ID="Label3" runat="server" Text="Event Name" Font-Bold="true"></asp:Label>
                                <asp:DropDownList ID="ddlEventName" runat="server" Height="20px" DataSourceID="ddlEventDS" DataTextField="EventName" DataValueField="EventName">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="ddlEventDS" runat="server" ConnectionString="<%$ ConnectionStrings:CIS4396F01ConnectionString %>" SelectCommand="SELECT DISTINCT [EventName] FROM [Event]"></asp:SqlDataSource>
                                &nbsp;                              

                                <asp:Button ID="btnGo" runat="server" Text="Go" CssClass="btn-sm btn-primary" OnClick="btnGo_Click" />
                                <h2 style="font-weight: bold">Or</h2>
                            </div>

                            <div class="form-inline" style="text-align: center">
                                <asp:Label ID="lblStartDate" runat="server" Text="StartDate" Font-Bold="true"></asp:Label>
                                <div class="bfh-datepicker" id="startdatepicker">
                                    <input type="text" data-name="sdp" />
                                </div>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblEndDate" runat="server" Text="EndDate" Font-Bold="true"></asp:Label>
                                <div class="bfh-datepicker" id="enddatepicker">
                                    <input type="text" data-name="edp" />
                                </div>
                                &nbsp;&nbsp;
                                <asp:Button ID="btnDateGo" runat="server" Text="Go"  OnClientClick="onSave()" CssClass="btn-sm btn-primary" OnClick="btnDateGo_Click" />
                            </div>
                            <br />
                        </div>

                        <%--Grid View for the events--%>
                        <asp:GridView ID="gvEvents" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-condensed" OnRowDataBound="gvEvents_RowDataBound" OnRowCommand="gvEvents_RowCommand" OnRowDeleting="gvEvents_RowDeleting" DataKeyNames="EventID">
                            <Columns>
                                <asp:BoundField HeaderText="EventName" DataField="EventName" SortExpression="EventName" HeaderStyle-BackColor="#830000" HeaderStyle-ForeColor="White" />
                                <asp:BoundField HeaderText="StartDate" DataField="StartDate" SortExpression="StartDate" HeaderStyle-BackColor="#830000" HeaderStyle-ForeColor="White" />
                                <asp:BoundField HeaderText="StartTime" DataField="StartTime" SortExpression="StartTime" HeaderStyle-BackColor="#830000" HeaderStyle-ForeColor="White" />
                                <asp:BoundField HeaderText="OwnerFirstName" DataField="OwnerFirstName" SortExpression="OwnerFirstName" HeaderStyle-BackColor="#830000" HeaderStyle-ForeColor="White" />
                                <asp:BoundField HeaderText="OwnerLastName" DataField="OwnerLastName" SortExpression="OwnerLastName" HeaderStyle-BackColor="#830000" HeaderStyle-ForeColor="White" />

                                <asp:TemplateField HeaderText="View Detail" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#830000" HeaderStyle-ForeColor="White">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btnViewEvent" runat="server"><i class="glyphicon glyphicon-eye-open"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#830000" HeaderStyle-ForeColor="White">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btnDeleteEvent" runat="server" OnClick="btnDeleteEvent_Click"><i class="glyphicon glyphicon-trash"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:CommandField ShowSelectButton="true" ButtonType="Link" Text="<i aria-hidden='true' class='glyphicon glyphicon-eye-open'></i> Select" HeaderText="View Detail" HeaderStyle-BackColor="#830000" HeaderStyle-ForeColor="White"></asp:CommandField>
                                <asp:CommandField ButtonType="Button" ShowDeleteButton="true" HeaderText="Delete" HeaderStyle-BackColor="#830000" HeaderStyle-ForeColor="White" />
                            </Columns>
                        </asp:GridView>

                        <asp:SqlDataSource ID="gvEventsDS" runat="server" ConnectionString="<%$ ConnectionStrings:CIS4396F01ConnectionString %>" SelectCommand="SELECT Event.EventName, Event.StartDate, Event.StartTime, Event_Owner.OwnerFirstName, Event_Owner.OwnerLastName FROM Event INNER JOIN Event_Has_Event_Owner ON Event.EventID = Event_Has_Event_Owner.EventID INNER JOIN Event_Owner ON Event.EventOwnerID = Event_Owner.EventOwnerID AND Event_Has_Event_Owner.EventOwnerID = Event_Owner.EventOwnerID"></asp:SqlDataSource>

                        <br />
                    </div>
                </div>
            </div>
        </div>
        <asp:HiddenField ID="hdnStartDatePicker" runat="server" />
        <asp:HiddenField ID="hdnEndDatePicker" runat="server" />

    </form>
</body>

</html>
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


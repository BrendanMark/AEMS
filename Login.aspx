<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="AEMS.Login"   %>

<!DOCTYPE html>
<!-- Latest compiled and minified CSS -->
<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" />
<link href="bootstrap-3.3.5-dist/css/bootstrap-theme.css" rel="stylesheet" />
<link href="bootstrap-3.3.5-dist/css/bootstrap-theme.min.css" rel="stylesheet" />
<%--for footer--%>
<link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />

<style>
#content {
    width: 400px;
    margin: 0 auto;
    background-color: black;
}
    .auto-style1 {
        color: #000000;
        height: 6px;
    }
    .auto-style2 {
        font-size: medium;
    }
</style>




<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
      

        body {
            background-position: center;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
         <div class="form-signin span4"></div>
              <div class="form-signin span4 text" style="padding: 19px 29px 29px; margin: 3em auto 20px; background-color: #D5D5D5; border: 2px solid #e5e5e5; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05); -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05); box-shadow: 0 1px 2px rgba(0,0,0,.05)">
               <div class="container">
         
                <div class="top-space">
                    
                    &nbsp;<br />
            &nbsp;</div>
            <div style="padding: 0px; width: 460px; height: 460px; background-color: #FFFFFF;" class="center">
                <div class="panel panel-default login-panel">
            <div class="panel-body">
                <img class="center" src="LOGO.PNG" />
                <h3 class="auto-style1"><strong>ALUMNI EVENTS MANAGEMENT SYSTEM</strong></h3>
                  <br />
                <div style="text-align: left;">
                   <h3 class="auto-style1"><strong>Sign In</strong></h3>
                </div>
                <br />
                 <div class="form-group">
                    <label for="txtUsername"><span class="auto-style2">AccessNet USERNAME</span></label>
                    <input name="ctl00$cntSubLayout$txtUsername" type="text" id="cntSubLayout_txtUsername" class="form-control" placeholder="Enter AccessNet username" />
                </div>
                <div class="form-group">
                    <label for="txtPassword">PASSWORD</label>
                    <input name="ctl00$cntSubLayout$txtPassword" type="password" id="cntSubLayout_txtPassword" class="form-control" autocomplete="off" placeholder="Enter password" />
                    <span id="cntSubLayout_lblError" class="help-block"></span>
                </div>
          

               <div style="float: right;">
                    <a href="http://accounts.temple.edu" target="_blank">Forgot password</a>
                    <span>&nbsp;&nbsp;&nbsp;</span>
               <asp:Button ID="btnSubmit" name="ctl00$cntSubLayout$btnLogin" runat="server" class="btn btn-primary" Text="SUBMIT" ForeColor="White" BackColor="#A41E35"   BOLHeight="40px" Width="90px" />
                </div>
            </div>
        </div>
                  </div>
                   </div>
        </div>
       
    </form>
    <br />

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



</body>

</html>

<script type="text/javascript">

    function login_openForgotPassword(url) {

        var passwordWin = window.open(url, 'forgotPasswordWindow', 'menubar=1,resizable=1,scrollbars=1,status=1,width=850,height=480');

        passwordWin.focus();

    }
</script>


<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>

<script type="text/javascript">

    $('document').ready(function () {

        $('myToolTip').tooltip();
    });
</script>

<script type="text/javascript">

    $('document').ready(function () {

        $('toolTip').tooltip();
    });
</script>
<script type="text/javascript">

    $('document').ready(function () {

        $('mToolTip').tooltip();
    });
</script>

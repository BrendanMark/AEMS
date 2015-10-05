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
    background-color: #ffffff;
}
</style>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
</head>
<body>
    <form id="form1" runat="server">


        <div class="container">
            <br />
            <div id="content">
               
            <div style="padding: 0px; width: 450px; height: 430px; background-color: #FFFFFF;" class="center">

                <img class="center" src="LOGO.PNG" />
                <h3 class="auto-style17"><strong>ALUMNI EVENTS&nbsp; MANAGEMENT SYSTEM</strong></h3>

                <h3 class="auto-style18"><strong>USERNAME:</strong></h3>
                <input type="text" class="form-control" placeholder="Username" required="required" />
                <h3 class="auto-style18"><strong>PASSWORD:</strong></h3>
                <input type="password" class="form-control" placeholder="Password" required="required" />

            </div>

                <div class="auto-style19">
                    <span class="forgot"><a href="https://accounts.temple.edu" onclick="login_openForgotPassword('https://accounts.temple.edu');return false;">Forgot Your Password?</a></span>
                </div>
                <a class="btn btn-primary" id="mToolTip" data-toggle="tooltip" title="Click on Login button to Login into the system." href="Index.aspx" style="font-size: medium; height: 34px; width: 113px;"><strong>Login</strong></a>
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

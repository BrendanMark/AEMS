<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AEMS.Index"   %>

<!DOCTYPE html>
<%--for footer--%>
<link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />

<%--Stylesheet for navigation bar--%>
<link href="navigationBar.css" rel="stylesheet" />

<!-- Latest compiled and minified CSS -->
<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" />

<link rel="stylesheet" href="components/bootstrap3/css/bootstrap.css">
	<link rel="stylesheet" href="components/bootstrap3/css/bootstrap-responsive.css">
	<link rel="stylesheet" href="css/calendar.css">

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title>Index Page</title>

<style type="text/css">
		.btn-twitter {
			padding-left: 30px;
			background: rgba(0, 0, 0, 0) url(https://platform.twitter.com/widgets/images/btn.27237bab4db188ca749164efd38861b0.png) -20px 6px no-repeat;
			background-position: -20px 11px !important;
		}
		.btn-twitter:hover {
			background-position:  -20px -18px !important;
		}
	</style>
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
                        <li class="active"><a href="Index.aspx">Home</a>
                        </li>
                        <li><a href="CreateEvent.aspx">Create Event</a>
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


<div class="container">
	<div class="hero-unit">
		<h1>Bootstrap Calendar Demo</h1>

		<p>Bootstrap based full view calendar. Template based.</p>

		<a class="btn btn-inverse" href="https://github.com/Serhioromano/bootstrap-calendar">Fork on GitHub</a>
		<a class="btn" href="index-bs3.html">Use bootstrap 3</a>
		<a href="https://twitter.com/serhioromano" class="btn btn-twitter" data-show-count="false" data-size="large">Follow @serhioromano</a>
		<script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + '://platform.twitter.com/widgets.js'; fjs.parentNode.insertBefore(js, fjs); } }(document, 'script', 'twitter-wjs');
		</script>
	</div>

	<div class="page-header">

		<div class="pull-right form-inline">
			<div class="btn-group">
				<button class="btn btn-primary" data-calendar-nav="prev"><< Prev</button>
				<button class="btn" data-calendar-nav="today">Today</button>
				<button class="btn btn-primary" data-calendar-nav="next">Next >></button>
			</div>
			<div class="btn-group">
				<button class="btn btn-warning" data-calendar-view="year">Year</button>
				<button class="btn btn-warning active" data-calendar-view="month">Month</button>
				<button class="btn btn-warning" data-calendar-view="week">Week</button>
				<button class="btn btn-warning" data-calendar-view="day">Day</button>
			</div>
		</div>

		<h3></h3>
		<small>To see example with events navigate to march 2013</small>
	</div>

	<div class="row">
		<div class="span9">
			<div id="calendar"></div>
		</div>
		<div class="span3">
			<div class="row-fluid">
				<select id="first_day" class="span12">
					<option value="" selected="selected">First day of week language-dependant</option>
					<option value="2">First day of week is Sunday</option>
					<option value="1">First day of week is Monday</option>
				</select>
				<select id="language" class="span12">
					<option value="">Select Language (default: en-US)</option>
					<option value="bg-BG">Bulgarian</option>
					<option value="nl-NL">Dutch</option>
					<option value="fr-FR">French</option>
					<option value="de-DE">German</option>
					<option value="el-GR">Greek</option>
					<option value="hu-HU">Hungarian</option>
					<option value="id-ID">Bahasa Indonesia</option>
					<option value="it-IT">Italian</option>
					<option value="pl-PL">Polish</option>
					<option value="pt-BR">Portuguese (Brazil)</option>
					<option value="ro-RO">Romania</option>
					<option value="es-CO">Spanish (Colombia)</option>
					<option value="es-MX">Spanish (Mexico)</option>
					<option value="es-ES">Spanish (Spain)</option>
					<option value="ru-RU">Russian</option>
					<option value="sk-SR">Slovak</option>
					<option value="sv-SE">Swedish</option>
					<option value="zh-CN">简体中文</option>
					<option value="zh-TW">繁體中文</option>
					<option value="ko-KR">한국어</option>
					<option value="th-TH">Thai (Thailand)</option>
				</select>
				<label class="checkbox">
					<input type="checkbox" value="#events-modal" id="events-in-modal"> Open events in modal window
				</label>
				<label class="checkbox">
					<input type="checkbox" id="format-12-hours"> 12 Hour format
				</label>
				<label class="checkbox">
					<input type="checkbox" id="show_wb" checked> Show week box
				</label>
				<label class="checkbox">
					<input type="checkbox" id="show_wbn" checked> Show week box number
				</label>
			</div>

			<h4>Events</h4>
			<small>This list is populated with events dynamically</small>
			<ul id="eventlist" class="nav nav-list"></ul>
		</div>
	</div>

	<div class="clearfix"></div>
	<br><br>
	<a href="https://github.com/Serhioromano/bootstrap-calendar/issues" class="btn btn-block btn-info">
		<center>
			<span class="lead">
				Submit an issue, ask questions or give your ideas here!<br>
			</span>
			<small>Please do not post your "How to ..." questions in comments. use GitHub issue tracker.</small>
		</center>
	</a>
	<br><br>

	<div id="disqus_thread"></div>
	<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>

	<div class="modal hide fade" id="events-modal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h3>Event</h3>
		</div>
		<div class="modal-body" style="height: 400px">
		</div>
		<div class="modal-footer">
			<a href="#" data-dismiss="modal" class="btn">Close</a>
		</div>
	</div>

	<script type="text/javascript" src="components/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="components/underscore/underscore-min.js"></script>
	<script type="text/javascript" src="components/bootstrap2/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="components/jstimezonedetect/jstz.min.js"></script>
	<script type="text/javascript" src="js/language/bg-BG.js"></script>
	<script type="text/javascript" src="js/language/nl-NL.js"></script>
	<script type="text/javascript" src="js/language/fr-FR.js"></script>
	<script type="text/javascript" src="js/language/de-DE.js"></script>
	<script type="text/javascript" src="js/language/el-GR.js"></script>
	<script type="text/javascript" src="js/language/it-IT.js"></script>
	<script type="text/javascript" src="js/language/hu-HU.js"></script>
	<script type="text/javascript" src="js/language/pl-PL.js"></script>
	<script type="text/javascript" src="js/language/pt-BR.js"></script>
	<script type="text/javascript" src="js/language/ro-RO.js"></script>
	<script type="text/javascript" src="js/language/es-CO.js"></script>
	<script type="text/javascript" src="js/language/es-MX.js"></script>
	<script type="text/javascript" src="js/language/es-ES.js"></script>
	<script type="text/javascript" src="js/language/ru-RU.js"></script>
	<script type="text/javascript" src="js/language/sk-SR.js"></script>
	<script type="text/javascript" src="js/language/sv-SE.js"></script>
	<script type="text/javascript" src="js/language/zh-CN.js"></script>
	<script type="text/javascript" src="js/language/cs-CZ.js"></script>
	<script type="text/javascript" src="js/language/ko-KR.js"></script>
	<script type="text/javascript" src="js/language/zh-TW.js"></script>
	<script type="text/javascript" src="js/language/id-ID.js"></script>
	<script type="text/javascript" src="js/language/th-TH.js"></script>
	<script type="text/javascript" src="js/calendar.js"></script>
	<script type="text/javascript" src="js/app.js"></script>

	<script type="text/javascript">
	    var disqus_shortname = 'bootstrapcalendar'; // required: replace example with your forum shortname
	    (function () {
	        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
	        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
	        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
	    })();
	</script>
</div>
    </form>

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
</body>
</html>

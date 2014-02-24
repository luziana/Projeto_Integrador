<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">  
		<title><g:layoutTitle default="Grails" /></title>
		
	  	<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}"type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
	  
		<!-- Bootstrap core CSS -->
    
		<link href="${resource(dir: 'css', file: 'bootstrap.css')}" rel="stylesheet"/>	
		<link href="${resource(dir: 'css', file: 'modern-business.css')}" rel="stylesheet"/>
		<link href="${resource(dir: 'font-awesome/css', file: 'font-awesome.min.css')}" rel="stylesheet"/>
	   	
		<g:layoutHead />
		<r:require modules="bootstrap" />
		<r:layoutResources />

		<!-- Add custom CSS here -->

 		<g:javascript src="jquery-1.10.2.js" />
		<g:javascript src="modern-business.js" />
			<g:javascript src="ajax.js" />
	
	</head>

	<body>
		<!--<div id="grailsLogo" role="banner"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>-->
		<g:layoutBody />
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display: none;"><g:message code="spinner.alt" default="Loading&hellip;" /></div>
		<g:javascript library="application" />
		<r:layoutResources />
	</body>
	
</html>

<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<title>Login</title>
</head>
<body>
<div id="login" class="content scaffold-create" role="main">
<h1>Login</h1>
<g:form action="login" controller="login" >
<p>${flash.message}</p>
<fieldset class="form">
<div class="fieldcontain required">
<label for="login">
<g:message code="default.login.label"/>
<span class="required-indicator">*</span>
</label>
<g:textField name="login" value="${login?.login}" required="true"/>
</div>
<div class="fieldcontain required">
<label for="senha">
<g:message code="default.password.label"/>
<span class="required-indicator">*</span>
</label>
<g:passwordField name="senha" value="${login?.senha}" required="true"/>
</div>
</fieldset>
<fieldset class="buttons">
<g:submitButton name="loginButton" value="${message(code: 'default.login.button.label')}" />
</fieldset>
</g:form>

<g:link action="showTime" controller="login" elementId="timeLink">Show the Time!</g:link>
<div id="time" />
<r:script>
$("#timeLink").click(function(){
$("#time").load(this.href); return false;
});
</r:script>
</div>
</body>
</html>


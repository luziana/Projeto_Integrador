<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main"/>
<script>
$(document).ready(function() {

preValidateRequiredFields('createAccountForm');

$('#lionname').change(function() {
var dados = {'lionname': $('#lionname').val()};
$.ajax({
url: "${createLink(controller: 'user', action: 'verifyUniqueLionname')}",
type: "POST",
data : dados,
success: function(data) {
markInput('lionname', 'success');
},
error: function(data) {
showMessage(data.responseText, 'danger');
markInput('lionname', 'error');
$('#lionname').val('');
}
});
});

$('#submitButton').click(function() {

var isValid = validateRequiredFields('createAccountForm');

if (isValid) {
var json = JSON.stringify($('#createAccountForm').serializeJSON());
var dados = {'json': json};
$.ajax({
url: "${createLink(controller: 'user', action: 'save')}",
type: "POST",
data : dados,
success: function(data) {
$('#createAccountForm').children().first().attr("disabled", "true");
showMessage(data, 'success');
},
error: function(data) {
showMessage(data.responseText, 'danger');
}
});
}
});

$('#cancelButton').click(function() {
goToPage("${createLink(uri:'/')}");
});
});
</script>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-sm-12 media" style="margin-top: 30px;">
<form role="form" class="form-horizontal" id="createAccountForm">
<fieldset>
<div class="row">
<div class="form-group has-feedback" id="lionnameDiv">
<label for="lionname" class="col-sm-4 control-label"><g:message code="default.lionname.label" /></label>
<div class="col-lg-3">
<input type="text" name="lionname" class="form-control" id="lionname" value="${user.lionname}" required="true">
<span class="glyphicon form-control-feedback hidden"></span>
</div>
</div>
<div class="clearfix"></div>
<div class="form-group has-feedback">
<label for="username" class="col-sm-4 control-label"><g:message code="default.username.label" /></label>
<div class="col-lg-3">
<g:textField name="username" class="form-control" value="${user.password}" required="true" />
<span class="glyphicon form-control-feedback hidden"></span>
</div>
</div>
<div class="clearfix"></div>
<div class="form-group has-feedback">
<label for="password" class="col-sm-4 control-label"><g:message code="default.password.label" /></label>
<div class="col-lg-3">
<input type="password"	name="password" class="form-control" id="password" value="${user.password}" required="true">
<span class="glyphicon form-control-feedback hidden"></span>
</div>
</div>
<div class="clearfix"></div>
<div class="form-group has-feedback">
<div class="col-sm-offset-4 col-sm-10">
<button type="button" class="btn btn-primary" id="submitButton"><g:message code="default.ok.label" /></button>
<button type="button" class="btn btn-default" id="cancelButton"><g:message code="default.button.cancel.label" /></button>
</div>
</div>
</div>
</fieldset>
</form>
</div>
</div>
</div>
</body>
</html>
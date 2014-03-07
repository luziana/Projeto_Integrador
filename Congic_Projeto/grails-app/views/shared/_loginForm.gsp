<g:if test="${!session?.login}">
<g:form name="loginForm" >
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
${flash?.message}
<script>
$("#loginForm").submit(function(e) {
var postData = $('#loginForm').serializeArray();
$.ajax({
url: "${createLink(controller: 'login', action: 'login')}",
type: "POST",
data : postData,
success: function(data) {
$('#loginDiv').html(data);
},
});
e.preventDefault();
return false;
});
</script>
</g:if>
<g:else>
<ul>
<li>Bem vindo, ${session?.login?.login}</li>
<li><a href="#" id="logoutLink"><g:message code="default.logout.label"/></a></li>
</ul>
<script>
$('#logoutLink').click(function() {
$.ajax({
url: "${createLink(controller: 'login', action: 'logout')}",
type: "GET",
success: function(result) {
$("#loginDiv").html(result);
}
});
});
</script>
</g:else>
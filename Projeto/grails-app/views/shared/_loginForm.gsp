<g:if test="${!session?.login}">
<g:form name="loginForm">
<label for="login">
<g:message code="default.login.label"/>
</label>
<g:textField name="login" value="${login?.login}" required="true"/>
<label for="senha">
<g:message code="default.password.label"/>
</label>
<g:passwordField name="senha" value="${login?.senha}" required="true"/>
<g:submitButton name="loginButton" value="${message(code: 'default.ok.button.label')}" />
</g:form>
${flash?.message}
<script>
$("#loginButton").click(function(e) {
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
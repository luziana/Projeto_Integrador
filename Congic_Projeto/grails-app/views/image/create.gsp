<g:form action="save" method="post"  enctype="multipart/form-data">
    <div class="dialog">
        <table>
            <tbody>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="arquivo"><g:message code="image.arquivo.label" default="Arquivo" /></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: imageInstance, field: 'arquivo', 'errors')}">
                        <input type="file" id="arquivo" name="arquivo" />
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="buttons">
        <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
    </div>
</g:form>
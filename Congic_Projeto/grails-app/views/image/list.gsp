<pre><!-- list.gsp -->
<table>
           <thead>
             <tr>
                <g:sortableColumn property="id" title="${message(code: 'image.id.label', default: 'Id')}" />
                <g:sortableColumn property="arquivo" title="${message(code: 'image.arquivo.label', default: 'Arquivo')}" />
             </tr>
           </thead>
           <tbody>
           <g:each in="${imageInstanceList}" status="i" var="imageInstance">
           <tr>
 
              <td><g:link action="show" id="${imageInstance.id}">${fieldValue(bean: imageInstance, field: "id")}</g:link></td>
 
              <td><img src="${resource(dir:'images/uploads/', file: imageInstance.arquivo)}" /></td>
 
           </tr>
        </g:each>
     </tbody>
</table></pre>
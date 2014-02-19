<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
        	<title>Congresso de Iniciação Científica do IFRN</title>
                
    </head>
    <body>
    	
    	<div class="menu">
			<g:render template="/home/menu" />
		</div>
    
    	<div id="apresentacao">

			</br></br></br><center><h2>Apresentação</h2></center></br></br></br>
		
			<g:each in="${apresentacao?}">

			<p>Titulo: ${it.descricaoEvento}</p>
			<p>Descrição: ${it.tematica}</p>
			<p>Descrição: ${it.data}</p>
			<p>Descrição: ${it.historico}</p>
			
			</g:each>
	
		</div>
                
     </body>
     
</html>
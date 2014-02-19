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
    
    	<div id="noticia">

			</br></br></br><center><h2>Hospedagem</h2></center></br></br></br>
		
			<g:each in="${hospedagem?}">

			<p>Hospedagem: ${it.nome_hospedagem}</p>
			<p>Endereço: ${it.endereco}</p>
			<p>Endereço: ${it.contato}</p>
			
			</g:each>
	
		</div>
                
     </body>
     
</html>
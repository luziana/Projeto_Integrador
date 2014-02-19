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
    
    	<div id="tematicas">

			</br></br></br><center><h2>Áreas Temáticas</h2></center></br></br></br>
		
			<g:each in="${tematicas?}">

			<p>Descrição: ${it.descricao}</p>
			<p>Area: ${it.area}</p>
			<p>${it.subArea}</p>

			</g:each>
	
		</div>
                
     </body>
     
</html>
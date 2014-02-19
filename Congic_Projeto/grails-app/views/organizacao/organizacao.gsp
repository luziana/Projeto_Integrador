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
    
    	<div id="organizacao">

			</br></br></br><center><h2>Organização</h2></center></br></br></br>
		
			<g:each in="${organizacao?}">

			<p>Equipe: ${it.equipe}</p>
			<p>Coordenação Pau dos Ferros: ${it.coordenacaoPf}</p>
			<p>Coordenação Natal: ${it.coordenacaoNatal}</p>
			
			</g:each>
	
		</div>
                
     </body>
     
</html>
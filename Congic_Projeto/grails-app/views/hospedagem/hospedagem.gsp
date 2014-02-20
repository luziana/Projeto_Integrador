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
		
		 <!-- Carrossel Imagens-->

			<div id="myCarousel" class="carousel slide">
        	<!-- Indicators -->
        		<ol class="carousel-indicators">
            		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            		<li data-target="#myCarousel" data-slide-to="1"></li>
            		<li data-target="#myCarousel" data-slide-to="2"></li>
       			 </ol>

       		<!-- Wrapper for slides -->
       		<div class="carousel-inner">
            	<div class="item active">
                	<div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide One');"></div>
                		<div class="carousel-caption">
                   			<h1>Modern Business - A Bootstrap 3 Template</h1>
                		</div>
            		</div>
            <div class="item">
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Two');"></div>
                <div class="carousel-caption">
                    <h1>Ready to Style &amp; Add Content</h1>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Three');"></div>
                <div class="carousel-caption">
                    <h1>Additional Layout Options at <a href="http://startbootstrap.com">http://startbootstrap.com</a>
                    </h1>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </div>
    
    	<div id="noticia">

			</br></br></br><center><h2>Hospedagem</h2></center></br></br></br>
		
			<g:each in="${hospedagem?}">

			<p>Hospedagem: ${it.nome_hospedagem}</p>
			<p>Endereço: ${it.endereco}</p>
			<p>Endereço: ${it.contato}</p>
			
			</g:each>
	
		</div>
		
		<!-- /.container -->
	
	<div class="container">

        <hr>

        <footer>
            <div class="row">
                <div class="col-lg-12">
                	<p>IFRN, Campus Pau dos Ferros</p>
                    <p>Copyright &copy; Company 2014</p>
                </div>
            </div>
        </footer>

    </div>
    
        <!-- /.container -->
                
     </body>
     
</html>
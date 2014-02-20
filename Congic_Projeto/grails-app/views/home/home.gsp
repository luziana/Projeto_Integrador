<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main" />
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
                	<div class="fill" style="background-image:url('http://1.bp.blogspot.com/-RDH8oPtxbHE/UCRrcWCHWnI/AAAAAAAAOZg/WXZ5g42fnfE/s1600/FOTO+OBELISCO+PAU+DOS+FERROS(1).jpg');"></div>
                		<div class="carousel-caption">
                   			
                		</div>
            		</div>
            <div class="item">
                <div class="fill" style="background-image:url('http://upload.wikimedia.org/wikipedia/commons/4/4e/Pau_dos_ferros_ifrn_campus.jpg');"></div>
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('web-app/images/Congic.jpg');"></div>
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
		
		 <!-- Listagem de Notícias-->
		 
		   <div class="section">

        <div class="container">

            <div class="row">
            
            <g:each in="${noticias?}">
				<div id="noticia" class="col-lg-4 col-md-4">		
					<h3><i class="fa fa-check-circle"></i>${it.titulo}</h3>
					<p>${it.descricao}<p>
					<p>${it.link}<p>
				</div>
			</g:each>
                           
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

    </div>
	
	    <!-- /.container -->
	
	<div class="container">

        <hr>

        <footer>
            <div class="row">
                <div class="col-lg-12">
                
                <p>Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Norte</p>              
                	<p>Campus Pau dos Ferros</p>
                    <p>Copyright &copy; Company 2014</p>
                </div>
            </div>
        </footer>

    </div>
    
        <!-- /.container -->

	</body>
</html>
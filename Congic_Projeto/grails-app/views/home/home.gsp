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
                	<div class="fill" style="background-image:url('http://1.bp.blogspot.com/-xaBeblNxQOc/T66QzZIw1UI/AAAAAAAAeZg/AhlWCj5zTLg/s1600/_DSC1010.JPG');"></div>
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
				</div>
			</g:each>
                           
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

    </div>
    
    
     <!-- /.section-colored -->

    <div class="section">

        <div class="container">

            <div class="row">
                <div class="col-lg-12 text-center">
                    <%--<h2>Display Some Work on the Home Page Portfolio</h2>--%>
                    <hr>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <a href="${createLink(controller:'apresentacao', action:'apresentacao')}"><h4><center>O Evento...</center></h4>
                    	<img class="img-responsive img-home-portfolio" src="http://www2.ifrn.edu.br/congic2013/wp-content/uploads/2013/04/slideshow_01-332x205.jpg"/>
                    </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <a href="${createLink(controller:'localizacao', action:'index')}"><h4><center>Conhecendo Pau dos Ferros...</center></h4>
                        <img class="img-responsive img-home-portfolio" src="http://1.bp.blogspot.com/-xaBeblNxQOc/T66QzZIw1UI/AAAAAAAAeZg/AhlWCj5zTLg/s1600/_DSC1010.JPG"/>
                    </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <a href="${createLink(controller:'hospedagem', action:'hospedagem')}"><h4><center>Hospedagens...</center></h4>
                        <img class="img-responsive img-home-portfolio" src="http://1.bp.blogspot.com/-U28bybjg4fM/UvPeMg6QvlI/AAAAAAAABzY/SS_FDw99Xqo/s1600/hotel.jpg">
                    </a>
                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

    </div>
    <!-- /.section -->
    
	
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
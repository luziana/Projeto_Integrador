<html>
<head>
<meta name="layout" content="main"/>
                <title>Congresso de Iniciação Científica do IFRN - Programação</title>
               
</head>
<body>

	<div class="menu">
				<g:render template="/home/menu" model="[menu: menu]"/>
	</div>

	
	 <!-- Carrossel Imagens-->

			<div id="myCarousel" class="carousel slide">
        	<!-- Indicators -->
        		<ol class="carousel-indicators">
            		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            		<li data-target="#myCarousel" data-slide-to="1"></li>
            		<li data-target="#myCarousel" data-slide-to="2"></li>
       			 </ol>

       		<div class="carousel-inner">
            	<div class="item active">
                	<div class="fill" style="background-image:url('#');">
                	 <img src="${createLink (controller:'image', action:'showImage', id:"${arquivo?.id=1}")}">
                	</div>
                		<div class="carousel-caption">
                   			<h1></h1>
                		</div>
            		</div>
            <div class="item">
                <div class="fill" style="background-image:url('#');">
                	 <img src="${createLink (controller:'image', action:'showImage', id:"${arquivo?.id=2}")}">
                </div>
                <div class="carousel-caption">
                    <h1></h1>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('#');">
                	 <img src="${createLink (controller:'image', action:'showImage', id:"${arquivo?.id=3}")}">
                </div>
                <div class="carousel-caption">
                    <h1></h1>
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
    
    
     <!-- Titulo da Página -->
    
    <div class="container">
            <div class="row">
                <g:each in="${tituloPaginas?}">
                <div class="col-lg-12">
                <h1 class="page-header">${it.tituloProgramacao} 
                    <small>${it.subtituloProgramacao}</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="${createLink(controller:'home', action:'home')}">Início</a>
                    </li>
                    <li class="active">Programação</li>
                </ol>
                </div>
                 </g:each>
            </div>
            
             <!-- Lado direito Informações -->
            
            <div class="row">    
            
            
             <div class="col-lg-8">
                      
                 <g:each in="${evento?}">
            		<div class="col-lg-4 col-md-4">		
						<h3><p>${it.data}</p><br/></h3>
						<g:each in="${evento.minicurso?}" var="minicurso">
						<h4>Minicurso</h4><br/>
						<h5>Titulo:</h5><br/>
						<p>${minicurso.nome[0]}</p>
						<br/><h5>Horario:</h5><br/>
						<p>${minicurso.hora[0]}</p>
						<br/><h5>Ministrante:</h5><br/>
						<p>${minicurso.ministrante[0]}</p>
							<br/><h5>Descrição:</h5><br/>
						<p>${minicurso.descricao[0]}</p>
						
						</g:each>
							<g:each in="${evento.palestra?}" var="palestra">
						<br/><h3>Palestra</h3><br/>
						<h5>Titulo:</h5><br/>
						<p>${palestra.nome[0]}</p>
						<br/><h5>Horario:</h5><br/>
						<p>${palestra.hora[0]}</p>
						<br/><h5>Ministrante:</h5><br/>
						<p>${palestra.ministrante[0]}</p>
						<br/><h5>Descrição:</h5><br/>
						<p>${palestra.descricao[0]}</p>
						</g:each>
					</div>
               	</g:each>
               
            </div>
            
            
            <!-- Lado esquerdo -->

            <div class="col-lg-4">
                <div class="well">
                    <h4>Blog Search</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                    <!-- /input-group -->
                </div>
                
                <div class="well">
                    <h4><p>Redes Sociais</p></h4>
                			<ul class="list-unstyled list-inline list-social-icons">
                    			<li class="tooltip-social facebook-link"><a href="#facebook-profile" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook-square fa-3x"></i></a>
                    			</li>
                    			<li class="tooltip-social linkedin-link"><a href="#linkedin-profile" data-toggle="tooltip" data-placement="top" title="LinkedIn"><i class="fa fa-linkedin-square fa-3x"></i></a>
                   				</li>
                    			<li class="tooltip-social twitter-link"><a href="#twitter-profile" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter-square fa-3x"></i></a>
                    			</li>
                    			<li class="tooltip-social google-plus-link"><a href="#google-plus-profile" data-toggle="tooltip" data-placement="top" title="Google+"><i class="fa fa-google-plus-square fa-3x"></i></a>
                    			</li>
               				</ul>
                </div>
                
                <!-- /well -->
                <div class="well">
                    <h4>Popular Blog Categories</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#dinosaurs">Dinosaurs</a>
                                </li>
                                <li><a href="#spaceships">Spaceships</a>
                                </li>
                                <li><a href="#fried-foods">Fried Foods</a>
                                </li>
                                <li><a href="#wild-animals">Wild Animals</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#alien-abductions">Alien Abductions</a>
                                </li>
                                <li><a href="#business-casual">Business Casual</a>
                                </li>
                                <li><a href="#robots">Robots</a>
                                </li>
                                <li><a href="#fireworks">Fireworks</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /well -->
                <div class="well">
                    <h4>Side Widget Well</h4>
                    <p>Bootstrap's default well's work great for side widgets! What is a widget anyways...?</p>
                </div>
                <!-- /well -->
            </div>
        </div>

    </div>
  
<!-- /.container -->
	
	<div class="container">

        <hr>

        <footer>
            <div class="row">
                <div class="col-lg-12">
                	 <p>Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Norte</p>
                	<p>IFRN, Campus Pau dos Ferros</p>
                    <p>Copyright &copy; Company 2014</p>
                </div>
            </div>
        </footer>

    </div>
    
        <!-- /.container -->

</body>
</html>
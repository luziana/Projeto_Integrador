<nav id="menu" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- You'll want to use a responsive image option so this logo looks good on devices - I recommend using something like retina.js (do a quick Google search for it and you'll find it) -->
                <a class="navbar-brand" href="http://portal.ifrn.edu.br/campus/paudosferros">Campus Pau dos Ferros</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="${createLink(controller:'home', action:'home')}">Início</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Evento<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="${createLink(controller:'apresentacao', action:'apresentacao')}">Apresentação</a></li>
					    	<li><a href="${createLink(controller:'organizacao', action:'organizacao')}">Organização</a></li>
					      	<li><a href="${createLink(controller:'localizacao', action:'index')}">Localização</a></li>
					    	<li><a href="${createLink(controller:'hospedagem', action:'hospedagem')}">Hospedagem</a></li>
                        </ul>
                    </li>
                    <li><a href="${createLink(controller:'tematicas', action:'tematicas')}">Áreas Temáticas</a></li>
				  
				    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Submissão de Artigos <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">1</a>
                            </li>
                            <li><a href="#">2</a>
                            </li>
                            <li><a href="#">3</a>
                            </li>
                        </ul>
			
				    <li><a href="${createLink(controller:'programacao', action:'programacao')}">Programação</a></li>
				    <li><a href="#">Mostra Tecnológica</a></li>
                    </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
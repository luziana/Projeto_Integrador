<html>

<head>
 <meta name="layout" content="main"/>
<style type="text/css" media="screen">
                        body{
                        background-color:#EDEDED;
                        }
                 #menu ul {
                    padding:0px;
                    margin:0px;
                    background-color:#EDEDED;
                    list-style:none;
                    }
                    #menu ul li {
                    display: inline; }
                    #menu ul li a {
                    padding: 2px 10px;
                    display: inline-block;
     
                    /* visual do link */
                    background-color:#EDEDED;
                    color: #333;
                    text-decoration: none;
                    border-bottom:3px solid #EDEDED;
                    }
                #menu ul li a:hover {
                    background-color:#D6D6D6;
                    color: #6D6D6D;
                    border-bottom:3px solid #EA0000;
                    }
                </style>
                </head>
                <body>
                 <nav id="menu">
    <ul>
    <li><a href="${createLink(controller:'home', action:'inicio')}">Inicio</a></li>
    <li><a href="${createLink(controller:'home', action:'evento')}">Evento</a></li>
    <li><a href="#">Áreas Temáticas</a></li>
    <li><a href="#">Submissão de Artigos</a></li>
    <li><a href="#">Programação</a></li>
    <li><a href="#">Mostra Tecnológica</a></li>
    
    </ul>
    </nav>
    
    <h1>Inicio</h1>

</body>





</html>
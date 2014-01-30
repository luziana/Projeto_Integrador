<html>
        <head>
        <meta name="layout" content="main"/>
        <titulo></titulo>
        <style type="text/css">
                label{
                        float:left;
                        width:65px;
                        }</style>
                        
        </head>
        <body>
        
                ${flash.message}
                
                <g:form action="login" style="padding-left:200px">
                <div style="width:220px">
                <label>Nome:</label><input type="text" name="username"/>
                <label>Senha:</label><input type="password" name="password"/>
                <label>&nbsp;</label><input type="submit" value="Login"/>
                                
                </div>
        </g:form>
        
        </body>
</html>
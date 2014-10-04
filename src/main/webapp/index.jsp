<%@ page language="java" pageEncoding="utf8" contentType="text/html;charset=UTF-8" %>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>IMC Soft</title>
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="estilos.css">      
    </head>
    <body>
        <br><div class="container" align="center">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h2><span class="glyphicon glyphicon-cloud"></span><b> IMCSoft</b></h2>
                        <h6>Calculo de IMC</h6>
                    </div>
                    <div class="panel-body">
                        <form accept-charset="UTF-8" role="form" method="post" action="servletcontrole">
                            <fieldset>
                                <div class="form-group">
                                    <label>Nome</label>
                                    <input class="form-control input" name="nome" id="nome" type="text" value=${param.nome}>
                                </div>

                                <div class="form-group">
                                    <label>Peso(kg)</label>
                                    <input class="form-control input numero" name="peso" id="peso" type="text" value=${param.peso}>
                                </div>


                                <div class="form-group">
                                    <label>Altura(cm)</label>  
                                    <input class="form-control input " name="altura" id="altura" type="text" value=${param.altura}>
                                </div>
    
    <%
    String resultado = (String) request.getAttribute("resultado");  
    if (resultado != null ) {
       %><div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span>              <span class="sr-only">Fechar</span></button>
            <h6>${resultado}</h6>    
        </div> 
        <% } %>                            
                                                            
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                    	<button class="btn btn-lg btn-success btn-block" name="acao"value="calcular">Calcular IMC</button>
                                        
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <input class="btn btn-lg btn-info btn-block" type="reset" value="Limpar">
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <h6 align="center">Bootstrap + JSP + Servlets - <a href="http://www.kelvinsantiago.com.br" target="_blank">Kelvin Santiago</a></h6>
                </div>
            </div>
        </div>
        
    
        
        


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        </body>
        </html>
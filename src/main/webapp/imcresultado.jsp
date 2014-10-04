<!DOCTYPE html>
<%@page import="java.text.DecimalFormat"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
    <head>
        <title>Calculadora Resultado JSP</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
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
    <form accept-charset="UTF-8" role="form">
    <fieldset>
    <h1>Resultado</h1>
    <h4><%
            String resultado = (String) request.getAttribute("resultado");   
           
        String nome = request.getParameter("nome");
        String peso = request.getParameter("peso");
        String altura = request.getParameter("altura");
        float pesoFloat= Float.parseFloat(peso);
        float alturaFloat = Float.parseFloat(altura);

        float quadrado = (alturaFloat * alturaFloat);
        float calculo = (pesoFloat/quadrado);        

        DecimalFormat df = new DecimalFormat("0.00");

        if(calculo<18.5){
            out.print("Olá "+nome+" você está magro! Seu indice IMC é = "+calculo);
        }
        else if(calculo>=18.5 && calculo<24.9){
            out.print("Olá "+nome+" você está com o peso normal! Seu indice IMC é = "+df.format(calculo));
        }
        else if(calculo>=25 && calculo<29.9) {
            out.print("Olá "+nome+" você está sobre peso! Seu indice IMC é = "+df.format(calculo));
        }
        else if(calculo>=30 && calculo<39.9) {
            out.print("Olá "+nome+" você está com obesidade! Seu indice IMC é = "+df.format(calculo));
        }
        else if (calculo>40){
            out.print("Olá "+nome+" você está com obesidade grave! Seu indice IMC é = "+df.format(calculo));
        }
    %></h4>
    
    <div class="row">
        <a class="btn btn-success btn-block" href="index.html">Voltar</a>
    </div>
    </fieldset>
    </form>
</div>
<h6 align="center">Bootstrap + JSP - <a href="http://www.kelvinsantiago.com.br" target="_blank">Kelvin Santiago</a></h6>
</div>
</div>
</div>
</body>
</html>
<%-- 
    Document   : exercicio5
    Created on : 06/03/2019, 14:04:43
    Author     : 80130917
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Matriz</title>
    </head>
    <body>
        <h1>Valor da determinante de uma matriz 3x3</h1>

        <form action="exercicio5" method="post">    
            Digite os valores numéricos da Matriz abaixo (3x3):<br /><br />
            <input type="number" name="A11" size="3" height="100"/> 
            <input type="number" name="A12" size="3" /> 
            <input type="number" name="A13" size="3" /><br /><br />
            <input type="number" name="B21" size="3" /> 
            <input type="number" name="B22" size="3" /> 
            <input type="number" name="B23" size="3" /><br /><br />
            <input type="number" name="C31" size="3"/>
            <input type="number" name="C32" size="3" /> 
            <input type="number" name="C33" size="3" /><br /><br />

            <input type="submit" value="Calcular Determinante"/><br /><br /><hr> 

        </form> 

        <%
            String determinante = (String) request.getAttribute("determinante");
            out.print("O determinante da matriz apresentada é: " + determinante);
        %>
        <hr>


    </body>
</html>

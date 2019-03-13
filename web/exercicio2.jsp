<%-- 
    Document   : newjspexer
    Created on : 01/03/2019, 11:42:56
    Author     : 80130917
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Equação de 2º grau</title>
    </head>
    <body>
        <h1>Cálculo da equação de segundo grau</h1>

        <form action="exercicio2" method="POST">

            Digite o valor de a:
            <input type="number" name="a"/><br><br>
            Digite o valor de b: 
            <input type="number" name="b"/><br><br>
            Digite o valor de c:
            <input type="number" name="c"/><br><br>

            <br />
            <input type="submit" value="Calcular" /><br><br>
            <br />
        </form>


        <%
            String resultado1 = (String) request.getAttribute("x1");

            String resultado2 = (String) request.getAttribute("x2");%>

        <% if (resultado1 != null) {%>
        <% out.println("O resultado de x1 é " + resultado1); %>
        <br><br>
        <%  out.println("O resultado de x2 é " + resultado2);%>
        <% } else {%>
        <%  out.println("Não é possível mostrar o resultado");%>
        <%   }%>

    </body>
</html>

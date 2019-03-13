<%-- 
    Document   : exercio3
    Created on : 01/03/2019, 14:39:50
    Author     : 80130917
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo da hipotenusa</title>
    </head>
    <body>
        <h1>Cálculo da hipotenusa de um triângulo retângulo</h1>
        <form action="exercicio3" method="POST">

            Digite o valor do primeiro cateto:
            <input type="number" name="cateto1"/><br><br>
            Digite o valor do segundo cateto: 
            <input type="number" name="cateto2"/><br><br>

            <br />
            <input type="submit" value="Calcular hipotenusa" /><br><br>
            <br />

        </form>

        <%
              String resultado1 = (String) request.getAttribute("hipotenusa");
              if (resultado1 != null) {%>
        <% out.println("O valor da hipotenusa é: " + resultado1); %>

        <% } else {%>
        <%  out.println("Não é possível mostrar o resultado");%>
        <%   }%>
    </body>
</html>

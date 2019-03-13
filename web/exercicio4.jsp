<%-- 
    Document   : exercicio4
    Created on : 01/03/2019, 14:54:43
    Author     : 80130917
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculo de média</title>
    </head>
    <body>
        <h1>Cálculo de média ponderada</h1>

        <form action="exercicio4" method="POST">
            <br /><br /><br />

            Digite o nome do aluno:<br />
            <input type="text" name="aluno" min="0" /><br /><br />
            
            Digite as notas e os pesos correspondentes:<br /><br />
            <input type="number" min="0" name="nota1" />
            <input type="number" min="0" name="peso1" /><br /><br />
            <input type="number" min="0" name="nota2" />
            <input type="number" min="0" name="peso2" /><br /><br />
            <input type="number" min="0" name="nota3" />
            <input type="number" min="0" name="peso3" /><br /><br /><br />
            <input type="submit" value="Calcular Média" />

                  
            <%
                DecimalFormat df = new DecimalFormat("0.00");
                 String aluno = request.getParameter("aluno");
                if (request.getAttribute("media") != null) {
                    Double media = (Double) request.getAttribute("media");%>

            <br /><br /><br />
            <%  out.println("A média do aluno " + aluno + " é: " + df.format(media));
                    
                }
            %>
          
        </form>
    </body>
</html>

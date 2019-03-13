<%-- 
    Document   : exercicio1
    Created on : 01/03/2019, 08:28:32
    Author     : 80130917
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado Final</title>
    </head>
    <body>
        <h1>Resultado final - com menção</h1>

        <form action="exercicio1" method="POST">
            
            Digite o nome do aluno:
            <input type="text" name="aluno"/><br><br>
            Digite o número de aulas do semestre: 
            <input type="number" min="1" name="aulas"/><br><br>
            Digite o numero de faltas do aluno:
            <input type="number" min="0" name="faltas"/><br><br>

            <br />
            <input type="submit" value="Calcular resultado final" /><br><br>
            <br />

        </form>

        <%
            Double percentual = (Double) (request.getAttribute("percentual"));
            String aluno = request.getParameter("aluno");
            
            if (request.getAttribute("resultado") != null) {
                String resultado = (String) request.getAttribute("resultado");%>

        <% out.println("O resultado do aluno " + aluno + " é: " + resultado); %>
        <br><br>
        <%   out.println("Seu percentual de presença é: " + percentual + "%");
     }%>


    </body>
</html>

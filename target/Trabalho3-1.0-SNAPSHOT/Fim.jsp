<%@page import="java.util.List"%>
<%@page import="com.mycompany.trabalho2.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<%
    /**Variável recebe a lista da secão passada pelo Servlet */
    List<Aluno> lista =(List)session.getAttribute("lista");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Trabalho-3</title>
    </head>
    <body>
        
        <h1><center><b>Tabela de alunos</b></center></h1>
        <table border=1px style="width:100%">
            <tr>
                <th>Nome</th>
                <th>Frequência</th>
                <th>Média normal</th>
                <th>Média final</th>
                <th>Situação</th>
            </tr>
                <%
                    /**Varre toda a lista para exibir os alunos cadastrados no formulário */
                if(lista != null){
                    for(Aluno b : lista)
                    {
                %>
                        <tr>
                        <td><center><%=b.getNome()%></center></td>
                        <td><center><%=b.getFrequencia()%></center></td>
                        <td><center><%=b.getNotaNormal()%></center></td>
                        <td><center><%=b.getNotaFinal()%></center></td>
                        <td><center><%=b.getSituacao()%></center></td>
                        </tr>
                <%
                    }
                }
                %>
        </table><br>
        <center><input type="submit" value="Novo formulário" onclick="location. href= 'http://localhost:8084/Trabalho3/inicio.jsp' "></center> 
    </body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Trabalho-3</title>
    </head>
    <body>
        
        <h1>Cadastro de notas</h1>
        
        <form action="situacaoServlet" method="POST">
            
            Aluno: <input type="text" name="aluno" value="<%= request.getParameter("aluno") != null ? request.getParameter("aluno") : "" %>" size="15" maxlength="30"><br>
            Frequência: <input type="text" name="frequencia" value="<%= request.getAttribute("freq") != null ? request.getAttribute("freq") : "" %>" size="15" maxlength="30"><%= request.getAttribute("erroFreq") != null ? request.getAttribute("erroFreq") : "" %><br>
            Média normal: <input type="text" name="mediaNormal" value="<%= request.getAttribute("mn") != null ? request.getAttribute("mn") : "" %>" size="15" maxlength="30"><%= request.getAttribute("erroMn") != null ? request.getAttribute("erroMn") : "" %><br>
            Média final: <input type="text" name="mediaFinal" value="<%= request.getAttribute("mf") != null ? request.getAttribute("mf") : "" %>" size="15" maxlength="30"><%= request.getAttribute("erroMf") != null ? request.getAttribute("erroMf") : "" %><br>
            
            <button type="submit" >Enviar</button>
            
        </form>
    </body>
</html>
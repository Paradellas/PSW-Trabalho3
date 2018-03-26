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
            
            Aluno: <input type="text" name="aluno" value="${param.aluno}" size="15" maxlength="30"><br>
            Frequência: <input type="text" name="frequencia" value="${freq}" size="15" maxlength="30">${erroFreq}<br>
            Média normal: <input type="text" name="mediaNormal" value="${mn}" size="15" maxlength="30">${erroMn}<br>
            Média final: <input type="text" name="mediaFinal" value="${mf}" size="15" maxlength="30">${erroMf}<br>
            
            <button type="submit" >Enviar</button>
            
        </form>
    </body>
</html>
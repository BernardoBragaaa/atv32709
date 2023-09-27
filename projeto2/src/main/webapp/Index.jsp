<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>Preencha o Formulário:</h1>
    <form action="Index.jsp" method="post">
        <label for="nome">Nome:</label>
        <input type="text" name="nome" required><br><br>

        <label for="estadoCivil">Estado Civil:</label>
        <select name="estadoCivil" required>
            <option value="Solteiro(a)">Solteiro(a)</option>
            <option value="Casado(a)">Casado(a)</option>
            <!-- Adicione outras opções de estado civil aqui -->
        </select><br><br>

        <label for="faixaEtaria">Faixa Etária:</label>
        <select name="faixaEtaria" required>
            <option value="3 a 10 anos">3 a 10 anos</option>
            <option value="11 a 25 anos">11 a 25 anos</option>
            <option value="36 a 55 anos">36 a 55 anos</option>
            <option value="56 a 100 anos">56 a 100 anos</option>
        </select><br><br>

        <input type="submit" value="Enviar">
    </form>

    <%
        String resultado = (String) request.getAttribute("resultado");
        if (resultado != null) {
    %>
    <h1>Resultado:</h1>
    <p><%= resultado %></p>
    <%
        }
    %>
</body>
</html>
<%@page import="fatec.Disciplina" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf" %>
        <h1>Matheus Gonçalves</h1>
        <p>RA: 1290481913052</p>
        
        <p>Total de disciplinas: <%=Disciplina.getList()%></p>
    </body>
</html>

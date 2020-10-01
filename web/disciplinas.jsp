<%@page import="fatec.Disciplina" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disciplinas</title>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf" %>
        <%
            Exception err = null;
            Disciplina disciplina = (Disciplina)application.getAttribute("disciplina");
            
            try{
                if(disciplina == null){
                    disciplina = new Disciplina();
                    disciplina.addDisciplina("Banco de Dados","Conceitos de Base de Dados.","4");
                    disciplina.addDisciplina("Engenharia de Software III","Conceitos, evolução e importância de arquitetura de software. ","4");
                    disciplina.addDisciplina("Programação Orientada a Objetos","Conceitos e evolução da tecnologia de orientação a objetos.","4");
                    disciplina.addDisciplina("Linguagem de Programação IV - INTERNET","Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmi­cas e interativas.","4");
                    disciplina.addDisciplina("Segurança da Informação","Requisitos de segurança de aplicações, de base de dados e de comunicações.","5");
                    disciplina.addDisciplina("Sistemas Operacionais II","Apresentação de um sistema operacional específico utilizado em ambiente corporativo.","4");
                    disciplina.addDisciplina("Metodologia da Pesquisa Científico-Tecnológica","O Papel da ciência e da tecnologia.","4");
                    
                    application.setAttribute("disciplina", disciplina);
                }
                
                if(request.getParameter("nt") != null){
                    disciplina.setNota(Integer.parseInt(request.getParameter("id")), 
                            request.getParameter("nota"));
                }
                
            }catch(Exception ex){ 
                err = ex;
            }
            
        %>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Ementa</th>
                <th>Ciclo</th>
                <th>Nota</th>
                <th>Editar Nota</th>
            </tr>
            <% for(int i = 0; i < disciplina.getList().size(); i++){ %>
                <tr>
                    <td><%=disciplina.getNome(i)%></td>
                    <td><%=disciplina.getEmenta(i)%></td>
                    <td><%=disciplina.getCiclo(i)%></td>
                    <td><%=disciplina.getNota(i)%></td>
                    <td>
                        <form>
                            <input type="hidden" name="id" value="<%=i%>">
                            <input type="number" name="nota" required>
                            <input type="submit" name="nt" value="Alterar">
                        </form> 
                    </td>
                </tr>
            <% } %>
        </table>
    </body>
</html>

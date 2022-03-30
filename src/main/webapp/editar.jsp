<%@page import="com.emergentes.modelo.Persona"%>
<%
    Persona item = (Persona)request.getAttribute("mipersona");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= (item.getId() == 0) ? "Nuevo Registro" : "Editar Registro" %></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId() %>">
            <table>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="nombres" value="<%= item.getNombres() %>"></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="<%= item.getApellidos() %>"></td>
                </tr>
                <tr>
                    <td>Edad</td>
                    <td><input type="number" name="edad" value="<%= item.getEdad() %>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Modificar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>

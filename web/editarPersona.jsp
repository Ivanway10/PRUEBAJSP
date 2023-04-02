<%@page import="logica.Persona"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Persona</title>
    </head>
    <body>
        <h1>Datos de la Persona a editar</h1>
         <%
           List <Persona> listaPersonas = (List) request.getSession().getAttribute("listaPersonas");
           
           for (Persona per : listaPersonas){
        %>
        <p><b>Id: </b><%=per.getId()%></p>
        <p><b>Dni: </b><%=per.getDni()%></p>
        <p><b>Nombre: </b><%=per.getNombre()%></p>
        <p><b>Apellido: </b><%=per.getApellido()%></p>
        <p><b>Telefono: </b><%=per.getTelefono()%></p>
        <p>---------------------------------------</p>
        <%
            }
        %>
        <form action="SvEditar" method="POST">
            <p><label>Id: </label> <input type="text" name="id" value="<%= request.getSession().getAttribute("id") %>"></p>
            <p><label>Dni: </label> <input type="text" name="dni" value="<%= request.getSession().getAttribute("dni") %>"></p>
            <p><label>Nombre: </label> <input type="text" name="nombre" value="<%= request.getSession().getAttribute("nombre") %>"></p>
            <p><label>Apellido: </label> <input type="text" name="apellido" value="<%= request.getSession().getAttribute("apellido") %>"></p>
            <p><label></label>Teléfono: <input type="text" name="telefono" value="<%= request.getSession().getAttribute("telefono") %>"></p>
            <button type="submit" >Enviar</button>
        </form>
    </body>
</html>

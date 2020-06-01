<%-- 
    Document   : RegistrosUsu
    Created on : 1/06/2020, 12:58:31 AM
    Author     : atapias
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <div>
      	<h1 class="no-margin"><strong>Tabla maestra de registrados</strong></h1>        
        <form action="Controlador" method="POST">
            <input type="submit" name="accion" value="Listar">
	</form>
        </div>
	<br>
     <div>
      <table border="1">
                  <thead>
                    <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>APELLIDO</th>
                    <th>CORREO</th>
                    <th>CARGO</th>
                    <th>CONTRASEÑA</th>
                    <th>Direccion</th>
                   </tr>
            </thead>
        <tbody>
            <c:forEach var="dato" items="${datos}">
               <tr>     
                   <td style="text-align: center;">${dato.getId()}</td>   
                   <td style="text-align: center;">${dato.getNombre()}</td>   
                   <td style="text-align: center;">${dato.getApellido()}</td>   
                   <td style="text-align: center;">${dato.getCorreo()}</td>   
                   <td style="text-align: center;">${dato.getCargo()}</td>   
                   <td style="text-align: center;">${dato.getContraseña()}</td>   
                   <td style="text-align: center;">${dato.getDireccion()}</td>   
                   <td style="text-align: center;">
                       <form>
                           <input type="submit" value="Editar">
                           <input type="submit" value="Eliminar">
                       </form>
                   </td>   
                 </tr>
            </c:forEach>     
        </tbody>
       </table>
     </div>
    </center>
    </body>
</html>

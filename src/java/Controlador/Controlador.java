
package Controlador;

import Modelo.Usuario;
import Modelo.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador extends HttpServlet {
    
    UsuarioDAO dao = new UsuarioDAO();
    Usuario us = new Usuario();
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        switch (accion) {
            case "Listar":
                List<Usuario>datos = dao.listar();
                request.setAttribute("datos", datos);
                request.getRequestDispatcher("RegistrosUsu.jsp").forward(request, response);
                break;
            case "Nuevo":
                request.getRequestDispatcher("registrar.jsp").forward(request, response);
                break;
            case "Registrar":
                String id = request.getParameter("txtid");
                String nombre = request.getParameter("txtnombre");
                String apellido = request.getParameter("txtapellido");
                String correo = request.getParameter("txtcorreo");
                String cargo = request.getParameter("txtcargo");
                String contraseña = request.getParameter("txtcontrasena");
                String direccion = request.getParameter("txtdireccion");
                us.setId(id);
                us.setNombre(nombre);
                us.setApellido(apellido);
                us.setCorreo(correo);
                us.setCargo(cargo);
                us.setContraseña(contraseña);
                us.setDireccion(direccion);
                dao.agregar(us);
                request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
                break;
            case "Editar":
                String ide = request.getParameter("id");
                Usuario usu = dao.listarId(ide);
                request.setAttribute("usuario", usu);
                request.getRequestDispatcher("editarUsu.jsp").forward(request, response);
                break;
            case "Actualizar":
                String id1 = request.getParameter("txtid");
                String nombre1 = request.getParameter("txtnombre");
                String apellido1 = request.getParameter("txtapellido");
                String correo1 = request.getParameter("txtcorreo");
                String cargo1 = request.getParameter("txtcargo");
                String contraseña1 = request.getParameter("txtcontrasena");
                String direccion1 = request.getParameter("txtdireccion");
                us.setId(id1);
                us.setNombre(nombre1);
                us.setApellido(apellido1);
                us.setCorreo(correo1);
                us.setCargo(cargo1);
                us.setContraseña(contraseña1);
                us.setDireccion(direccion1);
                dao.actualizar(us);
                request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
                break;
            case "Delete":
                String id2 = request.getParameter("id");
                dao.delete(id2);
                request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
                break;
            default:
                throw new AssertionError();
        }
    }

     
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}


package Controlador;

import Modelo.Usuario;
import Modelo.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador extends HttpServlet {
    
    UsuarioDAO dao = new UsuarioDAO();
    Usuario us = new Usuario();
    int r;
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
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
            case "Inicio":
                request.getRequestDispatcher("index.html").forward(request, response);
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
                String apellido2 = request.getParameter("txtapellido2");
                us.setId(id);
                us.setNombre(nombre);
                us.setApellido(apellido);
                us.setCorreo(correo);
                us.setCargo(cargo);
                us.setContraseña(contraseña);
                us.setDireccion(direccion);
                us.setApellido2(apellido2);
                dao.agregar(us);
                request.getRequestDispatcher("index.html").forward(request, response);
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
                String contraseña1 = request.getParameter("txtcontrasena");
                String direccion1 = request.getParameter("txtdireccion");
                String apellido21 = request.getParameter("txtapellido2");
                us.setId(id1);
                us.setNombre(nombre1);
                us.setApellido(apellido1);
                us.setCorreo(correo1);
                us.setContraseña(contraseña1);
                us.setDireccion(direccion1);
                us.setApellido2(apellido21);
                dao.actualizar(us);
                request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
                break;
            case "Delete":
                String id2 = request.getParameter("id");
                dao.delete(id2);
                request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
                break;
            case "Ingresar":
                String idl = request.getParameter("txtid");
                String contraseñal = request.getParameter("txtcontrasena"); 
                String cargo1 = request.getParameter("txtcargo");
                us.setId(idl);
                us.setContraseña(contraseñal);
                us.setCargo(cargo1);
                r=dao.validar(us);
               
                if ((idl.equalsIgnoreCase("adminId") && contraseñal.equals("adminId") && cargo1.equals("3"))){
                    request.getRequestDispatcher("admin.jsp").forward(request, response);
                }
                if (r == 1) {
                    request.getRequestDispatcher("enfermerapri.html").forward(request, response);
                    System.out.println("cargo" + cargo1);
                    System.out.println("Datos buenos");
                }if(r==2){
                    request.getRequestDispatcher("familiarpri.html").forward(request, response);
                    System.out.println("cargo" + cargo1);
                    System.out.println("Datos buenos");
                }
                else{
                    RequestDispatcher dd=request.getRequestDispatcher("login.jsp");
                    dd.forward(request, response);
                    System.out.println("cargo" + cargo1);
                    System.out.println("Datos erroneos");
                }
                break;
            case "Salir":
                request.getRequestDispatcher("index.html").forward(request, response);
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

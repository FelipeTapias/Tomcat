package Controlador;


import Modelo.Paciente;
import Modelo.PacienteDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author atapias
 */
public class ControladorPa extends HttpServlet {
    
    PacienteDAO pdao = new PacienteDAO();
    Paciente pa = new Paciente();
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
                List<Paciente>datos = pdao.listar();
                request.setAttribute("datos", datos);
                request.getRequestDispatcher("verPacientes.jsp").forward(request, response);
                break;
            case "Nuevo":
                request.getRequestDispatcher("crearPaciente.jsp").forward(request, response);
                break;
            case "Registrar":
                String id = request.getParameter("txtid");
                String nombre = request.getParameter("txtnombre");
                String apellido = request.getParameter("txtapellido");
                String apellido2 = request.getParameter("txtapellido2");
                pa.setId(id);
                pa.setNombre(nombre);
                pa.setApellido(apellido);
                pa.setApellido2(apellido2);
                pdao.agregar(pa);
                request.getRequestDispatcher("enfermerapri.html").forward(request, response);
                break;
            case "Editar":
                String ide = request.getParameter("id");
                Paciente pac = pdao.listarId(ide);
                request.setAttribute("paciente", pac);
                request.getRequestDispatcher("editarPaciente.jsp").forward(request, response);
                break;
            case "Actualizar":
                String id1 = request.getParameter("txtid");
                String nombre1 = request.getParameter("txtnombre");
                String apellido1 = request.getParameter("txtapellido");
                String apellido21 = request.getParameter("txtapellido2");
                pa.setId(id1);
                pa.setNombre(nombre1);
                pa.setApellido(apellido1);
                pa.setApellido2(apellido21);
                pdao.actualizar(pa);
                request.getRequestDispatcher("ControladorPa?accion=Listar").forward(request, response);
                break;
            case "Delete":
                String id2 = request.getParameter("id");
                pdao.delete(id2);
                request.getRequestDispatcher("ControladorPa?accion=Listar").forward(request, response);
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

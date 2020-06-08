package Modelo;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class PacienteDAO {
    PreparedStatement ps;
    ResultSet rs;
    Conexion c = new Conexion();
    Connection con;
    
    public List listar(){
       List<Paciente>lista = new ArrayList<>();
       String sql = "select * from paciente";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {                
               Paciente pa = new Paciente();
               pa.setId(rs.getString(1));
               pa.setNombre(rs.getString(2));
               pa.setApellido(rs.getString(3));
               pa.setApellido2(rs.getString(4));
               lista.add(pa);
               System.out.println("Lista: " + lista);
            }
        } catch (Exception e) {
            System.out.println("Todo malo");
        }
        return lista;
    }
    public int agregar(Paciente pa) {
     int r=0;
     String sql="insert into paciente(id,nombre,apellido,apellido2) values(?,?,?,?)";
        try {
           con = c.conectar();
           ps = con.prepareStatement(sql);
           ps.setString(1, pa.getId());
           ps.setString(2, pa.getNombre());
           ps.setString(3, pa.getApellido());
           ps.setString(4, pa.getApellido2());
           r = ps.executeUpdate();
            if (r == 1) {
                r = 1;
            }else {
                r = 0;
            }
        } catch (Exception e) {
        }
        return r;
    }
    
   public Paciente listarId(String id){
       String sql = "select * from paciente where id="+id;
       Paciente pa = new Paciente();
       try {
           con = c.conectar();
           ps = con.prepareStatement(sql);
           rs = ps.executeQuery();
           while (rs.next()) {
               pa.setId(rs.getString(1));
               pa.setNombre(rs.getString(2));
               pa.setApellido(rs.getString(3));
               pa.setApellido2(rs.getString(4));
           }
       } catch (Exception e) {
       }
       return pa;
   }
   public int actualizar(Paciente pa){
       int r = 0;
       String sql = "update paciente set nombre=?,apellido=?,apellido2=?"
                  + " where id=?";
       try {
           con = c.conectar();
           ps = con.prepareStatement(sql);
           ps.setString(1, (pa.getNombre()));
           ps.setString(2, (pa.getApellido()));
           ps.setString(3, (pa.getApellido2()));
           ps.setString(4, (pa.getId()));
           r = ps.executeUpdate();
           if (r == 1) {
               r = 1;
           }else{
               r = 0;
           }
       } catch (Exception e) {
       }
       return r;
   }
   public void delete(String id){
       System.out.println("Este es el id:" + id);
       String sql = "delete * from paciente where id="+id;
       try {
           con = c.conectar();
           ps = con.prepareStatement(sql);
           ps.executeUpdate();
       } catch (Exception e) {
           System.out.println("ERRORRRRRRRRRRRRRRRRRRRRRRRRRR");
       }
   }
}

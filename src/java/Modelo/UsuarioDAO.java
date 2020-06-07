package Modelo;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class UsuarioDAO implements Validar{
    PreparedStatement ps;
    ResultSet rs;
    Conexion c = new Conexion();
    Connection con;
    
    public List listar(){
       List<Usuario>lista = new ArrayList<>();
       String sql = "select * from USUARIO";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {                
               Usuario us = new Usuario();
               us.setId(rs.getString(1));
               us.setNombre(rs.getString(2));
               us.setApellido(rs.getString(3));
               us.setCorreo(rs.getString(4));
               us.setCargo(rs.getString(5));
               us.setContraseña(rs.getString(6));
               us.setDireccion(rs.getString(7));
               lista.add(us);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Usuario us) {
     int r=0;
     String sql="insert into usuario(id,nombre,apellido,correo,cargo,contraseña,direccion) values(?,?,?,?,?,?,?)";
        try {
           con = c.conectar();
           ps = con.prepareStatement(sql);
           ps.setString(1, us.getId());
           ps.setString(2, us.getNombre());
           ps.setString(3, us.getApellido());
           ps.setString(4, us.getCorreo());
           ps.setString(5, us.getCargo());
           ps.setString(6, us.getContraseña());
           ps.setString(7, us.getDireccion());
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
    
   public Usuario listarId(String id){
       String sql = "select * from usuario where id="+id;
       Usuario us = new Usuario();
       try {
           con = c.conectar();
           ps = con.prepareStatement(sql);
           rs = ps.executeQuery();
           while (rs.next()) {
               us.setId(rs.getString(1));
               us.setNombre(rs.getString(2));
               us.setApellido(rs.getString(3));
               us.setCorreo(rs.getString(4));
               us.setCargo(rs.getString(5));
               us.setContraseña(rs.getString(6));
               us.setDireccion(rs.getString(7));
           }
       } catch (Exception e) {
       }
       return us;
   }
   public int actualizar(Usuario us){
       int r = 0;
       String sql = "update usuario set nombre=?,apellido=?,correo=?,cargo=?,contraseña=?,direccion=?"
                  + " where id=?";
       try {
           con = c.conectar();
           ps = con.prepareStatement(sql);
           ps.setString(1, (us.getNombre()));
           ps.setString(2, (us.getApellido()));
           ps.setString(3, (us.getCorreo()));
           ps.setString(4, (us.getCargo()));
           ps.setString(5, (us.getContraseña()));
           ps.setString(6, (us.getDireccion()));
           ps.setString(7, (us.getId()));
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
       String sql = "delete * from usuario where id="+id;
       try {
           con = c.conectar();
           ps = con.prepareStatement(sql);
           ps.executeUpdate();
       } catch (Exception e) {
           System.out.println("ERRORRRRRRRRRRRRRRRRRRRRRRRRRR");
       }
   }

    @Override
    public int validar(Usuario us) {
        int r = 0;
        String sql = "select * from usuario where correo=? and contraseña=?";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, us.getCorreo());
            ps.setString(2, us.getContraseña());
            rs = ps.executeQuery();
            while (rs.next()) {
                r=r+1;
                us.setCorreo(rs.getString("correo"));
                us.setContraseña(rs.getString("contraseña"));
            }
            if (r==1) {
                return 1;
            }else{
                return 0;
            }
        } catch (Exception e) {
            return 0;
        }
    }
}

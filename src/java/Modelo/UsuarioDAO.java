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
               us.setApellido2(rs.getString(8));
               lista.add(us);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Usuario us) {
     int r=0;
     String sql="insert into usuario(id,nombre,apellido,correo,cargo,contraseña,direccion,apellido2) values(?,?,?,?,?,?,?,?)";
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
           ps.setString(8, us.getApellido2());
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
               us.setApellido2(rs.getString(8));
           }
       } catch (Exception e) {
       }
       return us;
   }
   public int actualizar(Usuario us){
       int r = 0;
       String sql = "update usuario set nombre=?,apellido=?,correo=?,contraseña=?,direccion=?,apellido2=?"
                  + " where id=?";
       try {
           con = c.conectar();
           ps = con.prepareStatement(sql);
           ps.setString(1, (us.getNombre()));
           ps.setString(2, (us.getApellido()));
           ps.setString(3, (us.getCorreo()));
           ps.setString(4, (us.getContraseña()));
           ps.setString(5, (us.getDireccion()));
           ps.setString(6, (us.getApellido2()));
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
        String sql = "select * from usuario where id=? and contraseña=? and cargo=?";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, us.getId());
            ps.setString(2, us.getContraseña());
            ps.setString(3, us.getCargo());
            rs = ps.executeQuery();
            while (rs.next()) {
                us.setId(rs.getString("id"));
                us.setContraseña(rs.getString("contraseña"));
                us.setCargo(rs.getString("cargo"));
                if((rs.getString("cargo").equals("1"))){
                    r=r+1;
                }else{
                    r=r+2;
                }
            }
            return r;
        } catch (Exception e) {
            return 0;
        }
    }
}

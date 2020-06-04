package Modelo;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class UsuarioDAO {
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
}

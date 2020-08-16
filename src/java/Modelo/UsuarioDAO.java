/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Config.Conexion;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Jose
 */
public class UsuarioDAO {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Usuario login(String user, String pass){
        Usuario us= new Usuario();
        String sql= "select * from usuario where nombre=? and clave=?";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs=ps.executeQuery();
            while(rs.next()){
                us.setUsuario(rs.getString("nombre"));
                us.setClave(rs.getString("clave"));
                us.setNivel(rs.getString("nivel"));
            }
            
        } catch (Exception e) {
        }
        return us;
    }
    
}

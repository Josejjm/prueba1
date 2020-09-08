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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Jose
 */
public class UsuarioDAO {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    
    //LOGIN
    public Usuario login(String user, String pass){
        Usuario us= new Usuario();
        String sql= "select * from usuario where usuario=? and clave=?";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs=ps.executeQuery();
            while(rs.next()){
                us.setUsuario(rs.getString("usuario"));
                us.setClave(rs.getString("clave"));
                us.setNivel(rs.getString("nivel"));
            }
            
        } catch (Exception e) {
        }
        return us;
    }
    
    //CRUD
    
    public List listar(){
        String sql = "select * from usuario";
        List<Usuario> lista = new ArrayList<>();
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Usuario us = new Usuario();
                us.setId(rs.getInt(1));
                us.setNombre(rs.getString(2));
                us.setDireccion(rs.getString(3));
                us.setEmail(rs.getString(4));
                us.setUsuario(rs.getString(5));
                us.setClave(rs.getString(6));
                us.setNivel(rs.getString(7));
                lista.add(us);
            }
            
        } catch (Exception e) {
        }
        
        return lista;
    }
    
    public int agregar(Usuario us){
        String sql="insert into usuario (nombre, direccion, email, usuario, clave, nivel) values (?,?,?,?,?,?)";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, us.getNombre());
            ps.setString(2, us.getDireccion());
            ps.setString(3, us.getEmail());
            ps.setString(4, us.getUsuario());
            ps.setString(5, us.getClave());
            ps.setString(6, us.getNivel());
            
            ps.executeUpdate();
            
            
        } catch (Exception e) {
        }
        return r;
    }
    
    public Usuario listarId(int id){
        Usuario us = new Usuario();
        String sql = "select * from usuario where idUsuario="+id;
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                us.setNombre(rs.getString(2));
                us.setDireccion(rs.getString(3));
                us.setEmail(rs.getString(4));
                us.setUsuario(rs.getString(5));
                us.setClave(rs.getString(6));
                us.setNivel(rs.getString(7));
            }
        } catch (Exception e) {
        }
        return us;
    }
    
    public int actualizar(Usuario us){
        String sql="update usuario set nombre=?, direccion=?, email=?, usuario=?, clave=?, nivel=? where idUsuario=?";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, us.getNombre());
            ps.setString(2, us.getDireccion());
            ps.setString(3, us.getEmail());
            ps.setString(4, us.getUsuario());
            ps.setString(5, us.getClave());
            ps.setString(6, us.getNivel());
            ps.setInt(7, us.getId());
            ps.executeUpdate();
            
            
        } catch (Exception e) {
        }
        return r;
    }
    
    public void eliminar(int id){
        String sql = "delete from usuario where idUsuario="+id;
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    
}

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
public class ContactoDAO {
    
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public List listar(){
        String sql = "select * from contacto";
        List<Contacto> lista = new ArrayList<>();
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Contacto co = new Contacto();
                co.setId(rs.getInt(1));
                co.setNombre(rs.getString(2));
                co.setEmail(rs.getString(3));
                co.setTelefono(rs.getString(4));
                co.setMensaje(rs.getString(5));
                co.setEstado(rs.getString(6));
                
                lista.add(co);
            }
            
        } catch (Exception e) {
        }
        
        return lista;
    }
    
    public int agregar(Contacto co){
        String sql="insert into contacto (nombre, email, telefono, mensaje, estado) values (?,?,?,?,?)";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, co.getNombre());
            ps.setString(2, co.getEmail());
            ps.setString(3, co.getTelefono());
            ps.setString(4, co.getMensaje());
            ps.setString(5, co.getEstado());
            
            
            ps.executeUpdate();
            
            
        } catch (Exception e) {
        }
        return r;
    }
    public Contacto listarId(int id){
        Contacto co = new Contacto();
        String sql = "select * from contacto where idContacto="+id;
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                co.setNombre(rs.getString(2));
                co.setEmail(rs.getString(3));
                co.setTelefono(rs.getString(4));
                co.setMensaje(rs.getString(5));
                co.setEstado(rs.getString(6));
                
            }
        } catch (Exception e) {
        }
        return co;
    }
    
    public int actualizar(Contacto co){
        String sql="update contacto set nombre=?, email=?, telefono=?, mensaje=?, estado=? where idContacto=?";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, co.getNombre());
            ps.setString(2, co.getEmail());
            ps.setString(3, co.getTelefono());
            ps.setString(4, co.getMensaje());
            ps.setString(5, co.getEstado());
            ps.setInt(6, co.getId());
            ps.executeUpdate();
            
            
        } catch (Exception e) {
        }
        return r;
    }
    public void eliminar(int id){
        String sql = "delete from contacto where idContacto="+id;
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
}

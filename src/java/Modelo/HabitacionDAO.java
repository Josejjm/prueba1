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
public class HabitacionDAO {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public List listar(){
        String sql = "select * from habitacion";
        List<Habitacion> lista = new ArrayList<>();
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Habitacion ha = new Habitacion();
                ha.setId(rs.getInt(1));
                ha.setNombre(rs.getString(2));
                ha.setPrecio(rs.getInt(3));
                
                lista.add(ha);
            }
            
        } catch (Exception e) {
        }
        
        return lista;
    }
    
    public int agregar(Habitacion ha){
        String sql="insert into habitacion (nombre, precio) values (?,?)";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, ha.getNombre());
            ps.setInt(2, ha.getPrecio());

            ps.executeUpdate();
            
            
        } catch (Exception e) {
        }
        return r;
    }
    
    public Habitacion listarId(int id){
        Habitacion ha = new Habitacion();
        String sql = "select * from habitacion where idHabitacion="+id;
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                ha.setNombre(rs.getString(2));
                ha.setPrecio(rs.getInt(3));
                
            }
        } catch (Exception e) {
        }
        return ha;
    }
    
    public int actualizar(Habitacion ha){
        String sql="update habitacion set nombre=?, precio=? where idHabitacion=?";
        
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, ha.getNombre());
            ps.setInt(2, ha.getPrecio());
            ps.setInt(3, ha.getId());
            ps.executeUpdate();
            
            
        } catch (Exception e) {
        }
        return r;
    }
    
    public void eliminar(int id){
        String sql = "delete from habitacion where idHabitacion="+id;
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
}

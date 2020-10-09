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
public class ResDAO {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public List listar(String nombre){
        
        String sql = "select * from res where nombre='"+nombre+"'";
        List<Res> lista = new ArrayList<>();
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Res r = new Res();
                r.setId(rs.getInt(1));
                r.setFechaE(rs.getString(2));
                r.setFechaS(rs.getString(3));
                r.setNombre(rs.getString(4));
                r.setHabitacion(rs.getString(5));
                lista.add(r);
            }
            
        } catch (Exception e) {
        }
        
        return lista;
    }
    
    public int agregar(Res re){
        String sql="insert into res (fechae, fechas, nombre, habitacion) values (?, ?, ?, ?)";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, re.getFechaE());
            ps.setString(2, re.getFechaS());
            ps.setString(3, re.getNombre());
            ps.setString(4, re.getHabitacion());

            ps.executeUpdate();
            
            
        } catch (Exception e) {
        }
        return r;
    }
        
}

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
                r.setFecha(rs.getString(2));
                r.setNombre(rs.getString(3));
                lista.add(r);
            }
            
        } catch (Exception e) {
        }
        
        return lista;
    }
    
    public int agregar(Res re){
        String sql="insert into res (fecha, nombre) values (?, ?)";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, re.getFecha());
            ps.setString(2, re.getNombre());

            ps.executeUpdate();
            
            
        } catch (Exception e) {
        }
        return r;
    }
        
}

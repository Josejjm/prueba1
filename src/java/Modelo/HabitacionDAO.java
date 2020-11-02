/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jose
 */
@MultipartConfig
public class HabitacionDAO {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public List listar(){
        String sql = "select * from hab";
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
                ha.setFoto(rs.getBinaryStream(4));
                lista.add(ha);
            }
            
        } catch (Exception e) {
        }
        
        return lista;
    }
   
    public void listarImg(int id, HttpServletResponse response){
        String sql = "select * from hab where idHabitacion="+id;
        InputStream inputstream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");
        
        try {
            outputStream = response.getOutputStream();
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            if(rs.next()){
                inputstream=rs.getBinaryStream("foto");             
            }
            
            bufferedInputStream = new BufferedInputStream (inputstream);
            bufferedOutputStream = new BufferedOutputStream (outputStream);
            int i=0;
            while((i=bufferedInputStream.read())!=-1){
                bufferedOutputStream.write(i);
            }
            
        } catch (Exception e) {
        }
    }
    
    
    
    public int agregar(Habitacion ha){
        String sql="insert into hab (nombre, precio, foto) values (?,?,?)";
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, ha.getNombre());
            ps.setInt(2, ha.getPrecio());
            ps.setBlob(3, ha.getFoto());
            ps.executeUpdate();
            
            
        } catch (Exception e) {
        }
        return r;
    }
    
    public Habitacion listarId(int id){
        Habitacion ha = new Habitacion();
        String sql = "select * from hab where idHabitacion="+id;
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
        String sql="update hab set nombre=?, precio=?, foto=? where idHabitacion=?";
        
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, ha.getNombre());
            ps.setInt(2, ha.getPrecio());
            ps.setBlob(3, ha.getFoto());
            ps.setInt(4, ha.getId());
            ps.executeUpdate();
            
            
        } catch (Exception e) {
        }
        return r;
    }
    
    public void eliminar(int id){
        String sql = "delete from hab where idHabitacion="+id;
        try {
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
}

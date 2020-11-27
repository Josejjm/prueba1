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

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public List<Res> listar(String nombre) {

        String sql = "select id, DATE_FORMAT(fechae,'%d/%m/%Y'), precio, nombre, habitacion from res where nombre='" + nombre + "'";
        List<Res> lista = new ArrayList<>();
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Res r = new Res();
                r.setId(rs.getInt(1));
                r.setFechaE(rs.getString(2));
                r.setPrecio(rs.getInt(3));
                r.setNombre(rs.getString(4));
                r.setHabitacion(rs.getString(5));
                lista.add(r);
            }

        } catch (Exception e) {
        }

        return lista;
    }

    public List<Res> listarAdmin(String consulta) {

        String sql = "SELECT id, DATE_FORMAT(fechae,'%d/%m/%Y'), precio, nombre, habitacion FROM res ORDER BY " + consulta + "";
        List<Res> lista = new ArrayList<>();
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Res r = new Res();
                r.setId(rs.getInt(1));
                r.setFechaE(rs.getString(2));
                r.setPrecio(rs.getInt(3));
                r.setNombre(rs.getString(4));
                r.setHabitacion(rs.getString(5));
                lista.add(r);
            }

        } catch (Exception e) {
        }

        return lista;
    }

    public List<Res> consultar(String habitacion) {
        String sql = "SELECT DATE_FORMAT(fechae,'%d/%m/%Y') AS fechae FROM res WHERE habitacion='" + habitacion + "' AND fechae >= CURRENT_TIMESTAMP";

        List<Res> lista = new ArrayList<>();
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Res r = new Res();
                r.setFechaE(rs.getString(1));
                lista.add(r);
            }

        } catch (Exception e) {
        }

        return lista;
    }

    public int consultarfecha(String fecha) {
        int cont = 0;
        String sql = "select fechae from res where fechae='" + fecha + "'";
        List<Res> lista = new ArrayList<>();
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Res r = new Res();
                r.setFechaE(rs.getString(1));
                cont++;
            }

        } catch (Exception e) {
        }

        return cont;
    }

    public int agregar(Res re) {
        String sql = "insert into res (fechae, precio, nombre, habitacion) values (?, ?, ?, ?)";
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, re.getFechaE());
            ps.setInt(2, re.getPrecio());
            ps.setString(3, re.getNombre());
            ps.setString(4, re.getHabitacion());

            ps.executeUpdate();

        } catch (Exception e) {
        }
        return r;
    }

    public void eliminar(int id) {
        String sql = "delete from res where id=" + id;
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

}

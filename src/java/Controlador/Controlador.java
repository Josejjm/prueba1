/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Usuario;
import Modelo.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.List;
import javafx.scene.control.Alert;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jose
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    Usuario us = new Usuario();
    UsuarioDAO udao = new UsuarioDAO();
    int idu;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion=request.getParameter("accion");
        String menu = request.getParameter("menu");
       
        
        
        
        
        
        if(menu.equals("Admin")){
            request.getRequestDispatcher("Admin.jsp").forward(request, response);
                     
        }
        
        if(menu.equals("Usuario")){
                      
            switch(accion){
            case "Listar":
                List lista = udao.listar();
                request.setAttribute("usua", lista);
                
                break;
            case "Agregar":
                String nombre = request.getParameter("txtNombre");
                String direccion = request.getParameter("txtDireccion");
                String email = request.getParameter("txtEmail");
                String usuario = request.getParameter("txtUsuario");
                String clave = request.getParameter("txtClave");
                String nivel = request.getParameter("txtNivel");
                us.setNombre(nombre);
                us.setDireccion(direccion);
                us.setEmail(email);
                us.setUsuario(usuario);
                us.setClave(clave);
                us.setNivel(nivel);
                udao.agregar(us);
                request.getRequestDispatcher("Controlador?menu=Usuario&accion=Listar").forward(request, response);
                break;  
                
            case "Editar":
                idu=Integer.parseInt(request.getParameter("id"));
                Usuario u =udao.listarId(idu);
                request.setAttribute("usuario", u);
                request.getRequestDispatcher("Controlador?menu=Usuario&accion=Listar").forward(request, response);
                break;
            
            case "Actualizar":
                String anombre = request.getParameter("txtNombre");
                String adireccion = request.getParameter("txtDireccion");
                String aemail = request.getParameter("txtEmail");
                String ausuario = request.getParameter("txtUsuario");
                String aclave = request.getParameter("txtClave");
                String anivel = request.getParameter("txtNivel");
                us.setId(idu);
                us.setNombre(anombre);
                us.setDireccion(adireccion);
                us.setEmail(aemail);
                us.setUsuario(ausuario);
                us.setClave(aclave);
                us.setNivel(anivel);
                udao.actualizar(us);
                request.getRequestDispatcher("Controlador?menu=Usuario&accion=Listar").forward(request, response);
                break;
            case "Eliminar":
                idu=Integer.parseInt(request.getParameter("id"));
                udao.eliminar(idu);
                request.getRequestDispatcher("Controlador?menu=Usuario&accion=Listar").forward(request, response);
                break;
            default:
                throw new AssertionError();
                }
            request.getRequestDispatcher("Usuario.jsp").forward(request, response);
        }
        if(menu.equals("Principal")){
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        if(menu.equals("Bienvenidos")){
            request.getRequestDispatcher("Bienvenidos.jsp").forward(request, response);
        }
        if(menu.equals("Habitaciones")){
            request.getRequestDispatcher("Habitaciones.jsp").forward(request, response);
        }
        if(menu.equals("Reserva")){
            request.getRequestDispatcher("Reserva.jsp").forward(request, response);
        }
        if(menu.equals("Contacto")){
            request.getRequestDispatcher("Contacto.jsp").forward(request, response);
        }
        if(menu.equals("Ingreso")){
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        if(menu.equals("Visitante")){
            request.getRequestDispatcher("Visita.jsp").forward(request, response);
        }
        if(menu.equals("Registro")){
            request.getRequestDispatcher("Registro.jsp").forward(request, response);
            
            
            
            switch(accion){
                case "Crear":
                String nombre = request.getParameter("txtNombre");
                String direccion = request.getParameter("txtDireccion");
                String email = request.getParameter("txtEmail");
                String usuario = request.getParameter("txtUsuario");
                String clave = request.getParameter("txtClave");
                String nivel = request.getParameter("txtNivel");
                
                
                if(nombre.equals("")||direccion.equals("")||email.equals("")||
                    usuario.equals("")||clave.equals("")||nivel.equals("")){
                    request.getRequestDispatcher("Controlador?menu=Ingreso").forward(request, response);
                    
                }
                us.setNombre(nombre);
                us.setDireccion(direccion);
                us.setEmail(email);
                us.setUsuario(usuario);
                us.setClave(clave);
                us.setNivel(nivel);
                udao.agregar(us);
                  
                
                
                break;
                
                default:
                throw new AssertionError();
                
            }
            
            
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

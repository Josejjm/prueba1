/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Habitacion;
import Modelo.HabitacionDAO;
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
    
    Habitacion ha = new Habitacion();
    HabitacionDAO hdao = new HabitacionDAO();
    int idh;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion=request.getParameter("accion");
        String menu = request.getParameter("menu");
       
        
        
        
        
        
        
        
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
            
            switch(accion){
            case "Listar":
                List lista = hdao.listar();
                request.setAttribute("habit", lista);
                
                break;
            case "Agregar":
                String nombre = request.getParameter("txtNombre");
                String precio = request.getParameter("txtPrecio");
                
                ha.setNombre(nombre);
                ha.setPrecio(Integer.parseInt(precio));
                
                hdao.agregar(ha);
                request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                break;  
                
            case "Editar":
                idh=Integer.parseInt(request.getParameter("id"));
                Habitacion h =hdao.listarId(idh);
                request.setAttribute("habitacion", h);
                request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                break;
            
            case "Actualizar":
                String hnombre = request.getParameter("txtNombre");
                String hprecio = request.getParameter("txtPrecio");
                
                ha.setId(idh);
                ha.setNombre(hnombre);
                if(!hprecio.equals(""))
                ha.setPrecio(Integer.parseInt(hprecio));
                
                hdao.actualizar(ha);
                request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                break;
            case "Eliminar":
                idh=Integer.parseInt(request.getParameter("id"));
                hdao.eliminar(idh);
                request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                break;
            default:
                throw new AssertionError();
                }
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
        
        if(menu.equals("Registro")){
            
            switch(accion){
                case "Registrar":
                    request.getRequestDispatcher("Registro.jsp").forward(request, response);
                    break;
                    
                case "Crear":
                String nombre = request.getParameter("txtNombre");
                String direccion = request.getParameter("txtDireccion");
                String email = request.getParameter("txtEmail");
                String usuario = request.getParameter("txtUsuario");
                String clave = request.getParameter("txtClave");


                if(nombre.equals("")||direccion.equals("")||email.equals("")||
                    usuario.equals("")||clave.equals("")){
                      request.getRequestDispatcher("Registro.jsp").forward(request, response);

                        }else {
                us.setNombre(nombre);
                us.setDireccion(direccion);
                us.setEmail(email);
                us.setUsuario(usuario);        
                us.setClave(clave);        
                us.setNivel("normal");
                udao.agregar(us); 
                request.getRequestDispatcher("index.jsp").forward(request, response);
                }
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

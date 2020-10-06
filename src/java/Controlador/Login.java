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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jose
 */
public class Login extends HttpServlet {
    
    UsuarioDAO udao= new UsuarioDAO();
    Usuario us = new Usuario();
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String accion=request.getParameter("accion");
       
        if(accion.equalsIgnoreCase("Visitante")){
            
            HttpSession obse = request.getSession(true);
            obse.setAttribute("sesion", "");
            request.setAttribute("nombre", "visitante");
            us.setNivel("visitante");
            
            request.setAttribute("usuario", us);
            request.getRequestDispatcher("Controlador?menu=Principal").forward(request, response);
        }
        
        if(accion.equalsIgnoreCase("Ingresar")){
            String user=request.getParameter("user");
            String pass=request.getParameter("pass");
            
            us=udao.login(user,pass);
            
            
            if(us.getUsuario()!=null){
                HttpSession obse = request.getSession(true);
                obse.setAttribute("sesion", us.getNivel());
                obse.setAttribute("nom", us.getUsuario());
                obse.setAttribute("idus", us.getId());
                request.setAttribute("usuario", us);
                request.getRequestDispatcher("Controlador?menu=Principal").forward(request, response);
                
            }else{
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            
        } 
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

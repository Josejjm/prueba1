/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Contacto;
import Modelo.ContactoDAO;
import Modelo.Habitacion;
import Modelo.HabitacionDAO;
import Modelo.Res;
import Modelo.ResDAO;
import Modelo.Usuario;
import Modelo.UsuarioDAO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import javafx.scene.control.Alert;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

/**
 *
 * @author Jose
 */
@MultipartConfig
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

    Contacto co = new Contacto();
    ContactoDAO cdao = new ContactoDAO();
    int idc;

    Res res = new Res();
    ResDAO resdao = new ResDAO();
    int idres;

    int total = 0;
    List<Res> lista1 = new ArrayList<>();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        String menu = request.getParameter("menu");

        if (menu.equals("Usuario")) {

            switch (accion) {
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
                    idu = Integer.parseInt(request.getParameter("id"));
                    Usuario u = udao.listarId(idu);
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
                    idu = Integer.parseInt(request.getParameter("id"));
                    udao.eliminar(idu);
                    request.getRequestDispatcher("Controlador?menu=Usuario&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Usuario.jsp").forward(request, response);
        }
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        if (menu.equals("Bienvenidos")) {
            request.getRequestDispatcher("Bienvenidos.jsp").forward(request, response);
        }
        if (menu.equals("index")) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        if (menu.equals("Habitaciones")) {

            switch (accion) {
                case "Listar":
                    List lista = hdao.listar();
                    request.setAttribute("habit", lista);

                    break;
                case "Agregar":
                    String nombre = request.getParameter("txtNombre");
                    String precio = request.getParameter("txtPrecio");
                    Part part = request.getPart("fileFoto");
                    InputStream inputStream = part.getInputStream();

                    ha.setNombre(nombre);
                    ha.setPrecio(Integer.parseInt(precio));
                    ha.setFoto(inputStream);
                    hdao.agregar(ha);
                    request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                    break;

                case "Editar":
                    idh = Integer.parseInt(request.getParameter("id"));
                    Habitacion h = hdao.listarId(idh);
                    request.setAttribute("habitacion", h);
                    request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                    break;

                case "Actualizar":
                    String hnombre = request.getParameter("txtNombre");
                    String hprecio = request.getParameter("txtPrecio");
                    Part hfoto = request.getPart("fileFoto");
                    InputStream inputStream1 = hfoto.getInputStream();

                    ha.setId(idh);
                    ha.setNombre(hnombre);
                    if (!hprecio.equals("")) {
                        ha.setPrecio(Integer.parseInt(hprecio));
                    }
                    ha.setFoto(inputStream1);

                    hdao.actualizar(ha);
                    request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    idh = Integer.parseInt(request.getParameter("id"));
                    hdao.eliminar(idh);
                    request.getRequestDispatcher("Controlador?menu=Habitaciones&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Habitaciones.jsp").forward(request, response);

        }
        if (menu.equals("Reserva")) {

            switch (accion) {

                case "Listar":
                    total = 0;
                    String nombre = request.getParameter("nom");

                    String tipo = request.getParameter("tipo");
                    List reservas = resdao.consultar(tipo);
                    request.setAttribute("habita", reservas);

                    lista1 = resdao.listar(nombre);
                    for (int i = 0; i < lista1.size(); i++) {
                        total = total + lista1.get(i).getPrecio();
                    }
                    request.setAttribute("total", total);
                    request.setAttribute("res", lista1);
                    request.getRequestDispatcher("Reserva.jsp").forward(request, response);
                    break;

                case "Consultar":
                    String consulta = request.getParameter("consulta");
                    lista1 = resdao.listarAdmin(consulta);
                    request.setAttribute("res", lista1);
                    break;

                case "Consultar Nombre":
                    String consultanombre = request.getParameter("txtConsulta");
                    lista1 = resdao.listar(consultanombre);
                    for (int i = 0; i < lista1.size(); i++) {
                        total = total + lista1.get(i).getPrecio();
                    }
                    request.setAttribute("res", lista1);
                    break;

                case "Agregar":
                    int cont = 0;
                    String id = request.getParameter("id");
                    String fechaE = request.getParameter("txtFechaE");
                    int precio = Integer.parseInt(request.getParameter("txtPrecio"));
                    String nombre2 = request.getParameter("txtNombre");
                    String habitacion = request.getParameter("txtHabitacion");

                    cont = resdao.consultarfecha(fechaE,habitacion);

                    if (cont != 0) {

                        request.getRequestDispatcher("Reservado.jsp").forward(request, response);

                    } else if (fechaE.equals("")) {

                        request.getRequestDispatcher("Controlador?menu=Reserva&accion=Listar&nom=" + nombre2 + "&tipo=" + habitacion + "&precio=" + precio + "").forward(request, response);

                    } else {
                        res.setFechaE(fechaE);
                        res.setPrecio(precio);
                        res.setNombre(nombre2);
                        res.setHabitacion(habitacion);
                        resdao.agregar(res);
                        request.getRequestDispatcher("Controlador?menu=Reserva&accion=Listar&nom=" + nombre2 + "&tipo=" + habitacion + "&precio=" + precio + "").forward(request, response);
                    }
                    break;

                case "Eliminar":
                    String nombre3 = request.getParameter("nom");
                    idres = Integer.parseInt(request.getParameter("id"));
                    resdao.eliminar(idres);
                    request.getRequestDispatcher("Controlador?menu=Reserva&accion=Listar&nom=" + nombre3 + "").forward(request, response);
                    break;

                default:
                    throw new AssertionError();

            }

            request.getRequestDispatcher("Reserva.jsp").forward(request, response);

        }
        if (menu.equals("Contacto")) {

            if (accion.equals("Contacto")) {
                request.getRequestDispatcher("Contacto.jsp").forward(request, response);
            }
            if (accion.equals("Enviar")) {
                String nombre = request.getParameter("txtNombre");
                String email = request.getParameter("txtEmail");
                String telefono = request.getParameter("txtTelefono");
                String mensaje = request.getParameter("txtMensaje");
                String estado = "pendiente";

                if (nombre.equals("") || email.equals("") || telefono.equals("")
                        || mensaje.equals("")) {
                    request.getRequestDispatcher("Contacto.jsp").forward(request, response);

                } else {
                    co.setNombre(nombre);
                    co.setEmail(email);
                    co.setTelefono(telefono);
                    co.setMensaje(mensaje);
                    co.setEstado(estado);

                    cdao.agregar(co);

                    request.getRequestDispatcher("Enviado.jsp").forward(request, response);
                }
            }
        }
        if (menu.equals("Consultas")) {

            switch (accion) {
                case "Listar":
                    List lista = cdao.listar();
                    request.setAttribute("cont", lista);
                    break;

                case "Agregar":
                    String nombre = request.getParameter("txtNombre");
                    String email = request.getParameter("txtEmail");
                    String telefono = request.getParameter("txtTelefono");
                    String mensaje = request.getParameter("txtMensaje");
                    String estado = request.getParameter("txtEstado");

                    co.setNombre(nombre);
                    co.setEmail(email);
                    co.setTelefono(telefono);
                    co.setMensaje(mensaje);
                    co.setEstado(estado);
                    cdao.agregar(co);
                    request.getRequestDispatcher("Controlador?menu=Consultas&accion=Listar").forward(request, response);
                    break;

                case "Editar":
                    idc = Integer.parseInt(request.getParameter("id"));
                    Contacto c = cdao.listarId(idc);
                    request.setAttribute("contacto", c);
                    request.getRequestDispatcher("Controlador?menu=Consultas&accion=Listar").forward(request, response);
                    break;

                case "Actualizar":
                    String cnombre = request.getParameter("txtNombre");
                    String cemail = request.getParameter("txtEmail");
                    String ctelefono = request.getParameter("txtTelefono");
                    String cmensaje = request.getParameter("txtMensaje");
                    String cestado = request.getParameter("txtEstado");

                    co.setId(idc);
                    co.setNombre(cnombre);
                    co.setEmail(cemail);
                    co.setTelefono(ctelefono);
                    co.setMensaje(cmensaje);
                    co.setEstado(cestado);
                    cdao.actualizar(co);
                    request.getRequestDispatcher("Controlador?menu=Consultas&accion=Listar").forward(request, response);
                    break;

                case "Eliminar":
                    idc = Integer.parseInt(request.getParameter("id"));
                    cdao.eliminar(idc);
                    request.getRequestDispatcher("Controlador?menu=Consultas&accion=Listar").forward(request, response);
                    break;

                default:
                    throw new AssertionError();

            }
            request.getRequestDispatcher("Consultas.jsp").forward(request, response);
        }
        if (menu.equals("Ingreso")) {
            request.getRequestDispatcher("Bienvenidos.jsp").forward(request, response);
        }

        if (menu.equals("Registro")) {

            switch (accion) {
                case "Registrar":
                    request.getRequestDispatcher("Registro.jsp").forward(request, response);
                    break;

                case "Crear":
                    String nombre = request.getParameter("txtNombre");
                    String direccion = request.getParameter("txtDireccion");
                    String email = request.getParameter("txtEmail");
                    String usuario = request.getParameter("txtUsuario");
                    String clave = request.getParameter("txtClave");

                    if (nombre.equals("") || direccion.equals("") || email.equals("")
                            || usuario.equals("") || clave.equals("")) {
                        request.getRequestDispatcher("Registro.jsp").forward(request, response);

                    } else {
                        us.setNombre(nombre);
                        us.setDireccion(direccion);
                        us.setEmail(email);
                        us.setUsuario(usuario);
                        us.setClave(clave);
                        us.setNivel("normal");
                        udao.agregar(us);
                        request.getRequestDispatcher("Controlador?menu=Bienvenidos").forward(request, response);
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

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Persona;


@WebServlet(name = "SvEditar", urlPatterns = {"/SvEditar"})
public class SvEditar extends HttpServlet {
    Controladora control = new Controladora();
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int id = Integer.parseInt (request.getParameter("id_buscar"));
        
        Persona pers = control.traerPersona(id);
        HttpSession miSesion = request.getSession();
        try {
            miSesion.setAttribute("id", pers.getId());
            miSesion.setAttribute("dni", pers.getDni());
            miSesion.setAttribute("nombre", pers.getNombre());
            miSesion.setAttribute("apellido", pers.getApellido());
            miSesion.setAttribute("telefono", pers.getTelefono());
            
            response.sendRedirect("editarPersona.jsp");
        } catch (IOException e){
        response.sendRedirect("index.htm");    
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);  
        
        int id = Integer.parseInt(request.getParameter("id"));
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        
        Persona pers = new Persona(id , dni, nombre, apellido, telefono);
        control.editarPersona(pers);
        
        response.sendRedirect("index.htm");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

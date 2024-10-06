/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador extends HttpServlet {

        Empleado em=new Empleado();
        EmpleadoDAO edao =new EmpleadoDAO();
        int ide;
        
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                
        String accion = request.getParameter("accion");
        String menu = request.getParameter("menu");
        
        if(menu.equals("Principal")){
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        if(menu.equals("Empleado")){
            switch(accion){
                case "Listar":
                    List lista = edao.listar();
                    request.setAttribute("empleados", lista);
                    
                    break;
                case "Agregar":
                    String dni = request.getParameter("txtDni");
                    String nom = request.getParameter("txtNombres");
                    String tel = request.getParameter("txtTel");
                    String est = request.getParameter("txtEstado");
                    String user = request.getParameter("txtUser");
                    em.setDni(dni);
                    em.setNom(nom);
                    em.setTel(tel);
                    em.setEstado(est);
                    em.setUser(user);
                    edao.agregar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                    
                case "Editar":
                    ide=Integer.parseInt(request.getParameter("id"));
                    Empleado e = edao.listarId(ide);
                    request.setAttribute("empleado", e);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                    
                case "Actualizar":
                    String dnia = request.getParameter("txtDni");
                    String noma = request.getParameter("txtNombres");
                    String tela = request.getParameter("txtTel");
                    String esta = request.getParameter("txtEstado");
                    String usera = request.getParameter("txtUser");
                    em.setDni(dnia);
                    em.setNom(noma);
                    em.setTel(tela);
                    em.setEstado(esta);
                    em.setUser(usera);
                    em.setId(ide);
                    edao.actualizar(em);
                   
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    ide=Integer.parseInt(request.getParameter("id"));
                    edao.eliminar(ide);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
            }
                    
            request.getRequestDispatcher("Empleado.jsp").forward(request, response);
        }
        if(menu.equals("Clientes")){
            request.getRequestDispatcher("Clientes.jsp").forward(request, response);
        }
        if(menu.equals("Producto")){
            request.getRequestDispatcher("Producto.jsp").forward(request, response);
        }
        if(menu.equals("NuevaVenta")){
            request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
        }
        
            /*String accion = request.getParameter("accion");
            switch(accion){
                case "Principal":
                    request.getRequestDispatcher("Principal.jsp").forward(request, response);
                    break;
                case "Producto":
                    request.getRequestDispatcher("Producto.jsp").forward(request, response);
                    break;
                case "Clientes":
                    request.getRequestDispatcher("Clientes.jsp").forward(request, response);
                    break;
                case "Empleado":
                    request.getRequestDispatcher("Empleado.jsp").forward(request, response);
                    break;
                case "NuevaVenta":
                    request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
        }*/
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

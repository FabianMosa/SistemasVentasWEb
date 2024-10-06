/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;




public class Conexion {
    Connection con;
    String url = "jdbc:mysql://localhost:3306/bd_ventas";
    String user = "root";
    String pass = "";
    
    public Connection Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection(url,user,pass);
            System.out.println("Conexion exitosa");
            
        }catch(Exception e){
            System.out.println("Error" + e.getMessage());
        
        }
        
        /*catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error al conectar con la base de datos");
        } finally {
            try {
                if (con != null && !con.isClosed()) {
                    System.out.println("Error de la base de datos");
                    con.close();
                }
            } catch (SQLException e) {
                System.out.println("Error base de datos");            }
        }*/
        return con;
        
    }

}

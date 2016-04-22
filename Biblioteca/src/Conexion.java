/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Gustavo
 */
public class Conexion {
    
    public static final String URL = "jdbc:mysql://127.0.0.1/biblioteca";
    public static final String USERNAME = "ricardo";
    public static final String PASSWORD = "ricardo";

    public static Connection getConnection() {
        Connection connection = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (Exception e) {
            System.out.println(e);
        }

        return connection;
    }
    
}

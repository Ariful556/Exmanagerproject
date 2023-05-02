package com.manager;

import java.sql.*;
public class DBConnect {
    public Connection connection;
    public DBConnect(){

        String connectionStr = "jdbc:mysql://localhost:3306/expensemanager";
        String user = "root";
        String password = "";
        Connection conn;

        {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(connectionStr, user, password);
                System.out.print("DB Connection is successful!");
                connection=conn;

            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
    }
    public  void saveExpense(String name){

    }


}

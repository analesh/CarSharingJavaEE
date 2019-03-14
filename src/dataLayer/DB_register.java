package dataLayer;

import java.sql.*;

public class DB_register {static final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
    static final String DB_URL="jdbc:mysql://localhost/Demo";

    static final String USER="webapp";
    static final String PASS= "Analesh@123";

    public void register( String username, String password,String email, String phone){


        Connection conn = null;
        Statement stmt = null;
        try{
            //STEP 2: Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");


            conn = DriverManager.getConnection(DB_URL,USER,PASS);

            //STEP 4: Execute a query

            stmt = conn.createStatement();
            String sql;
            sql="INSERT INTO `Demo`.`users` ( `username`, `password`,`email` ,`phone`) VALUES ( '"+username+"', '"+password+"'" +
                    ",'"+email+"','"+phone+"' )";

stmt.executeUpdate(sql);
            stmt.close();
            conn.close();
        }catch(SQLException se){
            //Handle errors for JDBC
            se.printStackTrace();
        }catch(Exception e){
            //Handle errors for Class.forName
            e.printStackTrace();
        }finally{
            //finally block used to close resources
            try{
                if(stmt!=null)
                    stmt.close();
            }catch(SQLException se2){
            }// nothing we can do
            try{
                if(conn!=null)
                    conn.close();
            }catch(SQLException se){
                se.printStackTrace();
            }//end finally try
        }//end try

    }

}

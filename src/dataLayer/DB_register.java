package dataLayer;

import java.sql.*;

public class DB_register implements Dbdetails {
    private Connection conn = null;
    private Statement stmt = null;
    private ResultSet rs = null;
    public void register( String username, String password,String email, String phone){



        try{
            try {
                Class.forName(DRIVER);
                conn = DriverManager.getConnection(URL, USER, PWD);
                System.out.println("connected email");
            } catch (Exception e) {
                System.out.println("Couldn't connect" + e);
            }

            stmt = conn.createStatement();
            String sql;
            sql="INSERT INTO `Demo`.`users` ( `username`, `password`,`email` ,`phone`) VALUES ( '"+username+"', '"+password+"'" +
                    ",'"+email+"','"+phone+"' )";

stmt.executeUpdate(sql);
            stmt=null;
            conn=null;
        }catch(SQLException se){
            //Handle errors for JDBC
            se.printStackTrace();
        }catch(Exception e){
            //Handle errors for Class.forName
            e.printStackTrace();
        }finally{
            //finally block used to close resources
            if(stmt!=null)
                stmt=null;
            if(conn!=null)
                conn=null;
            if(rs!=null)
                rs=null;
        }//end try

    }

}

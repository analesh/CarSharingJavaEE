package dataLayer;

import java.sql.*;

public class DB_register {
    private Connection conn = null;
    private Statement stmt = null;
    private ResultSet rs = null;
    public void register( String username, String password,String email, String phone){



        try{
            if(conn==null) {
                conn = carpool_data.getcarpool_data();
            }

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

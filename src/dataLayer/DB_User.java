package dataLayer;
import java.sql.*;

public class DB_User {
    private Connection conn = null;
    private Statement stmt = null;
    private ResultSet rs = null;

    public boolean IsvalidUser1(String sUserName, String semail){
        boolean isvaliduser =false;

        try{
            if(conn==null) {
                conn = carpool_data.getcarpool_data();
            }

            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM Demo.users WHERE username = \""+sUserName+"\" OR email = \""+semail+"\"";
            rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            while(rs.next()){
                //Retrieve by column name
               isvaliduser=true;
            }
            //STEP 6: Clean-up environment
            rs.close();
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
 return isvaliduser;
    }
    public boolean IsvalidUser(String sUserName, String sPassword){
        boolean isvaliduser1 =false;

        try{

            if(conn==null) {
                conn = carpool_data.getcarpool_data();
            }

            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM Demo.users WHERE username = \""+sUserName+"\" AND password = \""+sPassword+"\"";
            rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            while(rs.next()){
                //Retrieve by column name
                isvaliduser1=true;
            }
            //STEP 6: Clean-up environment
            rs.close();
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
        return isvaliduser1;
    }
}

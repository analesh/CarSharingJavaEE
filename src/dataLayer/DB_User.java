package dataLayer;
import java.sql.*;

public class DB_User implements Dbdetails{
    private Connection conn = null;
    private Statement stmt = null;
    private ResultSet rs = null;

    public boolean IsvalidUser1(String sUserName, String semail){
        boolean isvaliduser =false;

        try{
//            if(conn==null) {
//                conn = carpool_data.getcarpool_data();
//            }

            try {
                Class.forName(DRIVER);
                conn = DriverManager.getConnection(URL, USER, PWD);
                System.out.println("connected email");
            } catch (Exception e) {
                System.out.println("Couldn't connect" + e);
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
//            rs=null;
//            stmt=null;
//            conn=null;
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
        System.out.println(isvaliduser);
 return isvaliduser;
    }
    public boolean IsvalidUser(String sUserName, String sPassword){
        boolean isvaliduser1 =false;

        try{

            try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL, USER, PWD);
            System.out.println("connected isvalidpass");
        } catch (Exception e) {
            System.out.println("Couldn't connect" + e);
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
//            rs=null;
//            stmt=null;
//            conn=null;
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
        System.out.println(isvaliduser1);
        return isvaliduser1;
    }
}

package dataLayer;
import java.sql.*;

public class Db_findride {
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    int id;

     public boolean findride( String start_trip, String end_trip ,String time){
         boolean isvalidfind=false;
         try {
             if(conn==null) {
                 conn = carpool_data.getcarpool_data();
             }
             String query = "select * from Demo.car_details where email = ?";
             ps = conn.prepareStatement(query);
             ps.setString(1,"akhil");

             rs=ps.executeQuery();
             if(rs.next()){
                 isvalidfind=true;
                  id = rs.getInt("id");
                 System.out.println(id);

             }

         }catch(SQLException se){
             //Handle errors for JDBC
             se.printStackTrace();
         }catch(Exception e){
             //Handle errors for Class.forName
             e.printStackTrace();
         }finally{
             //finally block used to close resources
             try{
                 if(ps!=null)
                     ps.close();
             }catch(SQLException se2){
             }// nothing we can do
             try{
                 if(conn!=null)
                     conn.close();
             }catch(SQLException se){
                 se.printStackTrace();
             }//end finally try
         }//end try
     return isvalidfind;
     }

    public static void main(String[] args) {
        Db_findride obj = new Db_findride();
        System.out.println(obj.findride("dad","66","16.00"));
    }
}

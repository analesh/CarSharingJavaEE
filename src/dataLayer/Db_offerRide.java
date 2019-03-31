package dataLayer;

import java.sql.*;

public class Db_offerRide {

        private Connection conn = null;
        private PreparedStatement ps = null;
        private ResultSet rs = null;

      public boolean  offer_ride(String car_name, String start_trip, Integer occupancy, String end_trip, String time, String date,Integer price ){
          boolean isvalidride=false;
          try {
              if(conn==null) {
                  conn = carpool_data.getcarpool_data();
              }
              String query = "insert into Demo.car_detail(car_name,start_trip,occupancy,end_trip,time,date,price) values(?,?,?,?,?,?,?)";
              ps = conn.prepareStatement(query);
              ps.setString(1,car_name);
              ps.setString(2,start_trip);
              ps.setInt(3, occupancy);
              ps.setString(4,end_trip);
              ps.setString(5,time);
              ps.setString(6,date);
              ps.setInt(7,price);

              if(ps.executeUpdate()>0){
                  isvalidride=true;
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

       return isvalidride;    }


}

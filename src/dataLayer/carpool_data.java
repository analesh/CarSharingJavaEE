package dataLayer;

import java.sql.Connection;
import java.sql.DriverManager;

public class carpool_data implements Dbdetails{
    private static Connection conn = null;

    public static Connection getcarpool_data() {
        return conn;

    }



    static {
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL, USER, PWD);
            System.out.println("connected");
        } catch (Exception e) {
            System.out.println("Couldn't connect" + e);
        }
    }


    public static void main(String[] args) {
        System.out.println(getcarpool_data());
    }
}

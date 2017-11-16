package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentBean {
 
    private String username, name, fathername, rollno;
    
    public void setUsername(String username){
        this.username = username;
    }
    public String getUsername(){
        return this.username;
    }
    
    public void setName(String name){
        this.name = name;
    }
    public String getName(){
        return this.name;
    }
    
    
    public void setFathername(String fathername){
        this.fathername = fathername;
    }
    public String getFathername(){
        return this.fathername;
    }
    
    
    public void setRollno(String rollno){
        this.rollno = rollno;
    }
    public String getRollno(){
        return this.rollno;
    }
    
    public boolean validate_account(){
        
        Connection connection = null;
        String query;
        
        try {
            Class.forName("org.postgresql.Driver");    
            connection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/mytestdb",
                                                     "postgres","root");
            
            
            query =  "select * from students where roll_no = ?;";
            
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            
            if ( rs.next() ){
                this.rollno = rs.getString(1);
                this.name = rs.getString(2);
                this.fathername = rs.getString(3);
                return true;
            }
            else{
                return false;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return false;
    }
}

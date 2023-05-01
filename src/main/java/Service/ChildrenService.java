package Service;

import DBConnection.DBConnection;
import Model.Children;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ChildrenService {

    //    Insert Children Or Registration
    public void insertChildren(Children child) {
        String query = "INSERT INTO `children`(`firstname`, `lastname`, `email`, `dob`, `password`, `checkbox`)" + " VALUES(?,?,?,?,?,?) ";

//      PreparedStatement
        PreparedStatement pstm = new DBConnection().getStatement(query);


        try {
            pstm.setString(1, child.getFirstname());
            pstm.setString(2, child.getLastname());
            pstm.setString(3, child.getEmail());
            pstm.setString(4, child.getDob());
            pstm.setString(5, child.getPassword());
            pstm.setString(6, String.valueOf(child.isCheckbox()));


            pstm.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    //    Login Children Details into Database
    public Children getChildren(String email, String password) {

        Children child = null;
        String query = "select * from children where email=? and password=?";

        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setString(1, email);
            pstm.setString(2, password);

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                child = new Children();
                child.setId(rs.getInt("id"));
                child.setFirstname(rs.getString("firstname"));
                child.setLastname(rs.getString("lastname"));
                child.setEmail(rs.getString("email"));
                child.setDob(rs.getString("dob"));
                child.setPassword(rs.getString("password"));
                child.setCheckbox(rs.getString("checkbox"));

                System.out.println(child.getEmail() + " " + child.getPassword());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return child;
    }


    //    Get the list of children
    public List<Children> getChildrenList() {
        List<Children> childrenList = new ArrayList<>();
        String query = "select * from children";
        System.out.println(query);
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Children child = new Children();

                child.setId(rs.getInt("id"));
                child.setFirstname(rs.getString("firstname"));
                child.setLastname(rs.getString("lastname"));
                child.setEmail(rs.getString("email"));
                child.setDob(rs.getString("dob"));
                child.setPassword(rs.getString("password"));

                childrenList.add(child);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return childrenList;
    }

}


package UserService;
import DBConnection.DBConnection;
import Model.User;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserService {
    public void insertUser(User user){
        String query = "insert into user (username, password)" +
                "values(?,?)";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            pstm.setString(1, user.getName());
            pstm.setString(2, user.getPassword());

            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}

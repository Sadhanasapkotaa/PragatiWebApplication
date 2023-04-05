package Controller;

import Hashing.HashingPassword;
import Model.Children;
import Service.ChildrenService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "AdminServlet", value = "/adminServlet")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String action = request.getParameter("adminpage");
        System.out.println(action);

        if (action.equalsIgnoreCase("register")) {

//          Create an object in the same name as model
            Children child = new Children();

//          Get the values from user's form and set it to the model and redirect it to service page for database action

//          ONE: Set values to the child object according to model
//          The firstname here is the name of the fields on form

            child.setFirstname(request.getParameter("firstname"));
            child.setLastname(request.getParameter("lastname"));
            child.setEmail(request.getParameter("email"));
            child.setDob("dob");
            child.setPassword(HashingPassword.hashPassword(request.getParameter("password")));
            child.setCheckbox("terms");

//          Redirect to Service Page
            new ChildrenService().insertChildren(child);

//          Redirect to Index.jsp
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
    }
}

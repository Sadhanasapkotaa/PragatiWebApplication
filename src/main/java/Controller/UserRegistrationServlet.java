package Controller;

import Hashing.HashingPassword;
import Model.Children;
import Service.ChildrenService;
import Model.Children;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.List;

@WebServlet(name = "UserRegistrationServlet", urlPatterns = "/childrenservlet")
public class UserRegistrationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("page");
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
            child.setDob(request.getParameter("dob"));
            child.setPassword(HashingPassword.hashPassword(request.getParameter("password")));
            child.setCheckbox("terms");

//          Redirect to Service Page
            new ChildrenService().insertChildren(child);

//          Redirect to Index.jsp
            RequestDispatcher rd = request.getRequestDispatcher("Pages/User/userDashboard.jsp");
            rd.forward(request, response);
        }


//        User Login
        if (action.equalsIgnoreCase("login")) {
//            PrintWriter out = response.getWriter();
//            out.print("login");
            String email = request.getParameter("email");
            String password = HashingPassword.hashPassword(request.getParameter("password"));
            System.out.println(email + " " + password + " ");

            Children child = new ChildrenService().getChildren(email, password);

//            System.out.println(user.getUsername()+" "+user.getPassword());
            if (child != null) {
                HttpSession session = request.getSession();
                session.setAttribute("uid", child.getId());
                session.setAttribute("firstname", child.getFirstname());
                session.setAttribute("user", child);

                System.out.println(session.getAttribute("user"));

                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));

                RequestDispatcher rd = request.getRequestDispatcher("Pages/User/userDashboard.jsp");
                rd.forward(request, response);
            } else {

                request.setAttribute("msg", "Invalid email or password");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
        }



//        List Users
        if (action.equalsIgnoreCase("childrenList"))
        {
            Children child = new Children();
            List<Children> childList = new ChildrenService().getChildrenList();
            request.setAttribute("childList", childList);
            request.setAttribute("child", child);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/User/userList.jsp");
            rd.forward(request, response);
        }
    }
}

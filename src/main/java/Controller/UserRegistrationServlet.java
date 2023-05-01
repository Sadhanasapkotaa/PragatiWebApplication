package Controller;

import Hashing.HashingPassword;
import Model.Children;
import Service.ChildrenService;
import com.stripe.Stripe;
import com.stripe.exception.*;
import com.stripe.model.Charge;
import com.stripe.model.Customer;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

            Stripe.apiKey = "sk_test_51MyzrsIgSmKSEGfNSxuPFfkYgGVqGW6gmNM95crrIHcqNzGPG2GQ72YlQI0erhbDhXIU5gi0Dq9VLMnfeOuH3A5m00JP1DZXbp";

            Map<String, Object> customerParams = new HashMap<String, Object>();
            customerParams.put("description", request.getParameter("firstname") + " " + request.getParameter("lastname"));
            customerParams.put("email", request.getParameter("email"));



//            Create a session for registration and redirect directly to Dashboard after Registration

            if (child != null) {
                HttpSession session = request.getSession();
                session.setAttribute("uid", child.getId());
                session.setAttribute("firstname", child.getFirstname());
                session.setAttribute("user", child);
                session.setAttribute("myname", "Sadhana");

                Customer stripeCustomer = new Customer();
                try {
                    stripeCustomer = Customer.create(customerParams);
                }
                catch (CardException e) {
                    // Transaction failure
                } catch (RateLimitException e) {
                    // Too many requests made to the API too quickly
                } catch (InvalidRequestException e) {
                    // Invalid parameters were supplied to Stripe's API
                } catch (AuthenticationException e) {
                    // Authentication with Stripe's API failed (wrong API key?)
                } // Network communication with Stripe failed
                catch (StripeException e) {
                    // Generic error
                } catch (Exception e) {
                    // Something else happened unrelated to Stripe
                }

                String myId = stripeCustomer.getId();
                System.out.println(myId);

//             Atribiutes for stripe to be stored during the session coming from stripe
                session.setAttribute("stripeid", myId);



                System.out.println(session.getAttribute("user"));

                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));

                RequestDispatcher rd = request.getRequestDispatcher("Pages/User/userSubscription.jsp");
                rd.forward(request, response);
            } else {

                request.setAttribute("msg", "Invalid email or password");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }

//          Redirect to Index.jsp
//            RequestDispatcher rd = request.getRequestDispatcher("Pages/User/userDashboard.jsp");
//            rd.forward(request, response);
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

//        Payment
        if (action.equalsIgnoreCase("payment")){

            // Stripe requires the charge amount to be in cents

            Map<String, Object> chargeParams = new HashMap<String, Object>();
            chargeParams.put("amount", request.getParameter("price"));
            chargeParams.put("currency", "nrp");
            chargeParams.put("description", request.getParameter("plan"));
            chargeParams.put("customer", request.getParameter("customerId"));

            try {
                // Submit charge to credit card
                Charge charge = Charge.create(chargeParams);
                System.out.println(charge);
            } catch (CardException e) {
                // Transaction was declined
                System.out.println("Status is: " + e.getCode());
                System.out.println("Message is: " + e.getMessage());
            } catch (RateLimitException e) {
                // Too many requests made to the API too quickly
            } catch (InvalidRequestException e) {
                // Invalid parameters were supplied to Stripe's API
            } catch (AuthenticationException e) {
                // Authentication with Stripe's API failed (wrong API key?)
            }  catch (StripeException e) {
                // Generic error
            } catch (Exception e) {
                // Something else happened unrelated to Stripe
            }

        }
    }
}

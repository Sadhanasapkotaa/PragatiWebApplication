package com.example.pragatia;

import java.io.*;

import Model.User;
import UserService.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", urlPatterns = "/user")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");


        User user = new User();
        user.setName(req.getParameter("username"));
        user.setPassword(req.getParameter("password"));

        new UserService().insertUser(user);
    }

    public void destroy() {
    }
}
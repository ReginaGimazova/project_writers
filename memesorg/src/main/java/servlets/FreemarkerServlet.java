package servlets;

import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns = "*.ftl")
public class FreemarkerServlet extends freemarker.ext.servlet.FreemarkerServlet {
}
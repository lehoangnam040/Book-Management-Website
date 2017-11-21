/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nam
 */
public class HomeController extends BaseLoginController {

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    @Override
    public void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String role = (String) session.getAttribute("account role");
        if (role.equals("student")) {
//            BookDAO bookDAO = new BookDAO();
//            ArrayList<String> categories = bookDAO.getAllCategories();
//            request.setAttribute("categories", categories);
//            ArrayList<String> languages = bookDAO.getAllLanguages();
//            request.setAttribute("languages", languages);
//            ArrayList<String> formats = bookDAO.getAllFormats();
//            request.setAttribute("formats", formats);
//            request.getRequestDispatcher("/student/searchview").forward(request, response);
            response.sendRedirect("student/search");
        } else {
            response.sendRedirect("admin/search");
            //request.getRequestDispatcher("/admin/mainview").forward(request, response);
        }
    }

    @Override
    public void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}

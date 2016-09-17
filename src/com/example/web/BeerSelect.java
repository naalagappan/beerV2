package com.example.web;

import com.example.mod.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class BeerSelect extends HttpServlet
{
   public void doPost(HttpServletRequest req, HttpServletResponse resp)
   throws IOException, ServletException
   {
      String c = req.getParameter("color");
      BeerExpert be = new BeerExpert();
      ArrayList<String> result = be.getBrands(c);
      req.setAttribute("styles", result);
      RequestDispatcher view = req.getRequestDispatcher("result.jsp");
      view.forward(req,resp);
   }
}

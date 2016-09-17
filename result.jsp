<%@ page import="java.util.*" %>

<html>
<body>
<h1 align="center">Beer Recommendations JSP</h1>
<p>
<%--
   List<String> styles = (List<String>)request.getAttribute("styles");
   <c:forEach items="${styles}" var="item">
    ${item}<br>
   </c:forEach>
--%>
<%--
   List<String> styles = (List<String>)request.getAttribute("styles");
   for (int i=0;i<styles.size();i++)
          {
              out.println("<br>try: " + styles.get(i));
          }
--%>
<%--
   List<String> styles = (List<String>)request.getAttribute("styles");
   Iterator<String> iterator = styles.iterator();
   while (iterator.hasNext())
   {
      out.println("<br>try: " + iterator.next());
   }
--%>
<%
   List<String> styles = (List<String>)request.getAttribute("styles");
   if (styles != null)
   {
      for (String item : styles)
      {
         out.print("<br>try: " + item);
      }
   }
%>
</body>
</html>

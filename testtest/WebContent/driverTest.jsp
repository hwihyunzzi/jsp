<%@ page contentType="text/html;charset=utf-8" %>
 <%@ page import="java.sql.*" %>
<!-- <html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body> -->
<!-- asd -->
  <%
   Connection con=null;

   try {
     String jdbcUrl="jdbc:mysql://localhost:3306";
     String dbId="root";
     String dbPass="123456";

     Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection(jdbcUrl,dbId,dbPass);

     out.println("정상적으로 연결되었습니다.");
     } catch(Exception e) {
          e.printStackTrace();
     }
  %>

<!-- </body>
</html> -->

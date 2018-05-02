
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:useBean id = "lst" class = "pagectrl.vCust" /> 
        <h1>Hello World!</h1>
    <c:forEach var="listItm" items="${lst.lst}">

   <tr>

      <td> ${customer.name} </td> <td> ${customer.surname} </td>

   </tr>

</c:forEach>
    </body>
    
    
</html>

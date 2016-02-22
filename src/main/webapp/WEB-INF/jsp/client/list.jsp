<%-- 
    Document   : list
    Created on : Apr 22, 2011, 2:25:22 PM
    Author     : FMilens
--%>

<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Client Listing</title>
    </head>
    <body>
        <h1>Client Listing</h1>     
        <p><a href="${pageContext.request.contextPath}/client/create">Create New Client</a></p>
        <c:choose>
            <c:when test="${fn:length(clients) gt 0}">
                <table>
                    <thead>
                        <tr>
                            <th>Company</th>
                            <th>Website</th>
                            <th>Phone Number</th>
                            <th>Contacts</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${clients}" var="client">
                            <tr>
                                <td>${client.key.companyName}</td>
                                <td>${client.key.website}</td>
                                <td>${client.key.phoneNumber}</td>
                                <td>${client.value}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/client/edit/${client.key.clientId}">Edit Client</a>
                                    <a href="${pageContext.request.contextPath}/client/delete/${client.key.clientId}">Delete Client</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <p>No results found.</p>
            </c:otherwise>
        </c:choose>
    </body>
</html>

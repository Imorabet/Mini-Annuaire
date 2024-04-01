<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.web.model.Departement" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Department List</title>
</head>
<body>
    <h1>Department List</h1>
    <ul>
        <% 
            // Retrieve departments from request attribute
            List<Departement> departments = (List<Departement>) request.getAttribute("departments");
            // Iterate over departments and display them
            for (Departement department : departments) { 
        %>
            <li><%= department.getNom() %></li>
        <% } %>
    </ul>
</body>
</html>

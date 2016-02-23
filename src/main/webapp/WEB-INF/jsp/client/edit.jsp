<%-- 
    Document   : edit
    Created on : Apr 22, 2011, 3:04:46 PM
    Author     : FMilens
--%>

<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest JQuery 2-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
          integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/home/landing">CRUD</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="/home/landing">Home</a></li>
                    <li><a href="/person/list">People</a></li>
                    <li><a href="/client/list">Clients</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </nav>
        <h1>Edit Client</h1>
        <c:if test="${fn:length(errors) gt 0}">
            <p>Please correct the following errors in your submission:</p>
            <ul>
                <c:forEach items="${errors}" var="error">
                    <li>${error}</li>
                </c:forEach>
            </ul>
        </c:if>
        <form action="${pageContext.request.contextPath}/client/edit" class="form-horizontal" method="POST">
            <input type="hidden" name="clientId" value="${client.clientId}"/>
            <div class="form-group">
                <label for="companyName" class="control-label col-sm-2">Company Name:</label>
                <div class="col-sm-4">
                    <input type="text" name="companyName" class="form-control" value="${client.companyName}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="website" class="control-label col-sm-2">Website:</label>
                <div class="col-sm-4">
                    <input type="text" name="website" class="form-control" value="${client.website}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="phoneNumber" class="control-label col-sm-2">Phone Number:</label>
                <div class="col-sm-4">
                    <input type="text" name="phoneNumber" class="form-control" value="${client.phoneNumber}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="streetAddress" class="control-label col-sm-2">Street Address:</label>
                <div class="col-sm-4">
                    <input type="text" name="streetAddress" class="form-control" value="${client.streetAddress}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="city" class="control-label col-sm-2">City:</label>
                <div class="col-sm-4">
                    <input type="text" name="city" class="form-control" value="${client.city}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="state" class="control-label col-sm-2">State:</label>
                <div class="col-sm-4">
                    <input type="text" name="state" class="form-control" value="${client.state}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="zipCode" class="control-label col-sm-2">Zip Code:</label>
                <div class="col-sm-4">
                    <input type="text" name="zipCode" class="form-control" value="${client.zipCode}"/>
                </div>
            </div>
            <input type="submit" name="Submit" class="btn btn-default" value="Submit"/>
        </form>
    </body>
</html>

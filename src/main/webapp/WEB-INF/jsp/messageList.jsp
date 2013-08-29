<%-- 
    Document   : messageList
    Created on : Aug 28, 2013, 8:03:34 AM
    Author     : ea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="/assets/ico/favicon.png">

    <title>Message List</title>

    <!-- Bootstrap core CSS -->
    <link href="/assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="/assets/js/html5shiv.js"></script>
      <script src="/assets/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <jsp:include flush="true" page="/assets/inc/top-navbar.jsp">
         <jsp:param name="activeState" value="list" />
    </jsp:include> 
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>List Messages</h1>
        <p>Here is the list of messages.</p>
        <p><a class="btn btn-primary btn-lg" href="/messagePost">Post Message</a></p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
          <c:choose>
              <c:when test="${not empty messages}">
                <c:forEach items="${messages}" var="message">
                      <div class="col-lg-4">
                          <ul>
                              <li>Author: ${message.author}</li>
                              <li>Title: ${message.title}</li>
                              <li>Body: ${message.body}</li>
                              <li><a class="btn btn-success" href="messageDelete?messageId=${message.id}">Delete</a></li>
                          </ul>
                      </div>
                  </c:forEach>
              </c:when>
              <c:otherwise>
                <div class="col-lg-4">
                  Empty
                </div>
              </c:otherwise>
          </c:choose>
      </div>

      <hr>

      <footer>
        <p>&copy; Company 2013</p>
      </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/assets/js/jquery.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>
  </body>
</html>


<%-- 
    Document   : messagePost
    Created on : Aug 28, 2013, 8:33:43 AM
    Author     : ea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.png">

    <title>Post Messages</title>

    <!-- Bootstrap core CSS -->
    <link href="../../assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
      <jsp:include flush="true" page="/assets/inc/top-navbar.jsp">
          <jsp:param name="activeState" value="post" />
      </jsp:include> 
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Post Messages</h1>
        <p>This is where you post messages.</p>
        <p><a class="btn btn-primary btn-lg" href="/messageList">List Messages</a></p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
          <div class="col-lg-4">
             <form:form cssClass="form-signin" method="POST" modelAttribute="message">
              <h2 class="form-signin-heading">Post New Messages Here</h2>
              <form:input path="title" cssClass="form-control" placeholder="Title" autofocus="autofocus" />   
              <form:textarea path="body" cssClass="form-control" placeholder="Body" />
              
              <button class="btn btn-lg btn-primary btn-block" type="submit">Post</button>
             </form:form>
          </div>    
      </div>

      <hr>

      <footer>
        <p>&copy; Company 2013</p>
      </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../assets/js/jquery.js"></script>
    <script src="../../assets/js/bootstrap.min.js"></script>
  </body>
</html>

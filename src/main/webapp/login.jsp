<%-- 
    Document   : login.jsp
    Created on : Aug 28, 2013, 12:53:44 PM
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
    <link rel="shortcut icon" href="../../assets/ico/favicon.png">

    <title>Login to Felizdia.com</title>

    <!-- Bootstrap core CSS -->
    <link href="../../assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../assets/css/login.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">
        <jsp:include flush="true" page="/assets/inc/top-navbar.jsp" />
        <form class="form-signin" method="POST" action="<c:url value="/j_spring_security_check" />">
            <h2 class="form-signin-heading">Please sign in ${param.name}</h2>
            <c:if test="${not empty param.error}">
                Oops.  ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}.
            </c:if>
            <input type="text" class="form-control" placeholder="Username" name="j_username" autofocus>
            <input type="password" class="form-control" placeholder="Password" name="j_password">
            <label class="checkbox">
              <input type="checkbox" value="remember-me" name="_spring_security_remember_me"> Remember me
            </label>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
          </form>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
</html>


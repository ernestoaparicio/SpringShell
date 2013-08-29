<%-- 
    Document   : top-navbar
    Created on : Aug 28, 2013, 1:39:38 PM
    Author     : ea
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
          <a class="navbar-brand" href="/">FelizDia.com</a>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li <c:if test="${param.activeState == 'home'}">class="active"</c:if>><a href="/">Home</a></li>
          <li <c:if test="${param.activeState == 'list'}">class="active"</c:if>><a href="/messageList">Message List</a></li>
          <li <c:if test="${param.activeState == 'post'}">class="active"</c:if>><a href="/messagePost">Message Post</a></li>
        </ul>
          <sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_USER">
              <a href="<c:url value="/logout.jsp" />">Log out dude</a>
          </sec:authorize>
          <sec:authorize ifNotGranted="ROLE_ADMIN,ROLE_USER">
              <form class="navbar-form navbar-right" method="POST" action="<c:url value="/j_spring_security_check" />">  
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Username" name="j_username" autofocus>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Password" name="j_password">
                </div>
                <button type="submit" class="btn btn-success">Sign in</button>
              </form>
          </sec:authorize>    
      </div><!--/.navbar-collapse -->
    </div>
</div>

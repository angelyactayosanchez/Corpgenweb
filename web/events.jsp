<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="models.User" %><%--
  Created by IntelliJ IDEA.
  User: root
  Date: 23/11/17
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user=(User)session.getAttribute("usuario");

    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css"> </head>

<body>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" id="navSuperior">
    <a class="navbar-brand" href="users?action=index" id="nameCompany">Corpgenweb</a>
    <div class="container-fluid">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
        <div class="collapse navbar-collapse text-center justify-content-end" id="navbar2SupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item active" id="Index">
                    <a class="nav-link" href="users?action=index">Inicio</a>
                </li>
                <li class="nav-item" id="Locations">
                    <a class="nav-link" href="businesses?action=index">Negocios</a>
                </li>
                <li class="nav-item" id="Products">
                    <a class="nav-link" href="products?action=index">Productos</a>
                </li>
                <li class="nav-item" id="Promotions">
                    <a class="nav-link" href="event?action=index">Eventos</a>
                </li>
            </ul>
            <a class="btn navbar-btn ml-2 text-white btn-secondary" href="users?action=profile" id="UseProfile"> <i class="fa d-inline fa-lg fa-user-circle-o"></i>Hola ${sessionScope.namef}&nbsp;</a>
            <a class="btn navbar-btn ml-2 text-white btn-secondary" href="logout.jsp"><i class="fa fa-fw fa-sign-out"></i>Salir</a>
        </div>
    </div>
</nav>
<div class="p-5"></div>
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="list-group">
                                    <li class="list-group-item"><i class="fa fa-fw fa-newspaper-o"></i>
                                        <a href="">Nueva promociones</a>
                                    </li>
                                    <li class="list-group-item"><i class="fa fa-fw fa-calendar-check-o"></i>
                                        <a href="">Promocion del dia</a>
                                    </li>
                                    <li class="list-group-item"><i class="fa fa-fw fa-music"></i>
                                        <a href="">Discotecas</a>
                                    </li>
                                    <li class="list-group-item"><i class="fa fa-fw fa-glass"></i>
                                        <a href="">Bares</a>
                                    </li>
                                    <li class="list-group-item"><i class="fa fa-fw fa-microphone"></i>
                                        <a href="">Karaokes</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9  offset-md-2">
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>Promocion</th>

                                        <th class="">Mas info</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="event" items="${events}">
                                    <tr>
                                        <td><c:out value="${event.name}"/></td>

                                        <td><a href="event?action=info&pId=${event.id}" class="btn btn-outline-secondary">Mas Info.</a></td>
                                    </tr>

                                    </tbody>
                                    </c:forEach>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="py-5">
    <div class="container"></div>
</div>
<div class="bg-dark text-white">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <p class="lead">Sign up to our newsletter for the latest news</p>
                <form class="form-inline">
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Your e-mail here"> </div>
                    <button type="submit" class="btn btn-primary ml-3">Subscribe</button>
                </form>
            </div>
            <div class="col-4 col-md-1 align-self-center">
                <a href="https://www.facebook.com" target="_blank"><i class="fa fa-fw fa-facebook fa-3x text-white"></i></a>
            </div>
            <div class="col-4 col-md-1 align-self-center">
                <a href="https://twitter.com" target="_blank"><i class="fa fa-fw fa-twitter fa-3x text-white"></i></a>
            </div>
            <div class="col-4 col-md-1 align-self-center">
                <a href="https://www.instagram.com" target="_blank"><i class="fa fa-fw fa-instagram text-white fa-3x"></i></a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 mt-3 text-center">
                <p>© Copyright 2017 Pingendo - All rights reserved.</p>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>

</html>
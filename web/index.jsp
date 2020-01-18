<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head> 
        <title>Sahel</title>
        <link rel="stylesheet"  href="bootstrap.css">
        <link rel="stylesheet"  href="index.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    </head>
    <body>
    <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="index.htm"> <img src="https://img.icons8.com/ios/32/000000/rhombus-filled.png"> SALAFLI</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link active" href="index.htm">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Reservation.htm">Reservation</a>
                </li>


                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addCar.htm" tabindex="-1" aria-disabled="false">Add Car</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit" >Search</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a class="nav-link" href="SignUp.htm"><span>Sign Up</span> </a></li>
                <li><a class="nav-link" href="SignIn.htm"><span>Login</span></a></li>
            </ul>

        </div>
    </nav>
    <div class="container">
        <div class="jumbotron">
            <h1><i class="fas fa-car"></i> SALLAFLI</h1>
            <p>
                Laboris sint reprehenderit consectetur fugiat reprehenderit nisi 
                est velit duis excepteur proident excepteur consequat exercitation
                in quis. Culpa anim non enim magna pariatur ut ex ad nostrud sunt.
                Ut eu qui do laboris in et fugiat esse exercitation tempor laborum.
                Laboris sint reprehenderit consectetur fugiat reprehenderit nisi 
                est velit duis excepteur proident excepteur consequat exercitation
                in quis. Culpa anim non enim magna pariatur ut ex ad nostrud sunt.
                Ut eu qui do laboris in et fugiat esse exercitation tempor laborum.
                Laboris sint reprehenderit consectetur fugiat reprehenderit nisi 
                est velit duis excepteur proident excepteur consequat exercitation
                in quis. Culpa anim non enim magna pariatur ut ex ad nostrud sunt.
                Ut eu qui do laboris in et fugiat esse exercitation tempor laborum.
            </p>
        </div>



        <div class="row">
            <c:forEach var="list" items="${lista}">
                <div class="col-lg-4 col-md-6 col-sm-8">

                    <div class="img-thumbnail">

                        <img src="${list.pictureURL}">
                    </div>
                    <div class="container shadow-sm p-3 mb-5 bg-white rounded">
                        <div class="row">
                            <div class="name-box col-4">
                                <p>Brand: ${list.brand}</p>
                            </div>
                            <div class="price-box col-4">
                                <p>Price: ${list.price} DA</p>
                            </div>
                            <div class="state-box col-4">
                                <p>State: ${list.state}</p>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="edit-box col-6">
                                        <a href="UpdateCar.htm?id=${list.IDCar}">Edit</a>
                                    </div>
                                    <div class="delete-box col-6">
                                        <a href="DeleteCar.htm?id=${list.IDCar}">Delete</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </c:forEach>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
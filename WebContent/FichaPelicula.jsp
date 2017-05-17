<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>
<%@ page import="Beans.*" %>
<%@ page import="modelo.*" %>
<%
//Parametroak jaso
//id


//idarekin pelicula lortu modeloari eskatuta

%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>s�ptimoVicio</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Buscar">
      </div>
      <button type="submit" class="btn btn-default">Enviar</button>
    </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Registrarse</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"></span> Iniciar sesi�n</a></li>
      </ul>
    </div>
  </div>
</nav>
 
<div class="container-fluid text-center"> 
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#">Iniciar Sesi�n</a></p>
      <p><a href="#">Registrarse</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
    <form action="FichaPelicula.jsp" method="post">
		<input type="text" name="nombre" id="nombre" /> <br>
		T�tulo Original:  <%= pelicula.getTitulo() %>  <input type="text" value="<%= %>" name="titulo_original" id="T�tulo Original" /> <br>
		A�o: <input type="text" name="A�o" id="A�o" /> <br>
		Duraci�n: <input type="text" name="Duraci�n" id="Duraci�n" /> <br>
		Pa�s: <input type="text" name="Pa�s" id="Pa�s" /> <br>
		Director: <input type="text" name="Director" id="Director" /> <br>
		Gui�n: <input type="text" name="Gui�n" id="Gui�n" /> <br>
		Fotograf�a: <input type="text" name="Fotograf�a" id="Fotograf�a" /> <br> 
		Reparto: <input type="text" name="Reparto" id="Reparto" /> <br>
		Productora: <input type="text" name="Productora" id="Productora" /> <br>
		Genero: <input type="text" name="Genero" id="Genero" /> <br>
		Sinopsis: <input type="text" name="Sinopsis" id="Sinopsis" /> <br>
		Premios: <input type="text" name="Premios" id="Premios" /> <br>
		Cr�ticas: <input type="text" name="Cr�ticas" id="Cr�ticas" /> <br>
		
	</form>
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>
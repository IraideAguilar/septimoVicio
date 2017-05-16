<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="Beans.*" %>
<%@ page import="modelo.*" %>
<%
//Parametroak jaso
String tituloOriginal = request.getParameter("Título Original");
int anio = Integer.parseInt(request.getParameter("Año"));
int duracion = Integer.parseInt(request.getParameter("Duración"));
String pais = request.getParameter("País");
String director = request.getParameter("Director");
String guion = request.getParameter("Guión");
String fotografia = request.getParameter("Fotografía");
String reparto = request.getParameter("Reparto");
String productora = request.getParameter("Productora");
String genero = request.getParameter("Genero");
String sinopsis = request.getParameter("Sinopsis");
String premios = request.getParameter("Premios");
String criticas = request.getParameter("Críticas");

//crear objetos
Pelicula pelicula = new Pelicula();

pelicula.setTituloOriginal(tituloOriginal);
pelicula.setAnioPelicula(anio);
pelicula.setDuracion(duracion);
pelicula.setPais(pais);
pelicula.setDirector(director);
pelicula.setGuion(guion);
pelicula.setFotografia(fotografia);
pelicula.setReparto(reparto);
pelicula.setProductora(productora);
pelicula.setGenero(genero);
pelicula.setSinopsis(sinopsis);
pelicula.setPremios(premios);
pelicula.setCriticas(criticas);

//Datu basean egin beharrekoa

ModeloPelicula modeloPelicula = new ModeloPelicula();
modeloPelicula.selectPeliculaPorTituloOriginal(tituloOriginal);
%>


</body>
</html>
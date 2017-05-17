package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Beans.Pelicula;


public class ModeloPelicula extends Conector{
	
	public Pelicula selectPeliculaPorTituloOriginal(String tituloOriginal) {
		try {
			Statement st = this.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from peliculas where nombre='" + tituloOriginal + "'");
			rs.next();
			Pelicula pelicula = new Pelicula(rs.getInt("idPelicula"), rs.getString("tituloPaisPelicula"), tituloOriginal, rs.getInt("anioPelicula"), rs.getInt("duracion"), rs.getString("pais"), rs.getString("director"), rs.getString("guion"), rs.getString("musica"), rs.getString("fotografia"), rs.getString("reparto"), rs.getString("productora"),rs.getString("genero"), rs.getString("sinopsis"), rs.getString("premios"), rs.getString("criticas"));
			return pelicula;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}


public Pelicula selectPorId(int id) {
	try {
		Statement st = this.conexion.createStatement();
		ResultSet rs = st.executeQuery("select * from peliculas where id='" + id + "'");
		rs.next();
		Pelicula pelicula = new Pelicula();
		pelicula.setIdPelicula(rs.getInt("idPelicula"));
		pelicula.setTituloPaisPelicula(rs.getString("tituloPaisPelicula"));
		pelicula.setTituloOriginal(rs.getString("tituloOriginal"));
		pelicula.setAnioPelicula(rs.getInt("anioPelicula"));
		pelicula.setDuracion(rs.getInt("duracion"));
		pelicula.setPais(rs.getString("pais"));
		pelicula.setDirector(rs.getString("director"));
		pelicula.setGuion(rs.getString("guion"));
		pelicula.setMusica(rs.getString("musica"));
		pelicula.setFotografia(rs.getString("fotografia"));
		//segitu
		return pelicula;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
}
}

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

}

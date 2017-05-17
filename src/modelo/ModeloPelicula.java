package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Beans.Pelicula;


public class ModeloPelicula extends Conector{
	
	public Pelicula selectPeliculaPorTituloOriginal(String tituloOriginal) {
		try {
			Statement st = this.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from peliculas where nombre='" + tituloOriginal + "'");
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
			pelicula.setReparto(rs.getString("reparto"));
			pelicula.setProductora(rs.getString("productora"));
			pelicula.setGenero(rs.getString("genero"));
			pelicula.setSinopsis(rs.getString("sinopsis"));
			
			return pelicula;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Pelicula> seleccionarTodos(){
		ArrayList<Pelicula> peliculas = new ArrayList<Pelicula>();
		try{
			Statement st = this.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from peliculas");
			while(rs.next()){
				peliculas.add(new Pelicula(rs.getInt("idPelicula"),rs.getString("tituloPaisPelicula"),rs.getString("tituloOriginal"),rs.getInt("anioPelicula"),rs.getInt("duracion"),rs.getString("pais"),rs.getString("director"),rs.getString("guion"),rs.getString("musica"),rs.getString("fotografia"),rs.getString(columnIndex)))
			}
		}
		
		return null;
		
	}
}

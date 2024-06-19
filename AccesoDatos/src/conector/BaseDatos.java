package conector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BaseDatos {
	
	private static final String Driver = "com.mysql.jdbc.Driver"; 
	private static final String URL_CONEXION ="jdbc:mysql://localhost:3306/concesionario";

	public static void main(String[] args) throws Throwable {

final String usuario = "root";
final String password ="J@va2024";
Connection conexion =null;
Statement statement = null;

try {
	Class.forName(Driver);
	conexion = DriverManager.getConnection(URL_CONEXION, usuario, password);
	String sentencia ="SELECT DNI , Nombre, Apellido, Ciudad FROM clientes";
	statement = conexion.createStatement();
	ResultSet rs = statement.executeQuery(sentencia);
	while(rs.next()) {
		String dni = rs.getString("DNI");
		String nombre = rs.getString("Nombre");
		String apellido = rs.getString("Apellido");
		String ciudad = rs.getString("Ciudad");
	System.out.println( "DNI: " + dni);
	System.out.println("Nombre: " + nombre);
	System.out.println("Apellido: " + apellido);	
	System.out.println("Ciudad: " + ciudad);	
	}
} catch (ClassNotFoundException e) {
	System.out.println("No se encuentra el driver");
	e.printStackTrace();
} catch (SQLException e) {
	System.out.println("algo va mal en la bbdd, has realizado una consular errónea");
	e.printStackTrace();
}
finally {
	if(statement != null) {
		statement.close();
	}
	if (conexion != null) {
		conexion.close();
	}
}

	}

}

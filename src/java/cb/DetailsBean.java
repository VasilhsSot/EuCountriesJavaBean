package cb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DetailsBean {
	private String capital;
	private String language;
	private String currency;
	
	public DetailsBean(){}

	public void getDetails(String country){
		
		Connection conn = null;
		Statement statement = null;
		ResultSet rsResult = null;

	    try {
	    	// get connection  	
	    	conn = DriverManager.getConnection("jdbc:mysql://" + 
	    				"localhost/test?useUnicode=yes&characterEncoding=UTF-8&useSSL=false", 
	    				"admin", "admin");

		// Query the database
		String SQLStr = "SELECT * FROM eu_countries " +
	    		"WHERE COUNTRY='" + country + "';";		
		
		statement = conn.createStatement();
    	rsResult = statement.executeQuery(SQLStr);
    	
    	if(rsResult.next()) {
    		capital = rsResult.getString("capital").trim();
    		language = rsResult.getString("language").trim();
    		currency = rsResult.getString("currency").trim();
    	}
		System.out.println(SQLStr);
	    } catch (SQLException sqlEx) {
		   	System.err.println(sqlEx.getMessage());
		} catch (Exception ex) {
		   	System.err.println(ex.getMessage());
		} finally {
	    	try {
		    if (statement != null) {
	        	statement.close();
		    }
		    if (rsResult != null) {
	        	rsResult.close();
		    }
		    conn.close();
	    	} catch(final SQLException sqlEx){
	    		System.err.println(sqlEx.getMessage());
	    	}
	    }
	}
	
	public String getCapital() {
		return capital;
	}

	public void setCapital(String capital) {
		this.capital = capital;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}
}
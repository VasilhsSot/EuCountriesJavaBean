<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Home</title>
</head>
<body style="text-align: center">
	<div style="width: 750px; margin: auto; display: inline-block;">
		<h1>Κράτη-μέλη ΕΕ</h1>

		<br /> 
		<br /> 
		Γράψτε το όνομα ενός κράτους-μέλους της ΕΕ στο
		αντίστοιχο πεδίο για να πληροφορηθείτε την πρωτεύουσά της, τη γλώσσα
		και το νόμισμα που χρησιμοποιεί. Χρησιμοποιήστε μόνο κεφαλαίους
		ελληνικούς χαρακτήρες 
		<br /> 
		
		<br />
		<hr width="750" />
		<br /> 
		<br />
		<form action="details.jsp" method="post">
			<table border="1" style="margin: auto">
				<tr>
					<td colspan="2" align="center">Εύρεση Πληροφοριών</td>
				</tr>
				<tr>
					<td>Χώρα:</td>
					<td><input type="text" name="country" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Αναζήτηση" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
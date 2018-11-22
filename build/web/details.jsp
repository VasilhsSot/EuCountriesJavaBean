<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="details" scope="request" class="cb.DetailsBean" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Details page</title>
</head>
<body>
	<br>
	<br>
	<div style="width: 400px; margin: auto; text-align: center">
		<%
			request.setCharacterEncoding("utf-8");

			if (request.getParameter("country") != null && !request.getParameter("country").equals(""))
				details.getDetails(request.getParameter("country"));
			if (details.getCapital() != null) {
		%>
		<div>
			<table border="1" style="margin: auto;">
				<tr>
					<td colspan="2">Χώρα: <%=request.getParameter("country")%></td>
				</tr>
				<tr>
					<td>Πρωτεύουσα:</td>
					<td><jsp:getProperty name="details" property="capital" /></td>
				</tr>
				<tr>
					<td>Γλώσσα:</td>
					<td><jsp:getProperty name="details" property="language" /></td>
				</tr>
				<tr>
					<td>Νόμισμα:</td>
					<td><jsp:getProperty name="details" property="currency" /></td>
				</tr>
			</table>
		</div>
		<%
			} else {
		%>
		<div style="width: 400px;">
			<p style="text-align: center">
				Η χώρα
				<%=request.getParameter("country")%>
				δεν υπάρχει ή δεν είναι χώρα μέλος της ΕΕ
			</p>
			<%
				}
			%>
			<br> <br> <input type="button"
				onclick="window.location = 'index.jsp'" value="Επιστροφή"
				title="Επιστροφή στην αρχική σελίδα" />

		</div>
	</div>

</body>
</html>
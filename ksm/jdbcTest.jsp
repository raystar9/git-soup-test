<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<%
	Connection conn = null;

	//JDBC드라이버 이름을 설정합니다.
	String driver = "oracle.jdbc.driver.OracleDriver";
	
	//JDBC드라이버를 사용하여 접속할 URL입니다.
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
	Boolean connect = false;
	try {
		//JDBC 드라이버 이름으로 드라이버를 로드합니다
		Class.forName(driver);
		
		//설정했던 JDBC URL을 이용하여 Connection 객체를 얻어옵니다.
		conn = DriverManager.getConnection(url, "scott", "tiger");
		connect = true;
		conn.close();
	} catch(Exception e) {
		connect =false;
		e.getMessage();
	}
%>
<h3>
	<%
		if(connect==true) {
	%>
		연결되었습니다.
	<%
		} else {
	%>
		연결에 실패했습니다.
	<%
		}
	%>
</h3>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<%
	Connection conn = null;

	//JDBC����̹� �̸��� �����մϴ�.
	String driver = "oracle.jdbc.driver.OracleDriver";
	
	//JDBC����̹��� ����Ͽ� ������ URL�Դϴ�.
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
	Boolean connect = false;
	try {
		//JDBC ����̹� �̸����� ����̹��� �ε��մϴ�
		Class.forName(driver);
		
		//�����ߴ� JDBC URL�� �̿��Ͽ� Connection ��ü�� ���ɴϴ�.
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
		����Ǿ����ϴ�.
	<%
		} else {
	%>
		���ῡ �����߽��ϴ�.
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
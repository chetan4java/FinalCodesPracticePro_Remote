<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
String str=getServletContext().getRealPath("/src")+"\\java\\util\\files\\ListFilesUtil.java";
pageContext.setAttribute("content", str);

 %>
 	<c:import var="contents" url="c:/ListFilesUtil.java"></c:import>
	<pre>
 <c:out value="${contents}" />
</pre>
</body>
</html>
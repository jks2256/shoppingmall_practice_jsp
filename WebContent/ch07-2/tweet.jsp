<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg");
	Object username = session.getAttribute("user");
	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
	if(msgs == null) {
		msgs = new ArrayList<String>();
		application.setAttribute("msgs", msgs);
	}
	msgs.add(username+"::"+msg+", "+new java.util.Date());
	application.log(msg+"추가됨");
	response.sendRedirect("twitter_list.jsp");
%>

</body>
</html>
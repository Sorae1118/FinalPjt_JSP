<%@page import="java.io.PrintWriter"%>
<%@page import="project.BoardDto"%>
<%@page import="project.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.getParameter("utf-8");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String rdoValue = request.getParameter("author");
	String writer = request.getParameter("writer");
	
	System.out.println(title + content + rdoValue);
	
	BoardDao dao = new BoardDao();
	BoardDto dto = new BoardDto(title, content, writer);
	
	
    // �α��� ���� �� �ٸ� �������� �̵�
    System.out.println("��� ����");
	
    if (rdoValue != null) {
        if (rdoValue.equals("community")) {
            dao.Com_Insert(dto);	
            response.sendRedirect("board_page/community.jsp");
        } else if (rdoValue.equals("knowledge")) {
            dao.Know_Insert(dto);
            response.sendRedirect("com_list.jsp");
        } else {
            dao.Qa_Insert(dto);
            response.sendRedirect("com_list.jsp");
        }
    } else {
        // rdoValue�� null�� ��쿡 ���� ���� ó�� �Ǵ� ��ü ���� �߰�
        // ��: ���� �޽��� ��� �Ǵ� �⺻������ ó��
    }
%>
</body>
</html>
<%@page import="project.BoardDto"%>
<%@page import="java.util.ArrayList"%>
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
    BoardDao dao = new BoardDao();
	ArrayList<BoardDto> dtos = dao.Com_board();
%>
	<div>
        <form action="com_write_ok.jsp" method="get">
            <table class="table1" style="text-align:center; border: 1px solid #dddddd">
                <thead>
                    <tr>
                    <th colspan="2" style="background-color:#eeeeee; text-align: center;">�Խ��� �۾���</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <td><input type="text" class="form-control" placeholder=" �� ����" value="<%= %>" name="title" maxlength="50" style="width:500px;"></td>
                    </tr>
                    <tr>
                    <td><textarea class="form-control" placeholder="�� ����" name="content" maxlength="2048" style="width: 500px; height: 300px;"></textarea></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" class="btnSub" value="�۾���">
        </form>
    </div>
</body>
</html>
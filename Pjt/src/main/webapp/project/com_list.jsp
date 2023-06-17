<%@page import="project.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="project.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="com_list.css">
</head>
<body>
<%
    BoardDao dao = new BoardDao();
	ArrayList<BoardDto> dtos = dao.Com_list();
%>
	 <header>
        <h1 onclick="moveMain()">Nekarakubae</h1>
        <nav>
            <span onclick="moveCommunity()" class="w-btn">Ŀ�´�Ƽ</span>
            <span onclick="moveKnowledge()" class="w-btn">����</span>
            <span onclick="moveQ()" class="w-btn">������ �亯</span>
        </nav>
        <div>
            <button onclick="moveLogin()" class="w-btn w-btn-indigo" type="button">
                �α���
            </button>
            <button onclick="moveSignup()" class="w-btn w-btn-indigo" type="button">
                ȸ������
            </button>
        </div>
    </header>
    <div class="page-title">
        <h2>Ŀ�´�Ƽ �Խ���</h2>
        <small>�����е��� ������ ���� �����Դϴ�.</small>
    </div>
    <%
    for (BoardDto dto : dtos){ 
    %>
    <div class="container">
        <section class="post-list">
            <article class="post">
                <h2 class="post-title"> <a href = "com.jsp?number=<%=dto.getNumber()%>"> <%=dto.getTitle() %></h2>
                <div class="post-meta">
                    <div id="left">
                        <p>�ۼ��� : <%=dto.getWriter() %></p>
                        <p>�ۼ��� : <%=dto.getRegdate() %></p>
                    </div>
                    <div id="right">
                        <img src="../images/icon_view.png" alt="��ȸ��">
                        <small><%=dto.getView_cnt() %></small>
                        <img src="../images/icon_chat.png" alt="���">
                        <small><%=dto.getReply_cnt() %></small>
                        <img src="../images/icon_heart.png" alt="���ƿ�">
                        <small><%=dto.getLike() %></small>
                    </div>
                </div>
            </article>

        </section>
    </div>
    <%}%>
    <footer>
        <p>Nekarakubae &copy; 2023. All rights reserved.</p>
    </footer>
</body>
</html>
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
<link rel="stylesheet" href="community.css">
<script type="text/javascript" src="community.js"></script>
</head>
<body>
<%
    BoardDao dao = new BoardDao();
	ArrayList<BoardDto> dtos = dao.Know_list();
	
%>
    <header>
        <img src="../images/title.png" onclick="moveMain()" alt="Ÿ��Ʋ">
        <nav>
            <span onclick="location.href='<%=request.getContextPath()%>/project/board_page/community.jsp'" class="w-btn">Ŀ�´�Ƽ</span>
            <span onclick="location.href='<%=request.getContextPath()%>/project/board_page/knowledge.jsp'" class="w-btn">����</span>
			<span onclick="location.href='<%=request.getContextPath()%>/project/board_page/qna.jsp'" class="w-btn">������ �亯</span>
        </nav>
        <div>
          <%  
           if (session.getAttribute("user") == null) {
           
         %>
             <button onclick="location.href='<%=request.getContextPath()%>/project/login.jsp'" class="w-btn w-btn-indigo" type="button">
                �α���
            </button>
            <button onclick="location.href='<%=request.getContextPath()%>/project/signup.jsp'" class="w-btn w-btn-indigo" type="button">
                ȸ������
            </button>
        <%
        }else{
            %><button onclick="moveLogout()" class="w-btn w-btn-indigo" type="button">
               �α׾ƿ�
            </button>
        <%   }%>
        </div>
    </header>
    <div class="page-title">
        <h2>����</h2>
        <small>������ �����ϰ� ���ο� ���̵� ������.</small>
    </div>
    <div class="write">
        <button onclick="moveWrite()" class="w-btn" type="button">�ۼ��ϱ�</button>
    </div>
       <%
    for (BoardDto dto : dtos){ 
    %> 
    <div class="container">
        <section class="post-list">
            <article class="post">
              	<h2 class="post-title"> <a href = "knowledge_page.jsp?number=<%=dto.getNumber()%>"> <%=dto.getTitle() %></a> </h2>
                <div class="post-meta">
                    <div id="left">
                         <p>�ۼ��� : <%=dto.getWriter() %></p>
                        <p>�ۼ��� : <%=dto.getRegdate() %></p>
                    </div>
                    <div id="right">
                        <img src="../images/icon_view.png" alt="<%= dto.getView_cnt()%>">
                        <small><%= dto.getView_cnt()%></small>
                        <img src="../images/icon_chat.png" alt="<%= dto.getReply_cnt()%>">
                        <small><%= dto.getReply_cnt()%></small>
                        <img src="../images/icon_heart.png" alt="<%=dto.getLike() %>">
                        <small><%= dto.getLike()%></small>
                    </div>
                </div>
            </article>
	
        </section>
    </div>
    <%} %>
    <footer>
        <p>Nekarakubae &copy; 2023. All rights reserved.</p>
    </footer>
</body>
</html>
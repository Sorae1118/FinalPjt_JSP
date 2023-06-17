<%@page import="project.BoardDao"%>
<%@page import="project.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="com.css">
</head>
<body>
<% 
int number = Integer.parseInt(request.getParameter("number"));

BoardDao dao = new BoardDao();
BoardDto dto = dao.Com_getOne(number);
%>

	<main class="container">
        <section class="main-list">
            <article class="main">
                <div class="main-title">
                    <h2><%= dto.getTitle() %></h2>
                </div>
                <hr>
                <div class="main-info">
                    <p class="author"><%= dto.getWriter() %></p>
                    <img src="../images/icon_view.png" alt="��ȸ��">
                    <small><%= dto.getView_cnt() %></small>
                    <p class="date"><%= dto.getRegdate()%></p>
                </div>
                <div class="content">
                    <p><%= dto.getContent() %></p>
                </div>
            </article>

            <article class="comments">
                <h3>���</h3>
                <div class="comment-form">
                    <input type="text" placeholder="����� �ۼ����ּ���." class="comment-input">
                    <button type="submit" class="comment-submit">���</button>
                </div>
                <ul class="comment-list">
                    <li>
                        <p class="comment-author">��� �ۼ���</p>
                        <p class="comment-content">��� ����</p>
                        <p class="comment-date">�ۼ��Ͻ�</p>
    
                    </li>
                    <!-- �ٸ� ��۵� -->
                </ul>
            </article>
        </section>
    </main>
</body>
</html>
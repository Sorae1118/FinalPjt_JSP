<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="project.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="community.css">
    <title>커뮤니티</title>
</head>
<body>
<%
    BoardDao dao = new BoardDao();
	ArrayList<BoardDto> dtos = dao.Com_list();
	
%>
    <header>
        <img src="../images/title.png" onclick="location.href='<%=request.getContextPath()%>/project/index.jsp'" alt="타이틀">
        <nav>
        	<span onclick="location.href='../intro.jsp'" class="w-btn">소개</span>
            <span onclick="location.href='<%=request.getContextPath()%>/project/board_page/community.jsp'" class="w-btn">커뮤니티</span>
            <span onclick="location.href='<%=request.getContextPath()%>/project/board_page/knowledge.jsp'" class="w-btn">지식</span>
			<span onclick="location.href='<%=request.getContextPath()%>/project/board_page/qna.jsp'" class="w-btn">질문과 답변</span>
			<span onclick="location.href='../compiler.jsp'" class="w-btn">컴파일러</span>
        </nav>
        <div>
          <%  
           if (session.getAttribute("user") == null) {
           
         %>
             <button onclick="location.href='<%=request.getContextPath()%>/project/login.jsp'" class="w-btn w-btn-indigo" type="button">
                로그인
            </button>
            <button onclick="location.href='<%=request.getContextPath()%>/project/signup.jsp'" class="w-btn w-btn-indigo" type="button">
                회원가입
            </button>
        <%
        }else{
            %><button onclick="location.href='<%=request.getContextPath()%>/project/edituser.jsp'" class="w-btn w-btn-indigo"
				type="button">회원정보수정</button>
			<button onclick="location.href='<%=request.getContextPath()%>/project/logout.jsp'" class="w-btn w-btn-indigo"
				type="button">로그아웃</button>
        <%   }%>
        </div>
    </header>
    <div class="page-title">
        <h2>커뮤니티</h2>
        <small>여러분들의 소통을 위한 공간입니다.</small>
    </div>
    <%
	if (session.getAttribute("user") == null) {
	} 
	else {%>
    <div class="write">
        <button onclick="location.href='<%=request.getContextPath()%>/project/board_page/write.jsp'" class="w-btn" type="button">작성하기</button>
    </div>
    <%
	}
	%>
	
    <%
    for (BoardDto dto : dtos){ 
    %> 
    <div class="container">
        <section class="post-list">
            <article class="post">
             	<h2 class="post-title"> <a href = "community_page.jsp?number=<%=dto.getNumber()%>"> <%=dto.getTitle() %></a> </h2>
                <div class="post-meta">
                    <div id="left">
                         <p>작성자 : <%=dto.getWriter() %></p>
                        <p>작성일 : <%=dto.getRegdate() %></p>
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
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
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
  <div class="login-container">
    <h2>�α���</h2>
    <form action = "login_ok.jsp" method = "get">
      <input type="text" placeholder="���̵�" required name="email">
      <input type="password" placeholder="��й�ȣ" required name="pwd">
      <button type="submit">�α���</button>
    </form>
    <p onclick="moveSignup()">������ �����Ű���? <a href="#">ȸ������</a></p>
  </div>
  <footer>
    <p>Nekarakubae &copy; 2023. All rights reserved.</p>
  </footer>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
    <div class="page-title">
        <h2>Ŀ�´�Ƽ �Խ���</h2>
        <small>�����е��� ������ ���� �����Դϴ�.</small>
    </div>
    <div class="container">
        <section class="post-list">
            <article class="post" onclick="moveCommunityPage()">
                <h2 class="post-title">�ȳ��ϼ���!</h2>
                <p class="post-content">
                    Baby, got me looking so crazy
                    ���������� daydream
                    Got me feeling you
                    �ʵ� �����ٷ�
                </p>
                <div class="post-meta">
                    <div id="left">
                        <p>�ۼ��� : �̿�</p>
                        <p>�ۼ��� : 2023-06-17</p>
                    </div>
                    <div id="right">
                        <img src="../images/icon_view.png" alt="��ȸ��">
                        <small>200</small>
                        <img src="../images/icon_chat.png" alt="���">
                        <small>10</small>
                        <img src="../images/icon_heart.png" alt="���ƿ�">
                        <small>20</small>
                    </div>
                </div>
            </article>

        </section>
    </div>
    <footer>
        <p>Nekarakubae &copy; 2023. All rights reserved.</p>
    </footer>
</body>
</html>
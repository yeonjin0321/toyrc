<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
		request.setCharacterEncoding("euc-kr");
%>
	
	<jsp:useBean id="mbean" class="model.MemberBean">
		<jsp:setProperty name="mbean" property="*"/>
	</jsp:useBean>
	
	<%
		String id = request.getParameter("id");//���� �����൵ ��. mbean.getId()�� �̹� ����ִ�.
	
		MemberDAO mdao = new MemberDAO();
		//��Ʈ��Ÿ������ ����Ǿ��ִ� �н����带 ������(�����ͺ��̽����� ������ pass ���� ����)
		String pass = mdao.getPass(mbean.getId());
		
		//�����ϱ� ���ؼ� �ۼ��� �н����� ���� ���� ������ ���̽����� ������ �н����� ���� ��
		if(mbean.getPass1().equals(pass)){//���� �н��� �����ͺ��̽� �н��� ���ٸ� member ���̺��� ����
			
		//MemberDAOŬ������ ȸ������ �޼ҵ带 ȣ��
		mdao.deleteMember(mbean.getId());
		response.sendRedirect("MemberList.jsp");
		}else{
	%>
		<script type="text/javascript">
			alert("�н����尡 ���� �ʽ��ϴ�. �ٽ� Ȯ���� �ּ���");
			history.go(-1);
		</script>
	<%
		}
	%>

</body>
</html>
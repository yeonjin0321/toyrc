<%@page import="model.BoardBean"%>
<%@page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<center>
<h2>게시글 수정</h2>
   <% 
 
    //해당 게시글번호를 통하여 게시글을 수정
    int num = Integer.parseInt(request.getParameter("num").trim()); //trim은 공백을 없앰
 
    //하나의 게시글의 대한 정보를 리턴
    BoardDAO bdao = new BoardDAO();
    BoardBean bean = bdao.getOneUpdateBoard(num);
    
%>
 
 

 
  <form action="BoardUpdateProc.jsp" method="post">
            <table width="600" border="1" bgcolor="skyblue">
                <tr height="40">
 
                    <td width="160" align="center">작성자</td>
                    <td width="60" align="center"><%=bean.getWriter()%></td>
 
                    <td width="160" align="center">작성일</td>
                    <td width="220" align="center"><%=bean.getReg_date()%></td>
                </tr>
 
                <tr height="40">
                    <td width="170" align="center">제목</td>
                    <td width="430" colspan="3">&nbsp; 
                    <input type="text"
                        name="subject" value="<%=bean.getSubject()%>" size="60"></td>
                </tr>
 
                <tr height="40">
                    <td width="200" align="center">패스워드</td>
                    <td width="400">&nbsp; 
                    <input type="password" name="password"
                        size="30"></td>
                </tr>
 
                <tr height="40">
                    <td width="170" align="center">글내용</td>
                    <td width="430" colspan="3">
                    <textarea rows="10" cols="60"
                            name="content" align="left"><%=bean.getContent() %></textarea></td>
                </tr>
 
                <tr height="40">
                    <td colspan="4" align="center">
                    <input type="hidden" name="num"
                        value="<%=num %>"> 
                        <input type="submit" value="글수정">
                        &nbsp;&nbsp; 
                        <input type="button"
                        onclick="location.href='BoardList.jsp'" value="전체글보기"></td>
                </tr>
 
 
            </table>
        </form>
    </center>
</body>
</html>

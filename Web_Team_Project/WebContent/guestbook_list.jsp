<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" 
   errorPage="guestbook_error.jsp" import="java.util.*"%>
<%@ page import = "guestbook.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="font.css" rel="stylesheet">
   <meta http-equiv="Content-type" content="text/html; charset=EUC-KR">
<title>방명록 : 목록화면</title>
<style>@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);

.login {
   width: 400px;
   margin: 16px auto;
   font-size: 16px;
}

.login-header, .login p {
   margin-top: 0;
   margin-bottom: 0;
}

.login-triangle {
   width: 0;
   margin-right: auto;
   margin-left: auto;
   border: 12px solid transparent;
   border-bottom-color: #28d;
}

.login-header {
   background: #28d;
   padding: 20px;
   font-size: 1.4em;
   font-weight: normal;
   text-align: center;
   text-transform: uppercase;
   color: #fff;
}

.login-container {
   border:1px solid #000;
   padding: 12px;
}

.login p {
   padding: 12px;
}

.login input {
   box-sizing: border-box;
   display: block;
   width: 100%;
   border-width: 1px;
   border-style: solid;
   padding: 16px;
   outline: 0;
   font-family: inherit;
   font-size: 0.95em;
}

.login input[type="email"], .login input[type="password"] {
   background: #fff;
   border-color: #bbb;
   color: #555;
}

.login input[type="email"]:focus, .login input[type="password"]:focus {
   border-color: #888;
}

.login input[type="submit"] {
   background: #28d;
   border-color: transparent;
   color: #fff;
   cursor: pointer;
}

.login input[type="submit"]:hover {
   background: #17c;
}

.login input[type="submit"]:focus {
   border-color: #05a;
}

.login input[type="reset"] {
   background: #58D3F7;
   border-color: transparent;
   color: #fff;
   cursor: pointer;
}

.login input[type="reset"]:hover {
   background: #17c;
}

.login input[type="reset"]:focus {
   border-color: #05a;
}</style>
</head>
   <%
      GuestBean gb = new GuestBean();
      ArrayList datas = gb.getDBList();
   %>
<body>
   <center>
      <h2 style="font-family: photoF; line-height:10em; color:#28d;">방명록:목록화면</h2>
      
      <form>
         
         <table cellpadding=5 cellspacing=0 border="1">
            <tr style="font-family: photoF;" bgcolor="#99CCFF">
               <td>번호</td>
               <td>작성일</td>
               <td>제목</td>
               <td>내용</td>
            </tr>
            <%
               for(int i=0; i<datas.size(); i++)
               {
                  GuestBook guestbook = (GuestBook)(datas.get(i));
            %>
            <tr>
               <td style="font-family: photoF;"><%=guestbook.getGb_id() %></td>
               <td style="font-family: photoF;"><%=guestbook.getGb_date() %></td>
               <td style="font-family: photoF;"><%=guestbook.getGb_title() %></td>
               <td style="font-family: photoF;"><%=guestbook.getGb_contents() %></a></td>
            </tr>
            <%
               }
            %>
         </table>
      </form>
      
      
      <a style="font-family: photoF; line-height:7em" href="guestbook_form.jsp">방명록 쓰기</a><p>
   </center>

</body>
</html>s
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"
   errorPage="guestbook_error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>방명록:작성화면</title>
<link href="font.css" rel="stylesheet">
<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);

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
}
</style>
</head>
<body>
<h1 class="mainframe" style="font-family: rocatF; position: fixed; left: 20px; top: 0px;">
		<span class="mainlink" onclick="location.href='selectPage.jsp'"> Eight, </span>
	</h1>
   <center>
      <h2 style="font-family: photoF; line-height: 5em; color:#28d" >방명록</h2>
      
      <div class="login">
      <form class="login-container" name=form1 method=post action=guestbook_control.jsp>
         <input style="font-family: photoF;" type=hidden name="action" value="insert">
         <table cellpadding=5 cellspacing=0 frame="void">
            <tr>
               <td><input style="font-family: photoF;" type="text" name="gb_title" size="20" placeholder="제목"></td>
            </tr>
            <tr>
               <td style="font-family: photoF;" colspan="2"><textarea style="font-family: photoF;" rows="5" name="gb_contents" cols="40" placeholder="내용"></textarea></td>
            </tr>
            <tr>
               <td style="font-family: photoF;" colspan="2" align=center><input style="font-family: photoF;" type=submit value="저장"></td>
            </tr>
         </table>
      </form>
      </div>

      <a style="font-family: photoF; line-height: 4em;" href=guestbook_control.jsp?action=list>게시물목록으로</a>
   </center>
   
</body>
</html>
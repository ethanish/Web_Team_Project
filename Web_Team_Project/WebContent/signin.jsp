<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="font.css" rel="stylesheet">
<script>
   function checkValue(){
      var form = document.userInfo;
      if(!form.id.value){
            alert("���̵� �Է��ϼ���.");
            return false;
        }
        if(!form.password.value){
            alert("��й�ȣ�� �Է��ϼ���.");
            return false;
        }
   }
</script>
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
   background: #25d;
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
   background: #28d;
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
<link href="font.css" rel="stylesheet">
</head>   
<body>
	<h1 class="mainframe" style="font-family: rocatF; position: fixed; left: 20px; top: 0px;">
		<span class="mainlink" onclick="location.href='selectPage.jsp'"> Eight, </span>
	</h1>
	
	
	<div class="login">
      <div class="login-triangle"></div>

      <h2 style="font-family: photoF;" class="login-header">ȸ������</h2>

      <form name="userInfo" class="login-container" action="signin_process.jsp" method="POST" onsubmit="return checkValue()" >
         <p>
            <input style="font-family: photoF;" type="text" name="id" placeholder="Id">
         </p>
         <p>
            <input style="font-family: photoF;" type="password" name="password" placeholder="Password">
         </p>
         <p>
            <input style="font-family: photoF;" type="text" name="tel" placeholder="Telephone">
         </p>
         <p>
            <input style="font-family: photoF;" type="text" name="name" placeholder="Name">
         </p>
         <p>
            <input style="font-family: photoF;" type="date" name="birth_d" placeholder="Birth">
         </p>
         <p>
            <input style="font-family: photoF;" type="reset" name="reset" value="�ʱ�ȭ">
            <input style="font-family: photoF;" type="submit" name="Submit" value="Ȯ��">
         </p>
      </form>
   </div>
</body>
</html>
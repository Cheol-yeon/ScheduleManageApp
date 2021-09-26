<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<script>
function check(box) {
	   if(box.checked == true && box.value == "checkbox1") {
	      const target = document.getElementById('studio');
	        target.disabled = true;
	   } else if(box.checked == true && box.value == "checkbox2") {
	      const target = document.getElementById('rental');
	        target.disabled = true;
	   } else if(box.checked == true && box.value == "checkbox3") {
	      const target = document.getElementById('btn_3');
	        target.disabled = true;
	   } else if(box.checked == true && box.value == "checkbox4") {
	      const target = document.getElementById('btn_4');
	        target.disabled = true;
	   }
	   
	   if (box.checked == false && box.value == "checkbox1") {
	      const target = document.getElementById('studio');
	        target.disabled = false;
	   } else if (box.checked == false && box.value == "checkbox2") {
	      const target = document.getElementById('rental');
	        target.disabled = false;
	   } else if (box.checked == false && box.value == "checkbox3") {
	      const target = document.getElementById('btn_3');
	        target.disabled = false;
	   } else if (box.checked == false && box.value == "checkbox4") {
	      const target = document.getElementById('btn_4');
	        target.disabled = false;
	   }
	}

</script>

<meta charset="UTF-8">
<title>Main Page</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.12.1/css/all.css"
	integrity="sha384-v8BU367qNbs/aIZIxuivaU55N5GPF89WBerHoGA4QTcbUjYiLQtKdrfXnqAcXyTv"
	crossorigin="anonymous">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<link href="/css/main.css" rel="stylesheet" type="text/css">
<link href="/css/reset.css" rel="stylesheet" type="text/css">
<link href="/css/toggle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div>
		접속자 : ${manager.manname }
		<i class="fas fa-user-cog fa-3x" id="icon"
			onclick="location.href='/studio'"></i>
	</div>
	<h1 id="title">Schedule Management Platform</h1>

	<br>
	<br>
	<br>
	<form method="GET" action="/index">
	<div class="btnContainer">
		<div>
		<input type="button" id="studio" value="studio" onclick="location.href='/studio'" />
		<label class = "switch">
		<input type="checkbox" value="checkbox1" name="checkTest" onClick="check(this)">
		<span class="slider round"></span>
		</label>
		</div>
		
		<div>
		<input type="button" id="rental" value="rental" onclick="location.href='/rental'" />
		<label class = "switch">
		<input type="checkbox" value="checkbox2" name="checkTest" onClick="check(this)">
		<span class="slider round"></span>
		</label>
		</div>
		
		<div>
		<input type="button" id="btn_3" value="btn3" onclick="location.href='/btn3'" />
		<label class = "switch">
		<input type="checkbox" value="checkbox3" name="checkTest" onClick="check(this)">
		<span class="slider round"></span>
		</label>
		</div>
		
		<div>
		<input type="button" id="btn_4" value="btn4" onclick="location.href='/btn4'" />
		<label class = "switch">
		<input type="checkbox" value="checkbox4" name="checkTest" onClick="check(this)">
		<span class="slider round"></span>
		</label>
		</div>
	</div>	
		
	<br>
	<br>

	<input type = "submit" value = "저장">
	<!-- 돌아가기 버튼구현 <input type="button" value="이전으로 돌아가기" onclick="window.history.go(-1);"/> -->
	</form>
</body>
</html>
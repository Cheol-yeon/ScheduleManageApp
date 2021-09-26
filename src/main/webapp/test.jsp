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
      const target = document.getElementById('btn_1');
        target.disabled = true;
   } else if(box.checked == true && box.value == "checkbox2") {
      const target = document.getElementById('btn_2');
        target.disabled = true;
   } else if(box.checked == true && box.value == "checkbox3") {
      const target = document.getElementById('btn_3');
        target.disabled = true;
   } else if(box.checked == true && box.value == "checkbox4") {
      const target = document.getElementById('btn_4');
        target.disabled = true;
   }
   
   if (box.checked == false && box.value == "checkbox1") {
      const target = document.getElementById('btn_1');
        target.disabled = false;
   } else if (box.checked == false && box.value == "checkbox2") {
      const target = document.getElementById('btn_2');
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
  </head>
  <body>
<div>  
  <input id='btn_1' type='button' value='첫번째 버튼' onclick='btnActive()'/>
  <input id='btn_2' type='button' value='두번째 버튼' onclick='btnActive()'/>
  <input id='btn_3' type='button' value='세번째 버튼' onclick='btnActive()'/>
  <input id='btn_4' type='button' value='네번째 버튼' onclick='btnActive()'/>
</div>
 <div>
    <p>
       1번 버튼 비활성화 <input type="checkbox" value="checkbox1" onClick="check(this)">
    </p>
    <p>
       2번 버튼 비활성화 <input type="checkbox" value="checkbox2" onClick="check(this)">
    </p>
	<p>
       3번 버튼 비활성화 <input type="checkbox" value="checkbox3" onClick="check(this)">
    </p>
    <p>
       4번 버튼 비활성화 <input type="checkbox" value="checkbox4" onClick="check(this)">
    </p>
 </div>
  </body>
</html>
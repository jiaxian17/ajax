<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/myJS.js"></script>
<script type="text/javascript">
	function ckName() {
		var name = document.getElementsByTagName("input")[0];
		//创建XMLHttpRequest对象
		var xhr = getXMLHttpRequest();
		//处理结果
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var msg = document.getElementById("msg");
				if(xhr.responseText == "true") {
					msg.innerHTML =  "<font color='red'>用户名已存在</font>";
				} else {
					msg.innerHTML = "可以使用";
				}
			}

		}
		//创建连接
		xhr.open("GET", "${pageContext.request.contextPath}/ajaxServlet?name="
				+ name.value);
		//发生请求
		xml.send(null);
	}
</script>
</head>
<body>

	用户名：
	<input type="text" name="username" onblur="ckName()" /><span id="msg"></span>
	<br /> 密 码：
	<input type="password" name="pwd" />
	<br />
</body>
</html>
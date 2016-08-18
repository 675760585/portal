<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<#list lists as li>
	<h1>${li.loginname!}</h1>
</#list>
</body>
</html>
<%@ taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<body>
<h2>Hello World!</h2>

<form action="/" method="post">
    ID：<input type="text" name="id"/><br/>
    姓名：<input type="text" name="name"/><br/>
    年龄：<input type="text" name="age"/><br/>
    性别：<input type="text" name="sex"/><br/>
    <input type="submit" value="新增">
</form>

<table border="1" cellspacing="0" cellpadding="1" id="stable" style="text-align: center">
    <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
        <th>删除</th>
    </tr>
</table>

<e:forEach items="${peoples}" var="p">
        ${p.id}
        ${p.name}
        ${p.age}
        ${p.sex}
        <a href="/delete?id=${p.id}">删除</a>
        <a href="/update?id=${p.id}">修改</a> <br/>

</e:forEach>



</body>
</html>

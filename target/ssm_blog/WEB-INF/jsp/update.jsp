<%--
  Created by IntelliJ IDEA.
  User: Kyros_CJ
  Date: 2019/3/14 0014
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>




    <form action="/updateaa" method="post">
        ID：<input type="text" name="id" value=${sss.id} /><br/>
        姓名：<input type="text" name="name" value=${sss.name} /><br/>
        年龄：<input type="text" name="age" value=${sss.age} /><br/>
        性别：<input type="text" name="sex" value=${sss.sex} /><br/>
        <input type="submit" value="提交">
    </form>



</body>
</html>


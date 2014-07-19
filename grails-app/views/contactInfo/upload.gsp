<%@ page import="com.testapp.Email; com.testapp.ContactInfo; com.testapp.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:uploadForm controller="contactInfo" action="upload" method="post">
    <input type="file" name="myFile"/>
    <input type="text" name="user.id" id="user.id"/>
    <input type="text" name="age" id="age"/>
    <g:select name="books"
              from="${User.list()}"
              optionKey="username"
               />
    <input type="submit"/>
</g:uploadForm>
</body>
</html>
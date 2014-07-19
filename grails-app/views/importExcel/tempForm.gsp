<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:uploadForm action="importFile" controller="importExcel">
    <input type="file" name="fileUpload"/>
    <g:submitButton name="submit" value="submit"/>
</g:uploadForm>

</body>
</html>
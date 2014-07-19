<%@ page import="com.testapp.ImportExcel" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'importExcel.label', default: 'ImportExcel')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-importExcel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-importExcel" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="epost" title="${message(code: 'importExcel.epost.label', default: 'Epost')}"/>

            <g:sortableColumn property="punktID" title="${message(code: 'importExcel.punktID.label', default: 'Punkt ID')}"/>

            <g:sortableColumn property="adressTillFastighetsägare" title="${message(code: 'importExcel.adressTillFastighetsägare.label', default: 'Adress Till Fastighetsägare')}"/>

            <g:sortableColumn property="beställd" title="${message(code: 'importExcel.beställd.label', default: 'Beställd')}"/>

            <g:sortableColumn property="beställdAv" title="${message(code: 'importExcel.beställdAv.label', default: 'Beställd Av')}"/>

            <g:sortableColumn property="beteckning" title="${message(code: 'importExcel.beteckning.label', default: 'Beteckning')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${importExcelInstanceList}" status="i" var="importExcelInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${importExcelInstance.id}">${fieldValue(bean: importExcelInstance, field: "epost")}</g:link></td>

                <td>${fieldValue(bean: importExcelInstance, field: "punktID")}</td>

                <td>${fieldValue(bean: importExcelInstance, field: "adressTillFastighetsägare")}</td>

                <td>${fieldValue(bean: importExcelInstance, field: "beställd")}</td>

                <td>${fieldValue(bean: importExcelInstance, field: "beställdAv")}</td>

                <td>${fieldValue(bean: importExcelInstance, field: "beteckning")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${importExcelInstanceTotal}"/>
    </div>
</div>
</body>
</html>

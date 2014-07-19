
<%@ page import="com.testapp.ContactInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contactInfo.label', default: 'ContactInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-contactInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-contactInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'contactInfo.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'contactInfo.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="street1" title="${message(code: 'contactInfo.street1.label', default: 'Street1')}" />
					
						<g:sortableColumn property="street2" title="${message(code: 'contactInfo.street2.label', default: 'Street2')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'contactInfo.city.label', default: 'City')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'contactInfo.country.label', default: 'Country')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contactInfoInstanceList}" status="i" var="contactInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contactInfoInstance.id}">${fieldValue(bean: contactInfoInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: contactInfoInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: contactInfoInstance, field: "street1")}</td>
					
						<td>${fieldValue(bean: contactInfoInstance, field: "street2")}</td>
					
						<td>${fieldValue(bean: contactInfoInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: contactInfoInstance, field: "country")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contactInfoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

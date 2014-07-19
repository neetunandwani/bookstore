
<%@ page import="com.testapp.ContactInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contactInfo.label', default: 'ContactInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contactInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contactInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contactInfo">
			
				<g:if test="${contactInfoInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="contactInfo.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${contactInfoInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="contactInfo.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${contactInfoInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.street1}">
				<li class="fieldcontain">
					<span id="street1-label" class="property-label"><g:message code="contactInfo.street1.label" default="Street1" /></span>
					
						<span class="property-value" aria-labelledby="street1-label"><g:fieldValue bean="${contactInfoInstance}" field="street1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.street2}">
				<li class="fieldcontain">
					<span id="street2-label" class="property-label"><g:message code="contactInfo.street2.label" default="Street2" /></span>
					
						<span class="property-value" aria-labelledby="street2-label"><g:fieldValue bean="${contactInfoInstance}" field="street2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="contactInfo.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${contactInfoInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="contactInfo.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${contactInfoInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="contactInfo.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${contactInfoInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="contactInfo.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${contactInfoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.mobilePhone}">
				<li class="fieldcontain">
					<span id="mobilePhone-label" class="property-label"><g:message code="contactInfo.mobilePhone.label" default="Mobile Phone" /></span>
					
						<span class="property-value" aria-labelledby="mobilePhone-label"><g:fieldValue bean="${contactInfoInstance}" field="mobilePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.homePhone}">
				<li class="fieldcontain">
					<span id="homePhone-label" class="property-label"><g:message code="contactInfo.homePhone.label" default="Home Phone" /></span>
					
						<span class="property-value" aria-labelledby="homePhone-label"><g:fieldValue bean="${contactInfoInstance}" field="homePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="contactInfo.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${contactInfoInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.emails}">
				<li class="fieldcontain">
					<span id="emails-label" class="property-label"><g:message code="contactInfo.emails.label" default="Emails" /></span>
					
						<span class="property-value" aria-labelledby="emails-label"><g:fieldValue bean="${contactInfoInstance}" field="emails"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.registered}">
				<li class="fieldcontain">
					<span id="registered-label" class="property-label"><g:message code="contactInfo.registered.label" default="Registered" /></span>
					
						<span class="property-value" aria-labelledby="registered-label"><g:formatBoolean boolean="${contactInfoInstance?.registered}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInfoInstance?.verified}">
				<li class="fieldcontain">
					<span id="verified-label" class="property-label"><g:message code="contactInfo.verified.label" default="Verified" /></span>
					
						<span class="property-value" aria-labelledby="verified-label"><g:formatBoolean boolean="${contactInfoInstance?.verified}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${contactInfoInstance?.id}" />
					<g:link class="edit" action="edit" id="${contactInfoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

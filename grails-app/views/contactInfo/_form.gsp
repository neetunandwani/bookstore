<%@ page import="com.testapp.ContactInfo" %>



<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="contactInfo.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" maxlength="50" value="${contactInfoInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="contactInfo.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" maxlength="50" value="${contactInfoInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'street1', 'error')} ">
	<label for="street1">
		<g:message code="contactInfo.street1.label" default="Street1" />
		
	</label>
	<g:textField name="street1" maxlength="55" value="${contactInfoInstance?.street1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'street2', 'error')} ">
	<label for="street2">
		<g:message code="contactInfo.street2.label" default="Street2" />
		
	</label>
	<g:textField name="street2" maxlength="50" value="${contactInfoInstance?.street2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="contactInfo.city.label" default="City" />
		
	</label>
	<g:textField name="city" maxlength="40" value="${contactInfoInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="contactInfo.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${contactInfoInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="contactInfo.zipCode.label" default="Zip Code" />
		
	</label>
	<g:textField name="zipCode" maxlength="10" value="${contactInfoInstance?.zipCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="contactInfo.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${contactInfoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'mobilePhone', 'error')} ">
	<label for="mobilePhone">
		<g:message code="contactInfo.mobilePhone.label" default="Mobile Phone" />
		
	</label>
	<g:textField name="mobilePhone" value="${contactInfoInstance?.mobilePhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'homePhone', 'error')} ">
	<label for="homePhone">
		<g:message code="contactInfo.homePhone.label" default="Home Phone" />
		
	</label>
	<g:textField name="homePhone" value="${contactInfoInstance?.homePhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'fax', 'error')} ">
	<label for="fax">
		<g:message code="contactInfo.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" value="${contactInfoInstance?.fax}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'emails', 'error')} ">
	<label for="emails">
		<g:message code="contactInfo.emails.label" default="Emails" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'registered', 'error')} ">
	<label for="registered">
		<g:message code="contactInfo.registered.label" default="Registered" />
		
	</label>
	<g:checkBox name="registered" value="${contactInfoInstance?.registered}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contactInfoInstance, field: 'verified', 'error')} ">
	<label for="verified">
		<g:message code="contactInfo.verified.label" default="Verified" />
		
	</label>
	<g:checkBox name="verified" value="${contactInfoInstance?.verified}" />
</div>


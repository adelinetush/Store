
<%@ page import="store.Customers" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'customers.label', default: 'Customers')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div>
                    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<ul class="nav nav-pills">
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		
			
			<g:if test="${flash.message}">
                            <div class="alert alert-info" role="alert">${flash.message}</div>
                        </g:if>
                        <div class="well">
                            <dl class="dl-horizontal">
			
			
				<g:if test="${customersInstance?.firstname}">
				
                                    <dt><g:message code="customers.name.label" default="Firstname" /></dt>

                                    <dd><g:fieldValue bean="${customersInstance}" field="firstname"/></dd>
				
				</g:if>
			
				<g:if test="${customersInstance?.lastname}">
				
                                    <dt><g:message code="customers.lastname.label" default="Lastname" /></dt>
					
                                    <dd><g:fieldValue bean="${customersInstance}" field="lastname"/></dd>
					
				
				</g:if>
			
				<g:if test="${customersInstance?.email}">
				
					<dt><g:message code="customers.email.label" default="Email" /></dt>
					
					<dd><g:fieldValue bean="${customersInstance}" field="email"/></dd>
					
				
				</g:if>
			
				<g:if test="${customersInstance?.district}">
				
					<dt><g:message code="customers.district.label" default="District" /></dt>
					
						<dd><g:link controller="districts" action="show" id="${customersInstance?.district?.id}">${customersInstance?.district?.encodeAsHTML()}</g:link></dd>
					
				
				</g:if>
			
				<g:if test="${customersInstance?.street}">
				
					<dt><g:message code="customers.street.label" default="Street" /></dt>
					
						<dd><g:fieldValue bean="${customersInstance}" field="street"/></dd>
					
				
				</g:if>
			
				<g:if test="${customersInstance?.phoneNumber}">
				
					<dt><g:message code="customers.phoneNumber.label" default="Phone Number" /></dt>
					
						<dd><g:fieldValue bean="${customersInstance}" field="phoneNumber"/></dd>
				
				</g:if>
			
				<g:if test="${customersInstance?.comments}">
				
					<dt><g:message code="customers.comments.label" default="Comments" /></dt>
					
					<dd><g:fieldValue bean="${customersInstance}" field="comments"/></dd>
				
				</g:if>
			
				<g:if test="${customersInstance?.zip}">
				
					<dt><g:message code="customers.zip.label" default="Zip" /></dt>
					
					<dd><g:fieldValue bean="${customersInstance}" field="zip"/></dd>
					
				
				</g:if>
			
				<g:if test="${customersInstance?.country}">
				
					<dt><g:message code="customers.country.label" default="Country" /></dt>
					
					<dd><g:fieldValue bean="${customersInstance}" field="country"/></dd>
					
				
				</g:if>
			
				<g:if test="${customersInstance?.dateCreated}">
				
					<dt><g:message code="customers.dateCreated.label" default="Date Created" /></dt>
					
					<dd><g:formatDate date="${customersInstance?.dateCreated}" /></dd>
					
				
				</g:if>
			
				<g:if test="${customersInstance?.lastUpdated}">
				
					<dt><g:message code="customers.lastUpdated.label" default="Last Updated" /></dt>
					<dd><g:formatDate date="${customersInstance?.lastUpdated}" /></dd>
				
				</g:if>

			
				<g:if test="${customersInstance?.order}">
				
					<dt><g:message code="customers.order.label" default="Order" /></dt>
					
						<g:each in="${customersInstance.order}" var="o">
						<dd><g:link controller="orders" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></dd>
						</g:each>
				
				</g:if>
			
				<g:if test="${customersInstance?.payment}">
				
					<dt><g:message code="customers.payment.label" default="Payment" /></dt>
					
					<dd><g:link controller="payments" action="show" id="${customersInstance?.payment?.id}">${customersInstance?.payment?.encodeAsHTML()}</g:link></dd>
				
				</g:if>
			
			<g:form url="[resource:customersInstance, action:'delete']" method="DELETE">
				
					<g:link class="btn btn-default" action="edit" resource="${customersInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger"  action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				
			</g:form>
		</div>
	</body>
</html>

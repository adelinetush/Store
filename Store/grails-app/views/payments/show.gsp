
<%@ page import="store.Payments" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'payments.label', default: 'Payments')}" />
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
			
				<g:if test="${paymentsInstance?.amount}">
				
					<dt><g:message code="payments.amount.label" default="Amount" /></dt>
					
					<dd><g:fieldValue bean="${paymentsInstance}" field="amount"/></dd>
				
				</g:if>
			
				<g:if test="${paymentsInstance?.currency}">
				
					<dt><g:message code="payments.currency.label" default="Currency" /></dt>
					
					<dd><g:fieldValue bean="${paymentsInstance}" field="currency"/></dd>
				
				</g:if>
			
				<g:if test="${paymentsInstance?.customer}">
				
					<dt><g:message code="payments.customer.label" default="Customer" /></dt>
					
					<dd><g:link controller="customers" action="show" id="${paymentsInstance?.customer?.id}">${paymentsInstance?.customer?.encodeAsHTML()}</g:link></dd>
				
				</g:if>
			
				<g:if test="${paymentsInstance?.method}">
				
					<dt><g:message code="payments.method.label" default="Method" /></dt>
					
					<dd><g:link controller="paymentMethod" action="show" id="${paymentsInstance?.method?.id}">${paymentsInstance?.method?.encodeAsHTML()}</g:link></dd>
				
				</g:if>
			
                            </dl>
			<g:form url="[resource:paymentsInstance, action:'delete']" method="DELETE">
				
					<g:link class="edit" action="edit" resource="${paymentsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				
			</g:form>
		</div>
	</body>
</html>

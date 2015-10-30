
<%@ page import="store.Orders" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'orders.label', default: 'Orders')}" />
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
                            
			
				<g:if test="${ordersInstance?.customer}">
					<dt><g:message code="orders.customer.label" default="Customer" /></dt>
					
						<dd><g:link controller="customers" action="show" id="${ordersInstance?.customer?.id}">${ordersInstance?.customer?.encodeAsHTML()}</g:link></dd>
					
				</g:if>
			
				<g:if test="${ordersInstance?.dateCreated}">
					<dt><g:message code="orders.dateCreated.label" default="Date Created" /></dt>
					
						<dd><g:formatDate date="${ordersInstance?.dateCreated}" /></dd>
					
				</g:if>
			
				<g:if test="${ordersInstance?.lastUpdated}">
					<dt><g:message code="orders.lastUpdated.label" default="Last Updated" /></dt>
					
						<dd><g:formatDate date="${ordersInstance?.lastUpdated}" /></dd>
					
				</g:if>
			
				<g:if test="${ordersInstance?.orderDate}">
					<dt><g:message code="orders.orderDate.label" default="Order Date" /></dt>
					
						<dd><g:formatDate date="${ordersInstance?.orderDate}" /></dd>
					
				</g:if>
			
				<g:if test="${ordersInstance?.orderNumber}">
					<dt><g:message code="orders.orderNumber.label" default="Order Number" /></dt>
					
						<dd><g:fieldValue bean="${ordersInstance}" field="orderNumber"/></dd>
					
				</g:if>
			
				<g:if test="${ordersInstance?.paymentDate}">
					<dt><g:message code="orders.paymentDate.label" default="Payment Date" /></dt>
					
						<dd><g:formatDate date="${ordersInstance?.paymentDate}" /></dd>
					
				</g:if>
			
				<g:if test="${ordersInstance?.shippingDate}">
					<dt><g:message code="orders.shippingDate.label" default="Shipping Date" /></dt>
					
						<dd><g:formatDate date="${ordersInstance?.shippingDate}" /></dd>
					
				</g:if>
			
			<g:form url="[resource:ordersInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-info" action="edit" resource="${ordersInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
                    </dl>
		</div>
	</body>
</html>

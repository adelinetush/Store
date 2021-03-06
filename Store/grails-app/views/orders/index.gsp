
<%@ page import="store.Orders" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'orders.label', default: 'Orders')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div>
                    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<ul class="nav nav-pills">
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
                        <g:if test="${flash.message}">
                            <div class="alert alert-info" role="alert">${flash.message}</div>
                        </g:if>
			<table class="table">
			<thead>
					<tr>
					
						<th><g:message code="orders.customer.label" default="Customer" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'orders.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'orders.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="orderDate" title="${message(code: 'orders.orderDate.label', default: 'Order Date')}" />
					
						<g:sortableColumn property="orderNumber" title="${message(code: 'orders.orderNumber.label', default: 'Order Number')}" />
					
						<g:sortableColumn property="paymentDate" title="${message(code: 'orders.paymentDate.label', default: 'Payment Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ordersInstanceList}" status="i" var="ordersInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ordersInstance.id}">${fieldValue(bean: ordersInstance, field: "customer")}</g:link></td>
					
						<td><g:formatDate date="${ordersInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${ordersInstance.lastUpdated}" /></td>
					
						<td><g:formatDate date="${ordersInstance.orderDate}" /></td>
					
						<td>${fieldValue(bean: ordersInstance, field: "orderNumber")}</td>
					
						<td><g:formatDate date="${ordersInstance.paymentDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ordersInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

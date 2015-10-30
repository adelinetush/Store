

<%@ page import="store.Payments" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'payments.label', default: 'Payments')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-payments" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
                            <div class="alert alert-info" role="alert">${flash.message}</div>
                        </g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="amount" title="${message(code: 'payments.amount.label', default: 'Amount')}" />
					
						<g:sortableColumn property="currency" title="${message(code: 'payments.currency.label', default: 'Currency')}" />
					
						<th><g:message code="payments.customer.label" default="Customer" /></th>
					
						<th><g:message code="payments.method.label" default="Method" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${paymentsInstanceList}" status="i" var="paymentsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${paymentsInstance.id}">${fieldValue(bean: paymentsInstance, field: "amount")}</g:link></td>
					
						<td>${fieldValue(bean: paymentsInstance, field: "currency")}</td>
					
						<td><g:link controller="payments" action="show" id="${paymentsInstance.id}">${fieldValue(bean: paymentsInstance, field: "customerId")+" - "+paymentsInstance.customer.firstname +" "+ paymentsInstance.customer.lastname}</g:link></td>
					
						<td>${fieldValue(bean: paymentsInstance, field: "method")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${paymentsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

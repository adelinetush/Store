

<%@ page import="store.Customers" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'customers.label', default: 'Customers')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div>
                    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<ul>
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-customers" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
                            <div class="alert alert-info" role="alert">${flash.message}</div>
                        </g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="firstname" title="${message(code: 'customers.firstname.label', default: 'Firstname')}" />
					
						<g:sortableColumn property="lastname" title="${message(code: 'customers.lastname.label', default: 'Lastname')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'customers.email.label', default: 'Email')}" />
					
						<th><g:message code="customers.district.label" default="District" /></th>
					
						<g:sortableColumn property="street" title="${message(code: 'customers.street.label', default: 'Street')}" />
					
						<g:sortableColumn property="phoneNumber" title="${message(code: 'customers.phoneNumber.label', default: 'Phone Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customersInstanceList}" status="i" var="customersInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td> ${i+1}) <g:link action="show" id="${customersInstance.id}">${fieldValue(bean: customersInstance, field: "firstname")}</g:link></td>
					
						<td>${fieldValue(bean: customersInstance, field: "lastname")}</td>
					
						<td>${fieldValue(bean: customersInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: customersInstance, field: "district")}</td>
					
						<td>${fieldValue(bean: customersInstance, field: "street")}</td>
					
						<td>${fieldValue(bean: customersInstance, field: "phoneNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${customersInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
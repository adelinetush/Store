
<%@ page import="store.PaymentMethod" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'paymentMethod.label', default: 'PaymentMethod')}" />
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
			
				<g:if test="${paymentMethodInstance?.name}">
				
					<dt><g:message code="paymentMethod.name.label" default="Name" /></dt>
					
					<dd><g:fieldValue bean="${paymentMethodInstance}" field="name"/></dd>
				
				</g:if>
                            </dl>
			
			<g:form url="[resource:paymentMethodInstance, action:'delete']" method="DELETE">
				
					<g:link class="edit" action="edit" resource="${paymentMethodInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				
			</g:form>
		</div>
	</body>
</html>

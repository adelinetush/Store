<%@ page import="store.PaymentMethod" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'paymentMethod.label', default: 'PaymentMethod')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div >
                    <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<ul class="nav nav-pills">
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
			
			<g:if test="${flash.message}">
                            <div class="alert alert-info" role="alert">${flash.message}</div>
                        </g:if>
			<g:hasErrors bean="${paymentMethodInstance}">
                            <div class="alert alert-danger" role="alert">
                                <ul >
                                    <g:eachError bean="${paymentMethodInstance}" var="error">
                                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                    </g:eachError>
                                </ul>
                            </div>
			</g:hasErrors>
			<g:form class="form-horizontal" url="[resource:paymentMethodInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${paymentMethodInstance?.version}" />
				
					<g:render template="form"/>
				
				
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				
			</g:form>
		</div>
	</body>
</html>

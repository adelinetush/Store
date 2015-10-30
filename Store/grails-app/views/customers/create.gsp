<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'customers.label', default: 'Customers')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
                    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<ul class="nav nav-pills">
                            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
			<g:if test="${flash.message}">
                            <div class="alert alert-info" role="alert">${flash.message}</div>
                        </g:if>
			<g:hasErrors bean="${customersInstance}">
                            <div class="alert alert-danger" role="alert">
                                <ul>
                                    <g:eachError bean="${customersInstance}" var="error">
                                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                    </g:eachError>
                                </ul>
                            </div>
			</g:hasErrors>
			<g:form url="[resource:customersInstance, action:'save']" >
				<g:render template="form"/>
				<g:submitButton name="create" class="btn btn-default" value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</g:form>
		</div>
	</body>
</html>

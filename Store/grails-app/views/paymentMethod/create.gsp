<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'paymentMethod.label', default: 'PaymentMethod')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		
            <div >
                <h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<ul class="nav nav-pills">
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
			<g:if test="${flash.message}">
                            <div class="alert alert-info" role="alert">${flash.message}</div>
                        </g:if>
			<g:hasErrors bean="${paymentMethodInstance}">
                            <div class="alert alert-danger" role="alert">
                                <ul class="errors" role="alert">
                                    <g:eachError bean="${paymentMethodInstance}" var="error">
                                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                    </g:eachError>
                                </ul>
                            </div>
			</g:hasErrors>
			<g:form url="[resource:paymentMethodInstance, action:'save']" >
				
					<g:render template="form"/>
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				
			</g:form>
		</div>
	</body>
</html>

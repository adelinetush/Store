<%@ page import="store.Categories" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'categories.label', default: 'Categories')}" />
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
                                
			<g:hasErrors bean="${categoriesInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${categoriesInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form class="form-horizontal" url="[resource:categoriesInstance, action:'update']" method="PUT" >
                <fieldset>
                <g:hiddenField name="version" value="${categoriesInstance?.version}" />

                <g:render template="form"/>
                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <g:actionSubmit class="btn btn-info" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    </div>
                </div>
                </fieldset>
            </g:form>
		</div>
	</body>
</html>

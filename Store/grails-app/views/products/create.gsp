<!DOCTYPE html>
<g:applyLayout name="onecolumn">
    <head>
        <meta name="layout" content="store2">
        <g:set var="entityName" value="${message(code: 'products.label', default: 'Products')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <content tag="message">


        <h1><g:message code="default.create.label" args="[entityName]" /></h1>
        <ul class="nav nav-pills">

            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>

<!-- <div id="create-products" class="content scaffold-create" role="main"> -->

        <g:if test="${flash.message}">
            <div class="alert alert-info" role="alert">${flash.message}</div>
        </g:if>
    </content>
    <content tag="col1">
        <g:hasErrors bean="${productsInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${productsInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
            </ul>
        </g:hasErrors>
        <g:uploadForm url="[resource:productsInstance, action:'save']" >

            <g:render template="form"/>
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />

        </g:uploadForm>

    </content>
</g:applyLayout>

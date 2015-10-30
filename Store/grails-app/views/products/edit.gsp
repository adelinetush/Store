<%@ page import="store.Products" %>
<!DOCTYPE html>
<g:applyLayout name="onecolumn">
    <head>
        <meta name="layout" content="store2">
        <g:set var="entityName" value="${message(code: 'products.label', default: 'Products')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <content tag="message">
        <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
        <ul class="nav nav-pills">

            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>

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
        <g:uploadForm url="[resource:productsInstance, action:'update']" method="PUT" >
            <g:hiddenField name="version" value="${productsInstance?.version}" />

            <g:render template="form"/>
            <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />

        </g:uploadForm>
</content>
</g:applyLayout>

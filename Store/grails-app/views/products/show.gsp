
<%@ page import="store.Products" %>
<g:applyLayout name="onecolumn">
    <head>
        <g:set var="entityName" value="${message(code: 'products.label', default: 'Products')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <content tag="message">

        <h1><g:message code="default.show.label" args="[entityName]" /></h1>
        <ul class="nav nav-pills">

            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        <g:if test="${flash.message}">
            <div class="alert alert-info" role="alert">${flash.message}</div>
        </g:if>
    </content>
    <content tag="col1">
        <div class="well">
            <dl class="dl-horizontal">

                <g:if test="${productsInstance?.category}">
                    <li class="fieldcontain">
                    <dt><g:message code="products.category.label" default="Category" /></dt>

                    <dd><g:link controller="categories" action="show" id="${productsInstance?.category?.id}">${productsInstance?.category?.encodeAsHTML()}</g:link></dd>

                    </li>
                </g:if>

                <g:if test="${productsInstance?.image}">
                    <li class="fieldcontain">
                    <dt><g:message code="products.image.label" default="Image" /></dt>

                    <dd><g:fieldValue bean="${productsInstance}" field="image"/></dd>

                    </li>
                </g:if>

                <g:if test="${productsInstance?.name}">
                    <li class="fieldcontain">
                    <dt><g:message code="products.name.label" default="Name" /></dt>

                    <dd><g:fieldValue bean="${productsInstance}" field="name"/></dd>

                    </li>
                </g:if>

                <g:if test="${productsInstance?.price}">
                    <li class="fieldcontain">
                    <dt><g:message code="products.price.label" default="Price" /></dt>

                    <dd><g:fieldValue bean="${productsInstance}" field="price"/></dd>

                    </li>
                </g:if>

                <g:if test="${productsInstance?.tax}">
                    <li class="fieldcontain">
                    <dt><g:message code="products.tax.label" default="Tax" /></dt>

                    <dd><g:fieldValue bean="${productsInstance}" field="tax"/></dd>

                    </li>
                </g:if>

                </ol>
                <g:form url="[resource:productsInstance, action:'delete']" method="DELETE">
                    <fieldset class="buttons">
                        <g:link class="edit" action="edit" resource="${productsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </dl>
        </div>
    </content>
</g:applyLayout>



<%@ page import="store.Products" %>
<g:applyLayout name="onecolumn">
    <head>
        <g:set var="entityName" value="${message(code: 'products.label', default: 'Products')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <content tag="message">
        <div>
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <ul>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="list-products" class="content scaffold-list" role="main">
                <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="alert alert-info" role="alert">${flash.message}</div>
            </g:if>
    </content>
    <content tag="col1">

        <table class="table">
            <thead>
                <tr>

                    <th><g:message code="products.category.label" default="Category" /></th>

                        <g:sortableColumn property="image" title="${message(code: 'products.image.label', default: 'Image')}" />

                        <g:sortableColumn property="name" title="${message(code: 'products.name.label', default: 'Name')}" />

                        <g:sortableColumn property="price" title="${message(code: 'products.price.label', default: 'Price')}" />

                        <g:sortableColumn property="tax" title="${message(code: 'products.tax.label', default: 'Tax')}" />

                </tr>
            </thead>
            <tbody>
                <g:each in="${productsInstanceList}" status="i" var="productsInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show" id="${productsInstance.id}">${fieldValue(bean: productsInstance, field: "category")}</g:link></td>

                        <td>${fieldValue(bean: productsInstance, field: "image")}</td>

                        <td>${fieldValue(bean: productsInstance, field: "name")}</td>

                        <td>${fieldValue(bean: productsInstance, field: "price")}</td>

                        <td>${fieldValue(bean: productsInstance, field: "tax")}</td>

                    </tr>
                </g:each>
            </tbody>
        </table>
        <div class="pagination">
            <g:paginate total="${productsInstanceCount ?: 0}" />
        </div>
    </div>
</content>
</g:applyLayout>

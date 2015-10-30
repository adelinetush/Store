
<%@ page import="store.Districts" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="store2">
        <g:set var="entityName" value="${message(code: 'districts.label', default: 'Districts')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div> 
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <ul class="nav nav-pills">
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
            <g:if test="${flash.message}">
                <div class="alert alert-info" role="alert">${flash.message}</div>
            </g:if>
            <table class="table">
                <thead>
                    <tr>

                        <g:sortableColumn property="name" title="${message(code: 'districts.name.label', default: 'Name')}" />

                        <g:sortableColumn property="shortcut" title="${message(code: 'districts.shortcut.label', default: 'Shortcut')}" />

                        <th><g:message code="districts.subregion.label" default="Subregion" /></th>

                    </tr>
                </thead>
                <tbody>
                    <g:each in="${districtsInstanceList}" status="i" var="districtsInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                            <td><g:link action="show" id="${districtsInstance.id}">${fieldValue(bean: districtsInstance, field: "name")}</g:link></td>

                            <td>${fieldValue(bean: districtsInstance, field: "shortcut")}</td>

                            <td>${fieldValue(bean: districtsInstance, field: "subregion")}</td>

                        </tr>
                    </g:each>
                </tbody>
            </table>
                <g:paginate total="${districtsInstanceCount ?: 0}" />
        </div>
    </body>
</html>

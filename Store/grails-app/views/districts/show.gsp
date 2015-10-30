
<%@ page import="store.Districts" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="store2">
        <g:set var="entityName" value="${message(code: 'districts.label', default: 'Districts')}" />
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

                    <g:if test="${districtsInstance?.name}">
                            <dt><g:message code="districts.name.label" default="Name" /></dt>

                            <dd><g:fieldValue bean="${districtsInstance}" field="name"/></dd>

                        </li>
                    </g:if>

                    <g:if test="${districtsInstance?.shortcut}">
                            <dt><g:message code="districts.shortcut.label" default="Shortcut" /></dt>

                            <dd><g:fieldValue bean="${districtsInstance}" field="shortcut"/></dd>

                    </g:if>

                    <g:if test="${districtsInstance?.subregion}">
                            <dt><g:message code="districts.subregion.label" default="Subregion" /></dt>

                            <dd><g:link controller="subRegions" action="show" id="${districtsInstance?.subregion?.id}">${districtsInstance?.subregion?.encodeAsHTML()}</g:link></dd>

                    </g:if>

                </dl>
                <g:form url="[resource:districtsInstance, action:'delete']" method="DELETE">
                        <g:link class="btn btn-default" action="edit" resource="${districtsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </g:form>
            </div>
        </div>
    </body>
</html>

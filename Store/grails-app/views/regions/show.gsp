
<%@ page import="store.Regions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'regions.label', default: 'Regions')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div >
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
			
				<g:if test="${regionsInstance?.name}">
				
					<dt><g:message code="regions.name.label" default="Name" /></dt>
					
					<dl><g:fieldValue bean="${regionsInstance}" field="name"/></dd>
				
				</g:if>
			
				<g:if test="${regionsInstance?.shortcut}">
				
					<dt><g:message code="regions.shortcut.label" default="Shortcut" /></dt>
					
					<dd><g:fieldValue bean="${regionsInstance}" field="shortcut"/></dd>
				
				</g:if>
			
				<g:if test="${regionsInstance?.subregion}">
				
					<dt><g:message code="regions.subregion.label" default="Subregion" /></dt>
					
						<g:each in="${regionsInstance.subregion}" var="s">
						<dd><g:link controller="subRegions" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></dd>
						</g:each>
				
				</g:if>
			
                            </dl>
			<g:form url="[resource:regionsInstance, action:'delete']" method="DELETE">
				
					<g:link class="edit" action="edit" resource="${regionsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				
			</g:form>
		</div>
	</body>
</html>

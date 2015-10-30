
<%@ page import="store.SubRegions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'subRegions.label', default: 'SubRegions')}" />
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
			
				<g:if test="${subRegionsInstance?.district}">
				
					<dt><g:message code="subRegions.district.label" default="District" /></dt>
					
						<g:each in="${subRegionsInstance.district}" var="d">
					<dd><g:link controller="districts" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></dd>
						</g:each>
				
				</g:if>
			
				<g:if test="${subRegionsInstance?.name}">
				
					<dt><g:message code="subRegions.name.label" default="Name" /></dt>
					
					<dd><g:fieldValue bean="${subRegionsInstance}" field="name"/></dd>
				
				</g:if>
			
				<g:if test="${subRegionsInstance?.region}">
				
					<dt><g:message code="subRegions.region.label" default="Region" /></dt>
					
					<dd><g:link controller="regions" action="show" id="${subRegionsInstance?.region?.id}">${subRegionsInstance?.region?.encodeAsHTML()}</g:link></dd>
				
				</g:if>
			
				<g:if test="${subRegionsInstance?.shortcut}">
				
					<dt><g:message code="subRegions.shortcut.label" default="Shortcut" /></dt>
					
					<dd><g:fieldValue bean="${subRegionsInstance}" field="shortcut"/></dd>
				
				</g:if>
			
                            </dl>
			<g:form url="[resource:subRegionsInstance, action:'delete']" method="DELETE">
				
					<g:link class="edit" action="edit" resource="${subRegionsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				
			</g:form>
		</div>
	</body>
</html>

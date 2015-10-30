
<%@ page import="store.Categories" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'categories.label', default: 'Categories')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div>
                    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<ul claass="nav nav-pills">
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
                        <g:if test="${flash.message}">
                            <div class="alert alert-info" role="alert">${flash.message}</div>
                        </g:if>
			<div class="well">
                            <dl class="dl-horizontal">
			
			
				<g:if test="${categoriesInstance?.name}">
				<li class="fieldcontain">
					<dt><g:message code="categories.name.label" default="Name" /></dt>
					
						<dd><g:fieldValue bean="${categoriesInstance}" field="name"/></dd>
					
				</li>
				</g:if>
			
				<g:if test="${categoriesInstance?.product}">
				<li class="fieldcontain">
					<dt><g:message code="categories.product.label" default="Product" /></dt>
					
						<g:each in="${categoriesInstance.product}" var="p">
						<dd><g:link controller="products" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></dd>
						</g:each>
					
				</li>
				</g:if>
                            </dl>
			
			</div>
			<g:form url="[resource:categoriesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${categoriesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

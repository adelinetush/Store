
<%@ page import="store.Regions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'regions.label', default: 'Regions')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-regions" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
                            <div class="alert alert-info" role="alert">${flash.message}</div>
                        </g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'regions.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="shortcut" title="${message(code: 'regions.shortcut.label', default: 'Shortcut')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${regionsInstanceList}" status="i" var="regionsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${regionsInstance.id}">${fieldValue(bean: regionsInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: regionsInstance, field: "shortcut")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${regionsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

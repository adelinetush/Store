
<%@ page import="store.Districts" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="store">
		<g:set var="entityName" value="${message(code: 'districts.label', default: 'Districts')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-districts" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-districts" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
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
			<div class="pagination">
				<g:paginate total="${districtsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

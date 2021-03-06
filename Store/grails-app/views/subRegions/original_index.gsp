
<%@ page import="store.SubRegions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subRegions.label', default: 'SubRegions')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-subRegions" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-subRegions" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'subRegions.name.label', default: 'Name')}" />
					
						<th><g:message code="subRegions.region.label" default="Region" /></th>
					
						<g:sortableColumn property="shortcut" title="${message(code: 'subRegions.shortcut.label', default: 'Shortcut')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${subRegionsInstanceList}" status="i" var="subRegionsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${subRegionsInstance.id}">${fieldValue(bean: subRegionsInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: subRegionsInstance, field: "region")}</td>
					
						<td>${fieldValue(bean: subRegionsInstance, field: "shortcut")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${subRegionsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

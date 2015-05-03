
<%@ page import="com.vbpm.engine.Process" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'process.label', default: 'Process')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<section>
		
	<div class="container">
		<a href="#show-process" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-process" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list process">
			
				<g:if test="${processInstance?.processLabel}">
				<li class="fieldcontain">
					<span id="processLabel-label" class="property-label"><g:message code="process.processLabel.label" default="Process Label" /></span>
					
						<span class="property-value" aria-labelledby="processLabel-label"><g:fieldValue bean="${processInstance}" field="processLabel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${processInstance?.processStat}">
				<li class="fieldcontain">
					<span id="processStat-label" class="property-label"><g:message code="process.processStat.label" default="Process Stat" /></span>
					
						<span class="property-value" aria-labelledby="processStat-label"><g:fieldValue bean="${processInstance}" field="processStat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${processInstance?.tasks}">
				<li class="fieldcontain">
					<span id="tasks-label" class="property-label"><g:message code="process.tasks.label" default="Tasks" /></span>
					
						<span class="property-value" aria-labelledby="tasks-label"><g:link controller="task" action="show" id="${processInstance?.tasks?.id}">${processInstance?.tasks?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:processInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${processInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</div></section>
	</body>
</html>

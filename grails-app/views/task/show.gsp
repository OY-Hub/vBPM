
<%@ page import="com.vbpm.engine.Task" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<section>
		
	<div class="container">
		<a href="#show-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-task" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list task">
			
				<g:if test="${taskInstance?.processes}">
				<li class="fieldcontain">
					<span id="processes-label" class="property-label"><g:message code="task.processes.label" default="Processes" /></span>
					
						<g:each in="${taskInstance.processes}" var="p">
						<span class="property-value" aria-labelledby="processes-label"><g:link controller="process" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.taskLabel}">
				<li class="fieldcontain">
					<span id="taskLabel-label" class="property-label"><g:message code="task.taskLabel.label" default="Task Label" /></span>
					
						<span class="property-value" aria-labelledby="taskLabel-label"><g:fieldValue bean="${taskInstance}" field="taskLabel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.taskStat}">
				<li class="fieldcontain">
					<span id="taskStat-label" class="property-label"><g:message code="task.taskStat.label" default="Task Stat" /></span>
					
						<span class="property-value" aria-labelledby="taskStat-label"><g:fieldValue bean="${taskInstance}" field="taskStat"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:taskInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${taskInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</div></section>
	</body>
</html>

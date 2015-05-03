<%@ page import="com.vbpm.engine.Process" %>



<div class="fieldcontain ${hasErrors(bean: processInstance, field: 'processLabel', 'error')} ">
	<label for="processLabel">
		<g:message code="process.processLabel.label" default="Process Label" />
		
	</label>
	<g:textField name="processLabel" value="${processInstance?.processLabel}" />

</div>

<div class="fieldcontain ${hasErrors(bean: processInstance, field: 'processStat', 'error')} ">
	<label for="processStat">
		<g:message code="process.processStat.label" default="Process Stat" />
		
	</label>
	<g:textField name="processStat" value="${processInstance?.processStat}" />

</div>

<div class="fieldcontain ${hasErrors(bean: processInstance, field: 'tasks', 'error')} ">
	<label for="tasks">
		<g:message code="process.tasks.label" default="Tasks" />
		
	</label>
	<g:select id="tasks" name="tasks.id" from="${com.vbpm.engine.Task.list()}" optionKey="id" required="" value="${processInstance?.tasks?.id}" class="many-to-one"/>

</div>


<%@ page import="com.vbpm.engine.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'processes', 'error')} ">
	<label for="processes">
		<g:message code="task.processes.label" default="Processes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${taskInstance?.processes?}" var="p">
    <li><g:link controller="process" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="process" action="create" params="['task.id': taskInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'process.label', default: 'Process')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'taskLabel', 'error')} ">
	<label for="taskLabel">
		<g:message code="task.taskLabel.label" default="Task Label" />
		
	</label>
	<g:textField name="taskLabel" value="${taskInstance?.taskLabel}" />

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'taskStat', 'error')} ">
	<label for="taskStat">
		<g:message code="task.taskStat.label" default="Task Stat" />
		
	</label>
	<g:textField name="taskStat" value="${taskInstance?.taskStat}" />

</div>


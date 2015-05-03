
<%@ page import="com.vbpm.engine.Process"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'process.label', default: 'Process')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
<style>
.table > tbody > tr.even{
background-color: #E1E0E0;
}
.table > tbody > tr.odd{
	background-color: #BDD2DA;
}
</style>
	<section>

		<div class="container">
			<div class="page-header">
				<h1>
					Processes List <small></small>
				</h1>
			</div>

			<div class="nav" role="navigation" style="margin-bottom:5px;">
				<div class="row">
					<div class="col-xs-12 col-md-10"></div>
					<div class="col-xs-6 col-md-2">
						<g:link class="create" action="create">
							<button type="button" class="btn btn-primary"
								style="width: 100%;">New Process</button>
						</g:link>
					</div>
				</div>

			</div>
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<g:sortableColumn property="processLabel"
										title="${message(code: 'process.processLabel.label', default: 'Process Label')}" />

									
								</tr>
							</thead>
							<tbody>
								<g:each in="${processInstanceList}" status="i"
									var="processInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

										<td class="col-md-8"><g:link action="show" id="${processInstance.id}">
												${fieldValue(bean: processInstance, field: "processLabel")}
											</g:link></td>

										<td class="col-md-2">
											${fieldValue(bean: processInstance, field: "processStat")}
										</td>

										<td class="col-md-2">
											${fieldValue(bean: processInstance, field: "tasks")}
										</td>

									</tr>
								</g:each>
							</tbody>
						</table>
						<div class="pagination">
							<g:paginate total="${processInstanceCount ?: 0}" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>

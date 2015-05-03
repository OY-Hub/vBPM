
<%@ page import="com.myapp.auth.User"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'user.label', default: 'User')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<section>

		<div class="container">

			<!--   Basic Table  -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<g:link class="create" action="create"
						class="btn btn-primary btn-sm">Ajouter Utilisateur</g:link>
					<g:link class="list" action="index" class="btn btn-primary btn-sm">Liste des utilisateurs</g:link>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<g:sortableColumn property="username"
										title="${message(code: 'user.username.label', default: 'Username')}" />

									<g:sortableColumn property="accountLocked"
										title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}" />

									<g:sortableColumn property="email"
										title="${message(code: 'user.email.label', default: 'Email')}" />

									<g:sortableColumn property="enabled"
										title="${message(code: 'user.enabled.label', default: 'Enabled')}" />

									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<g:each in="${userInstanceList}" status="i" var="userInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

										<td><g:link action="show" id="${userInstance.id}">
												${fieldValue(bean: userInstance, field: "username")}
											</g:link></td>

										<td><g:formatBoolean
												boolean="${userInstance.accountLocked}" /></td>

										<td>
											${fieldValue(bean: userInstance, field: "email")}
										</td>

										<td><g:formatBoolean boolean="${userInstance.enabled}" /></td>
										<td><g:link action="show" resource="${userInstance}"
												class="btn btn-info btn-sm fit-2">Show</g:link> <g:link
												action="edit" resource="${userInstance}"
												class="btn btn-primary btn-sm fit-2">Edit</g:link></td>
									</tr>
								</g:each>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- End  Basic Table  -->



			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>

		</div>

	</section>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'user.label', default: 'User')}" />
<title>Ajouter un utilisateur</title>
</head>
<body>
	<section>
		<div class="container">
			<div class="panel panel-default">
				<div class="panel-heading">
					<g:link class="create" action="create"
						class="btn btn-primary btn-sm">Ajouter Utilisateur</g:link>
					<g:link class="list" action="index" class="btn btn-primary btn-sm">Liste des utilisateurs</g:link>
				</div>
				<div class="panel-body">

					<div id="create-user" class="content scaffold-create" role="main">

						<g:if test="${flash.message}">
							<div class="message" role="status">
								${flash.message}
							</div>
						</g:if>
						<g:hasErrors bean="${userInstance}">
							<ul class="errors" role="alert">
								<g:eachError bean="${userInstance}" var="error">
									<li
										<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
											error="${error}" /></li>
								</g:eachError>
							</ul>
						</g:hasErrors>
						<g:form url="[resource:userInstance, action:'save']">
							<fieldset class="form">
								<g:render template="form" />
							</fieldset>
							<fieldset class="buttons">
								<g:submitButton name="create" class="save"
									value="${message(code: 'default.button.create.label', default: 'Create')}" />
							</fieldset>
						</g:form>
					</div>

				</div>
			</div>
		</div>
	</section>
</body>
</html>

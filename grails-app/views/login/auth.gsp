<html>
<head>
<meta name='layout' content='main' />
<title><g:message code="springSecurity.login.title" /></title>

</head>

<body>
<section>
	
	<div class="container">
		<div id='login'>
			<div class='inner'>
				<div class='fheader'>
					Entrer vos données
				</div>
	
				<g:if test='${flash.message}'>
					<div class='login_message'>
						${flash.message}
					</div>
				</g:if>
	
				<form action='${postUrl}' method='POST' id='loginForm'
					class='cssform' autocomplete='off'>
					<div class="form-group">
						<label class="control-label" for="username">Login :</label> <input
							id="username" class="form-control" type="text" name='j_username' />
					</div>
					<div class="form-group">
						<label class="control-label" for="password">Mot de passe :</label>
						<input id="password" class="form-control" type="password"
							name='j_password' />
					</div>
					<div class="checkbox">
						<label> <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'
							<g:if test='${hasCookie}'>checked='checked'</g:if> /> souvenir de moi</label>
					</div>
					
					<p>
						<button type="reset" class="btn btn-default">Reset</button>
						<button type="submit" class="btn btn-default" value='${message(code: "springSecurity.login.button")}'>Submit</button>
					</p>
				</form>
			</div>
		</div>
	</div>
</section>
</body>
</html>

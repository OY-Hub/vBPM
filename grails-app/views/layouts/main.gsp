<!DOCTYPE html>
<head>

<title><g:layoutTitle
		default="vBPM - Vinci Business Process Management" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<asset:stylesheet src="application.css" />
<g:layoutHead />

</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${createLink(uri: '/')}">vBPM</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">

					<sec:ifLoggedIn>
						<sec:access expression="hasRole('RESQUALITER')">
							<li><g:link controller='task' action="index">Tasks</g:link></li>
							<li><g:link controller='process' action="index">Processes</g:link></li>
						</sec:access>
						<li><g:link controller='logout'>Logout</g:link></li>
					</sec:ifLoggedIn>

					<sec:ifNotLoggedIn>
						<li class="active"><a href="${createLink(uri: '/')}">Home</a></li>
						<li><a href="${createLink(uri: '/about')}">About</a></li>
						<li><a href="${createLink(uri: '/contact')}">Contact</a></li>
						<li><g:link controller='login' action='auth'>Login</g:link></li>
					</sec:ifNotLoggedIn>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>



	<g:layoutBody />



	<footer class="footer">
		<div class="container">
			<p class="text-muted">Place sticky footer content here.</p>
		</div>
	</footer>
	<asset:javascript src="application.js" />

	<script src="js/bootstrap.min.js"></script>

</body>
</html>

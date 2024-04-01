<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert Departement</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
</head>
<body>
	<%
	boolean insertionSuccessful = (Boolean) request.getAttribute("insertionSuccessful");
	%>
	<!-- navbar -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<div class="d-flex align-items-center">
				<a class="navbar-brand mb-0 h1" href="#">ENS-Annuaire</a>
			</div>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<div class="ms-auto">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="index.jsp">Acceuil</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Listes </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="./getAllDepartements">Liste
										des départements</a></li>
								<li><a class="dropdown-item" href="./getAllFilieres">Liste
										des filières</a></li>
								<li><a class="dropdown-item" href="./getAllEtudiants">Liste
										des étudiants</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false">
								Administration </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="InsertDepartement.html">Insérer
										une département</a></li>
								<li><a class="dropdown-item" href="#">Insérer une
										filière</a></li>
								<li><a class="dropdown-item" href="#">Insérer un
										étudiant</a></li>
							</ul></li>

						<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<!-- content -->
	<div class="container mt-4 justify-content-center w-50">
		<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
  		<symbol id="check-circle-fill" viewBox="0 0 16 16">
    		<path
				d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
  		</symbol>
  		<symbol id="exclamation-triangle-fill" viewBox="0 0 16 16">
    	<path
				d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
  		</symbol>
	</svg>
		<%
		if (insertionSuccessful) {
		%>
		<div class="alert alert-success d-flex flex-column align-items-center"
			role="alert">
			<svg class="bi flex-shrink-0 me-2" role="img" aria-label="Success:">
                <use xlink:href="#check-circle-fill" />
            </svg>
			<div class="col p-2">Insertion réussie</div>
			<div class="col-auto p-2">
				<a class="alert-link" href="InsertDepartement.html">Retour à la
					page d'insertion</a>
			</div>
		</div>
		<%
		} else {
		%>
		<div class="alert alert-danger d-flex flex-column align-items-center" role="alert">
			<div class="col-auto">
				<svg class="bi flex-shrink-0 me-2" role="img" aria-label="Danger:">
            <use xlink:href="#exclamation-triangle-fill" />
        </svg>
			</div>
			<div class="col p-2">Échec de l'insertion</div>
			<div class="col-auto p-2">
				<a class="alert-link" href="InsertDepartement.html">Retour à la
					page d'insertion</a>
			</div>
		</div>

		<%
		}
		%>

	</div>

	<!-- footer -->
	<nav class="navbar fixed-bottom bg-dark">
		<div class="container-fluid d-flex justify-content-center">
			<a class="navbar-brand text-light-emphasis fs-6" href="#">ENS
				mini-Annuaire &copy; 2024</a>
		</div>
	</nav>
</body>
</html>

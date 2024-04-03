<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.web.model.Etudiant"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List etudiants</title>
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
								<li><a class="dropdown-item" href="InsertDepartement.jsp">Insérer
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
	<div class="content p-2">
		<div class="row justify-content-center w-100">
			<div class="col-8">
				<div class="d-flex justify-content-center align-items-center position-relative">
					<div class="d-flex align-items-center">
						<h3 class="text-center mt-1">Liste des étudiants</h3>
					</div>
					<a class="btn btn-light top-0 end-0 position-absolute" href="RechercheEtudiant.html"> <svg
							xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
            <path
								d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
        </svg>
					</a>
				</div>



				<table
					class="table table-body-tertiary table-hover table-responsive my-4">
					<thead class="table-dark">
						<tr>
							<th scope="col">CNE</th>
							<th scope="col">Nom et Prénom</th>
							<th scope="col">Téléphone</th>
							<th scope="col">Filière suivi</th>
							<th scope="col">Département</th>
						</tr>
					</thead>
					<tbody>
						<%
						// Retrieve filieres from request attribute
						List<Etudiant> etudiants = (List<Etudiant>) request.getAttribute("etudiants");
						// Iterate over filieres and display them
						for (Etudiant etudiant : etudiants) {
						%>
						<tr>
							<th scope="row"><%=etudiant.getCNE()%></th>
							<td><%=etudiant.getNom() + " " + etudiant.getPrenom()%></td>
							<td><%=etudiant.getTelephone()%></td>
							<td><%=etudiant.getFiliere().getNom()%></td>
							<td><%=etudiant.getFiliere().getDepartement().getNom()%></td>
						</tr>
						<%
						}
						%>

					</tbody>
				</table>
			</div>
		</div>
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
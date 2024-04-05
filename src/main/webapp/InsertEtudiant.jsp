<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.web.dao.FiliereDao"%>
<%@ page import="com.example.web.model.Filiere"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert étudiants</title>
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
	Boolean insertionSuccessful = (Boolean) request.getAttribute("insertionSuccessful");
	%>
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
								<li><a class="dropdown-item" href="InsertFiliere.jsp">Insérer
										une filière</a></li>
								<li><a class="dropdown-item" href="InsertEtudiant.jsp">Insérer
										un étudiant</a></li>
							</ul></li>

						<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<!-- content -->
	<div class="content p-2">
		<div class="d-flex justify-content-end">
			<%
			if (insertionSuccessful != null && insertionSuccessful) {
			%>
			<div class="alert alert-success alert-dismissible fade show h-25"
				role="alert">
				Insertion réussie
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>
			<%
			} else if (insertionSuccessful != null && !insertionSuccessful) {
			%>
			<div class="alert alert-danger alert-dismissible fade show h-25"
				role="alert">
				Échec de l'insertion
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>
			<%
			}
			%>
		</div>

		<div class="row justify-content-center w-100">
			<div class="col-4">
				<h3 class="text-center mb-2">Insérer un(e) étudiant(e)</h3>
				<div class="card p-4 bg-body-tertiary" style="width: 100%;">
					<form method="post" action="insertEtudiant" class="row g-1">
						<div class="col-12">
							<label for="inputAddress" class="form-label">CNE</label> <input
								type="number" class="form-control" id="inputAddress" name="CNE" maxlength="10" required>
						</div>
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">Nom</label> <input
								type="text" class="form-control" id="inputEmail4" name="nom" required>
						</div>
						<div class="col-md-6">
							<label for="inputPassword4" class="form-label">Prénom</label> <input
								type="text" class="form-control" id="inputPassword4" name="prenom" required>
						</div>
						<div class="col-12">
							<label for="inputAddress" class="form-label">Téléphone</label> <input
								type="number" class="form-control" id="inputAddress" name="tele" maxlength="10" required>
						</div>
						<div class="col-12">
							<label for="exampleInputEmail1" class="form-label">Nom de
								filière</label> <select class="form-select"
								aria-label="Default select example" name="id_filiere"
								required>
								<option disabled selected>Sélectionner</option>
								<%
								FiliereDao filiereDao = new FiliereDao();
								List<Filiere> filieres = filiereDao.getFilieres();
								for (Filiere filiere : filieres) {
								%>
								<option value="<%=filiere.getId()%>"><%=filiere.getNom()%></option>
								<%
								}
								%>
							</select>
						</div>
						<div class="d-flex justify-content-end">
							<button type="submit" class="btn btn-primary">Ajouter</button>
						</div>
					</form>
				</div>
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
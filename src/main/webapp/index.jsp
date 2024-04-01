<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<title>Acceuil</title>
<style>
#bah {
	background-image:
		url("https://s2.qwant.com/thumbr/0x380/6/a/4028e6dc40bcf6f1d8e3fc88b080fe81fc444700e93280f9186c2dcf7f1777/Acc%C3%A8s-aux-licences-professionnelles-et-aux-masters-ENS-T%C3%A9touan-2017.jpg?u=https%3A%2F%2Fcdn-03.9rayti.com%2Frsrc%2Fcache%2Fwiden_750%2Fuploads%2F2017%2F07%2FAcc%25C3%25A8s-aux-licences-professionnelles-et-aux-masters-ENS-T%25C3%25A9touan-2017.jpg&q=0&b=1&p=0&a=0");
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center center;
}

#bah::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
}

.custom-content {
	transform: translate(-6%, -9%);
	text-align: center;
	color: white;
	z-index: 1;
}
</style>
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
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Acceuil</a></li><li
							class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Listes </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item"
									href="./getAllDepartements">Liste des départements</a></li>
								<li><a class="dropdown-item" href="./getAllFilieres">Liste des
										filières</a></li>
								<li><a class="dropdown-item" href="./getAllEtudiants">Liste des
										étudiants</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Administration </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="InsertDepartement.html">Insérer une département</a></li>
								<li><a class="dropdown-item" href="#">Insérer une filière</a></li>
								<li><a class="dropdown-item" href="#">Insérer un étudiant</a></li>
							</ul></li>
					
					<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                </ul>
            </div>
        </div>
    </div>
</nav>

	<!-- image -->
	<div class="position-relative overflow-hidden text-center bg-secondary"
		id="bah">
		<div class="col-md-5 p-lg-5 mx-auto my-5 custom-content">
			<h1 class="display-4 fw-normal text-white">Bienvenue dans
				mini-Annuaire d'ENS</h1>
			<p class="lead fw-normal text-white">Découvrez facilement les
				étudiants, les départements et les filières . Commencez à explorer
				dès maintenant !</p>
			<a class="btn btn-primary" href="">Commencer!</a>
		</div>
		<div class="product-device shadow-sm d-none d-md-block"></div>
		<div
			class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
	</div>
	<!-- footer -->
	<nav class="navbar fixed-bottom bg-dark">
    <div class="container-fluid d-flex justify-content-center">
        <a class="navbar-brand text-light-emphasis fs-6" href="#">ENS mini-Annuaire &copy; 2024</a>
    </div>
</nav>

</body>
</html>

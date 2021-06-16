<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Inclusão do bootstrap -->
<link rel="stylesheet"
	href="../../resources/bootstrap/css/bootstrap.min.css">
<!-- jQuery (necessário para os plugins Javascript do Bootstrap) -->
<script src="../../resources/jquery/jquery-3.6.0.min.js"></script>
<!-- Incluir plugins do Bootstrap -->
<script src="../../resources/bootstrap/js/bootstrap.min.js"></script>
<!-- Incluir biblioteca fontawesome -->
<link href="../../resources/fontawesome/css/all.css" rel="stylesheet">
<!-- SmartMenus core CSS (required) -->
<link href="../../resources/smartmenus/css/sm-core-css.css"
	rel="stylesheet" type="text/css" />
<!-- "sm-blue" menu theme (optional, you can use your own CSS, too) -->
<link href="../../resources/smartmenus/css/sm-clean/sm-clean.css"
	rel="stylesheet" type="text/css" />

<!-- Inclusão de estilos nossos -->
<link rel="stylesheet" href="../../resources/estilos.css">


</head>
<body>

	<h3>Aplicação da disciplina de Prog. de Aplicações OO</h3>

	<nav class="main-nav">
		<!-- Sample menu definition -->
		<ul id="main-menu" class="sm sm-clean">
			<li><a href="../Home/Home.jsp">Home</a></li>
			<li><a href="#">Cadastros</a>
				<ul>

					<li><a href="../Usuario/AtividadeServlet">Usuários</a>
					<li><a href="../Pessoa/PessoaServlet">Pessoas</a>
					<li><a href="../Locomocao/LocomocaoServlet">Locomoções</a>
					<li><a href="../Localizacao/LocalizacaoServlet">Localizações</a>
					<li><a href="../Ronda/RondaServlet">Rondas</a>
					<li><a href="../Ocorrencia/OcorrenciaServlet">Ocorrencia</a>
					
					
					<li><a href="#">Mais cadastros</a>
						<ul>
							<li><a href="../Cidade/CidadeServlet">Cidades</a></li>

							<li><a
								href="http://www.smartmenus.org/about/vadikom/privacy-policy/">Privacy
									policy</a></li>
						</ul></li>
				</ul></li>
			<li><a href="../SairServlet">Sair</a></li>
		</ul>
	</nav>


	<!-- jQuery -->
	<script type="text/javascript"
		src="../../resources/smartmenus/libs/jquery/jquery.js"></script>
	<!-- SmartMenus jQuery plugin -->
	<script type="text/javascript"
		src="../../resources/smartmenus/jquery.smartmenus.js"></script>
	<!-- SmartMenus jQuery init -->
	<script type="text/javascript">
		$(function() {
			$('#main-menu').smartmenus({
				subMenusSubOffsetX : 1,
				subMenusSubOffsetY : -8
			});
		});
	</script>





</body>
</html>
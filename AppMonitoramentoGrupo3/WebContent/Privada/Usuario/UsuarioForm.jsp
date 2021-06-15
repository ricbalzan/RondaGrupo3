<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cadastro de Usuario</title>
</head>

<body>
	<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
	
	<h3>Cadastro de Usuario</h3>
	
	<form action="PessoaServlet" method="post">
	
		<fieldset>
			<div class="form-floating">
			<input type="number" class="form-control" id="id" name="id" value="${o.id}" placeholder="Id" readonly="readonly">
			</div>
			<br>
			<div class="form-floating">
			  <input type="text" class="form-control" id="nome" name="nome" value="${o.nome}" placeholder="Nome">
			</div>
			<br>
			<div class="form-floating">
			  <input type="email" class="form-control" id="email" name="email" value="${o.email}" placeholder="E-mail">
			</div>
			<br>
			<div class="form-floating">
			  <input type="password" class="form-control" id="senha" name="senha" value="${o.senha}" placeholder="Senha">
			</div>
			<br>
			<button type="submit" name="gravar"><i class="fas fa-save"></i> Gravar</button>
			<button type="submit" name="cancelar"><i class="fas fa-undo"></i> Cancelar</button>
		</fieldset>
	</form>

</body>
</html>
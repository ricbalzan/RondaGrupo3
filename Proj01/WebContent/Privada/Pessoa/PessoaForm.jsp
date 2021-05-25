<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Edição de Pessoa</title>
</head>
<body>
   <jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>

	<form action="PessoaServlet" method="post">

		<fieldset>
			<legend>Dados da pessoa:</legend>

			<div class="row">
				<div class="col-md-1">
					<label for="id">Id:</label> 
					<input type="text" readonly="readonly" name="id" id="id" value="${o.id}" class="form-control">
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-7">
					<label for="nome">Nome:</label> 
					<input type="text" name="nome" id="nome" value="${o.nome}" class="form-control" placeholder="Nome">
				</div>
			</div>

			<div class="row">
				<div class="col-md-2">
					<label for="loginApp">Login App:</label> 
					<input type="text" name="loginApp" id="loginApp" value="${o.loginApp}" class="form-control" placeholder="login">
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-2">
					<label for="senha">Senha:</label> 
					<input type="password" name="senha" id="senha" value="${o.senha}" class="form-control" placeholder="senha">
				</div>
			</div>
			
			<br>
			<button type="submit" name="gravar">
				<i class="fas fa-save"></i> Gravar
			</button>
			<button type="submit" name="cancelar" class="btn btn-info">
				<i class="fas fa-undo"></i> Cancelar
			</button>
		</fieldset>

	</form>


</body>
</html>
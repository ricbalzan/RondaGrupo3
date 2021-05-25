<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Locomoção</title>
</head>
<body>
   <jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>

	<form action="LocomocaoServlet" method="post">

		<fieldset>
			<legend>Dados da Locomoção:</legend>

			<div class="row">
				<div class="col-md-1">
					<label for="id">Id:</label> 
					<input type="text" readonly="readonly" name="id" id="id" value="${o.id}" class="form-control">
				</div>
			</div>
	
			
			<div class="row">
				<div class="col-md-7">
					<label for="descricao">Descrição:</label> 
					<input type="text" name="descricao" id="nome" value="${o.descricao}" class="form-control" placeholder="Descrição">
				</div>
			</div>

			<div class="row">
				<div class="col-md-2">
					<label for="loginApp">Placa:</label> 
					<input type="text" name="Placa" id="loginApp" value="${o.placa}" class="form-control" placeholder="Placa">
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
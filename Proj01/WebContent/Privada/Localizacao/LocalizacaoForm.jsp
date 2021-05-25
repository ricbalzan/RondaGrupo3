<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Localização</title>
</head>
<body>
   <jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>

	<form action="LocalizacaoServlet" method="post">

		<fieldset>
			<legend>Dados da Localização:</legend>

			<div class="row">
				<div class="col-md-1">
					<label for="id">Id:</label> 
					<input type="text" readonly="readonly" name="id" id="id" value="${o.id}" class="form-control">
				</div>
			</div>
	
			
			<div class="row">
				<div class="col-md-7">
					<label for="datahora">Data e Hora:</label> 
					<input type="text" name="datahora" id="datahora" value="${o.data}" class="form-control" placeholder="Data e Hora">
				</div>
			</div>

			<div class="row">
				<div class="col-md-2">
					<label for="lat">Latitude:</label> 
					<input type="text" name="lat" id="lat" value="${o.lat}" class="form-control" placeholder="Latitude">
				</div>
			</div>
			
				<div class="row">
				<div class="col-md-2">
					<label for="lat">Longitude:</label> 
					<input type="text" name="lon" id="lon" value="${o.lon}" class="form-control" placeholder="Longitude">
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
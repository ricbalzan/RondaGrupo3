<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Edição de Ronda</title>
</head>
<body>
   <jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>

	<form action="PessoaServlet" method="post">

		<fieldset>
			<legend>Dados da Ronda:</legend>

			<div class="row">
				<div class="col-md-1">
					<label for="id">Id:</label> 
					<input type="text" readonly="readonly" name="id" id="id" value="${o.id}" class="form-control">
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-3">
					<label for="dataHoraInicio">Data/Hora Inicio:</label> 
					<input type="datetime-local" name="nome" id="dataHoraInicio" value="${o.dataHoraInicio}" class="form-control" placeholder="dataHoraInicio">
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<label for="dataHoraFim">Data/Hora Fim:</label> 
					<input type="datetime-local" name="dataHoraFim" id="dataHoraFim" value="${o.dataHoraFim}" class="form-control" placeholder="dataHoraFim">
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-3">
					<label for="latUltima">Latitude Ultima Ronda:</label> 
					<input type="text" name="latUltima" id="latUltima" value="${o.latUltima}" class="form-control" placeholder="lat Ultima">
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-3">
					<label for="lonUltima">Longitude Ultima Ronda:</label> 
					<input type="text" name="lonUltima" id="lonUltima" value="${o.lonUltima}" class="form-control" placeholder="lon Ultima">
				</div>
			</div>
			
				<div class="row">
				<div class="col-md-3">
					<label for="dataHoraUltima">Data/Hora Ultima Ronda:</label> 
					<input type="datetime-local" name="dataHoraUltima" id="dataHoraUltima" value="${o.dataHoraUltima}" class="form-control" placeholder="dataHoraUltima">
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
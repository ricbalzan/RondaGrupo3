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

	<form action="RondaServlet" method="post">

		<fieldset>
			<legend>Dados da Ronda:</legend>

			<div class="row">
				<div class="col-md-1">
					<label for="id">Id:</label> 
					<input type="text" readonly="readonly" name="id" id="id" value="${o.id}" class="form-control">
				</div>
			</div>
			
			
			<div class="form-floating">
					<label for="dataHoraInicio">Data/Hora Inicio:</label> 
					<input type="datetime-local" class="form-control" id="dataHoraInicio" name="dataHoraInicio" 
				   	pattern="YYYY-MM-DDThh:mm" 
				  	value="<fmt:formatDate value="${o.dataHoraInicio}" pattern="yyyy-MM-dd"/ fmt:formatDate value="${o.dataHoraInicio}" pattern="HH:mm"/>
			</div><br>
			
			<div class="form-floating">
					<label for="dataHoraInicio">Data/Hora Fim:</label> 
					<input type="datetime-local" class="form-control" id="dataHoraFim" name="dataHoraFim" 
				   	pattern="YYYY-MM-DDThh:mm" 
				  	value="<fmt:formatDate value="${o.dataHoraFim}" pattern="yyyy-MM-dd"/ fmt:formatDate value="${o.dataHoraFim}" pattern="HH:mm"/>
			</div><br>
			
			<div class="row">
				<div class="col-md-3">
					<label for="latUltima">Latitude Ultima Ronda:</label> 
					<input type="text" name="latUltima" id="latUltima" value="${o.latUltima}" class="form-control" placeholder="lat Ultima">
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-3">
					<label for="lonUltima">Longitude Ultima Ronda:</label> 
					<input type="text" name="lonUltima" id="lonUltima" value="${o.lonUltima}" class="form-control" placeholder="lon Ultima">
				</div>
			</div>
			<br>
						<div class="form-floating">
						<label for="dataHoraInicio">Data/Hora Ultima:</label> 
					<input type="datetime-local" class="form-control" id="dataHoraUltima" name="dataHoraUltima" 
				   	pattern="YYYY-MM-DDThh:mm" 
				  	value="<fmt:formatDate value="${o.dataHoraUltima}" pattern="yyyy-MM-dd"/ fmt:formatDate value="${o.dataHoraUltima}" pattern="HH:mm"/>
			</div><br>
			
			
			
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
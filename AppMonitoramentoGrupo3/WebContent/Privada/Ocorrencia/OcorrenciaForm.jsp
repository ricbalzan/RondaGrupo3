<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cadastro de Pessoa</title>
</head>

<body>
	<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
	
	
	<form action="LocomocaoServlet" method="post">
		<fieldset>
			<div class="form-floating">
				<input type="number" class="form-control" id="id" name="id" value="${o.id}" placeholder="Id" readonly="readonly">
			</div>
			<br>
			
			<div class="form-floating">
				<input type="datetime-local" class="form-control" id="dataHora" name="dataHora" 
				 pattern="YYYY-MM-DDThh:mm" 
				 value="<fmt:formatDate value="${o.dataHora}" pattern="yyyy-MM-dd"/>T<fmt:formatDate value="${o.dataHora}" pattern="HH:mm"/>" placeholder="Data e Hora">
			</div><br>
			
			<div class="form-floating">
				<input type="text" class="form-control" id="titulo" name="placa" value="${o.titulo}" placeholder="titulo">
			</div>
			
			<div class="form-floating">
				<input type="text" class="form-control" id="descricao" name="descricao" value="${o.descricao}" placeholder="Descrição">
			</div>
			<br>			
									
			<div class="form-floating">
				<input type="number" class="form-control" id="lat" name="lat" value="${o.lat}" placeholder="Latitude">
			</div><br>	
			
			<div class="form-floating">
				<input type="number" class="form-control" id="lon" name="lon" value="${o.lon}" placeholder="Longitude">
			</div><br>	
			
			<br>						
			<button type="submit" name="gravar"><i class="fas fa-save"></i> Gravar</button>
			<button type="submit" name="cancelar"><i class="fas fa-undo"></i> Cancelar</button>
		</fieldset>
	</form>
	
	

</body>
</html>
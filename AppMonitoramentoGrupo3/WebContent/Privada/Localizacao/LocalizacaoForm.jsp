<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cadastro de Localização</title>
</head>
<body>

	<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
	
	
	<form action="LocalizacaoServlet" method="post">
		<fieldset>
			<div class="form-floating">
				<input type="number" class="form-control" id="id" name="id" value="${o.id}" placeholder="Id" readonly="readonly">
			</div><br>
			
			<div class="form-floating">
				<input type="datetime-local" class="form-control" id="dataHora" name="dataHora" 
				   pattern="YYYY-MM-DDThh:mm" 
				   value="<fmt:formatDate value="${o.dataHora}" pattern="yyyy-MM-dd"/>T<fmt:formatDate value="${o.dataHora}" pattern="HH:mm"/>" placeholder="Data e Hora">
			</div><br>
						
			<div class="form-floating">
				<input type="number" class="form-control" id="lat" name="lat" value="${o.lat}" placeholder="Latitude">
			</div><br>	
			
			<div class="form-floating">
				<input type="number" class="form-control" id="lon" name="lon" value="${o.lon}" placeholder="Longitude">
			</div><br>	
			
			<div class="form-floating">
				<select name="ronda" id="ronda">
				   <c:forEach items="${rondas}" var="r" varStatus="index">
				       <option value="${r.id}">${r.id} - ${r.locomocao.descricao} - <fmt:formatDate value="${r.dataHoraInicio}" pattern="dd/MM/yyyy HH:mm"/></option>
				    </c:forEach>
			  	</select>
			</div><br>	
					
			<button type="submit" name="gravar"><i class="fas fa-save"></i> Gravar</button>
			<button type="submit" name="cancelar"><i class="fas fa-undo"></i> Cancelar</button>
		</fieldset>
	</form>


</body>
</html>
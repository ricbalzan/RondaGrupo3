<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOCALIZAÇÃO</title>
</head>

<body>

	<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
	
		<div style="text-align:center"><h3>LISTAGEM DE LOCALIZAÇÕES</h3></div>
		
		<form action="LocalizacaoServlet">
			
		<div class="table-responsive">
		<table class="table">
		<thead class="table-dark">

				    <tr>
				    	<th>Id</th>
				    	<th>Data e Hora</th>
				    	<th>Latitude</th>
				    	<th>Longitude</th>
				    	<th>Ronda</th>
				    	<th>Alterar</th>
				    	<th>Excluir</th>
				    </tr>

				
				<c:forEach items="${lista}" var="o" varStatus="index">
				    <tbody>
					    <tr>
						    <td>${o.id}</td>
						    <td><fmt:formatDate value="${o.dataHora}" pattern="dd/MM/yyyy HH:mm"/></td>
						    <td>${o.lat}</td>
						    <td>${o.lon}</td>
						    <td>${o.ronda.id} - ${o.ronda.locomocao.descricao} - <fmt:formatDate value="${o.ronda.dataHoraInicio}" pattern="dd/MM/yyyy HH:mm"/> </td>
					    	<td><button name="alterar" value="${o.id}"> <i class="fas fa-pencil-alt"></i></button></td>
					    	<td><button name="excluir" value="${o.id}"> <i class="fas fa-trash-alt"></i></button></td>
					    </tr>
				    </tbody>
			    </c:forEach>
			</table>
			
				<button name="incluir"><i class="fas fa-plus-circle"></i> Incluir</button>
	</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>RONDAS</title>
</head>
<body>
   <jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>

<div style="text-align:center"><h3>LISTAGEM DE RONDAS</h3></div>

<form action="RondaServlet">



		<div class="table-responsive">
		<table class="table">
		<thead class="table-dark">
				<tr>
					<th>Data e Hora Inicio</th>
					<th>Data e Hora Final</th>
					<th>Latitude Ultima</th>
					<th>Longitude Ultima</th>
					<th>Data Ultima</th>
					<th>Locomoção</th>
					<th>Vigilantes</th>
					<th class="act" colspan="2">Ações</th>
				</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="o" varStatus="index">
				<tr>
					<td><fmt:formatDate value="${o.dataHoraInicio}" pattern="dd/MM/yyyy HH:mm"/></td>
					<td><fmt:formatDate value="${o.dataHoraFim}" pattern="dd/MM/yyyy HH:mm"/></td>
					<td>${o.latUltima}</td>
					<td>${o.lonUltima}</td>
					<td><fmt:formatDate value="${o.dataHoraUltima}" pattern="dd/MM/yyyy HH:mm"/></td>
					<td>${o.locomocao.id} - ${o.locomocao.descricao}</td>
					<td><button class="action" name="vigilantes" value="${o.id}"><i class="fas fa-user-edit"></i></button></td>
					<td><button name="alterar" value="${o.id}"> <i class="fas fa-pencil-alt"></i></button></td>
					<td><button name="excluir" value="${o.id}"> <i class="fas fa-trash-alt"></i></button></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		</div>
			<button name="incluir"><i class="fas fa-plus-circle"></i> Incluir</button>
	</form>
		
	</body>
</html>
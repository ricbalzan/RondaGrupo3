<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Locomo��es</title>
</head>

<body>
	
	<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
	
		<h3>Listagem de Locomo��es</h3>
		
		<form action="LocomocaoServlet">
			<button name="incluir"><i class="fas fa-plus-circle"></i> Incluir</button>
			<table class="table table-dark table-hover" border="1">
				<thead>
				    <tr>
				    	<th>Id</th>
				    	<th>Descri��o</th>
				    	<th>Placa</th>
				    	<th>Alterar</th>
				    	<th>Excluir</th>
				    </tr>
				</thead>
				
				<c:forEach items="${lista}" var="o" varStatus="index">
				    <tbody>
					    <tr>
						    <td>${o.id}</td>
						    <td>${o.descricao}</td>
						    <td>${o.placa}</td>
					    	<td><button name="alterar" value="${o.id}"> <i class="fas fa-pencil-alt"></i></button></td>
					    	<td><button name="excluir" value="${o.id}"> <i class="fas fa-trash-alt"></i></button></td>
					    </tr>
				    </tbody>
			    </c:forEach>
			</table>
	</form>	

</body>
</html>
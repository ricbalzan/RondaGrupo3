<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Pessoas</title>
</head>
<body>
   <jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>

<div style="text-align:center"><h3>LISTAGEM DE PESSOAS</h3></div>

<form action="PessoaServlet">

		
		
		<div class="table-responsive">
		<table class="table">
		<thead class="table-dark">
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>LoginApp</th>
					<th class="act" colspan="2">Ações</th>
				</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="o" varStatus="index">
				<tr>
					<td>${o.id}</td>
					<td>${o.nome}</td>
					<td>${o.loginApp}</td>
					<td><button class="action" name="alterar" value="${o.id}"><i class="fas fa-user-edit"></i></button></td>
					<td><button class="action" name="excluir" value="${o.id}"><i class="fas fa-user-times"></i></button></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		</div>
				<button name="incluir"><i class="fas fa-plus-circle"></i> Incluir</button>
	</form>

</body>
</html>
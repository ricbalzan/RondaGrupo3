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

<h3>LISTAGEM DE PESSOAS</h3>

<form action="PessoaServlet">

    <button name="incluir"><i class="fas fa-plus"></i> Incluir</button> 
	<table border="1" class="table table-hover table-condensed">
	   <thead>
	      <tr>
		      <td>Id</td>
		      <td>Nome</td>
		      <td>Login App</td>
		      <td></td>
		      <td></td>	      
	      </tr>
	   </thead>
	
	   <c:forEach items="${lista}" var="o" varStatus="index"> 
		   <tr>
		      <td>${o.id}</td>
		      <td>${o.nome}</td>
		      <td>${o.loginApp}</td>
		      <td><button name="alterar" value="${o.id}">Alterar</button></td>
		      <td><button name="excluir" value="${o.id}">Excluir</button></td>
		   </tr>
	   </c:forEach>
	</table>

</form>


</body>
</html>
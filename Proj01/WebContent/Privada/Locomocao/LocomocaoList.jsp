<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LOCOMOÇÃO</title>
</head>
<body>
   <jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>

<h3>LISTAGEM DE LOCOMOÇÕES</h3>

<form action="LocomocaoServlet">

    <button name="incluir"><i class="fas fa-plus"></i> Incluir</button> 
	<table border="1" class="table table-hover table-condensed">
	   <thead>
	      <tr>
		      <td>Id</td>
		      <td>Descrição</td>
		      <td>Placa</td>
		      <td></td>
		      <td></td>	      
	      </tr>
	   </thead>
	
	   <c:forEach items="${lista}" var="o" varStatus="index"> 
		   <tr>
		      <td>${o.id}</td>
		      <td>${o.descricao}</td>
		      <td>${o.palaca}</td>
		      <td><button name="alterar" value="${o.id}">Alterar</button></td>
		      <td><button name="excluir" value="${o.id}">Excluir</button></td>
		   </tr>
	   </c:forEach>
	</table>

</form>


</body>
</html>
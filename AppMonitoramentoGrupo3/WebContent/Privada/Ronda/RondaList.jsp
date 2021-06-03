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

<h3>LISTAGEM DE RONDAS</h3>

<form action="RondaServlet">

    <button name="incluir"><i class="fas fa-plus"></i> Incluir</button> 
	<table border="1" class="table table-hover table-condensed">
	   <thead>
	      <tr>
		      <td>Id</td>
		      <td>DataHora Inicio</td>
		      <td>DataHora Fim</td>
		      <td>Lat Ultima</td>
		      <td>Lon Ultima</td>
		      <td>Data Hora Ultima</td>
			  <th>Alterar</th>
			  <th>Excluir</th>      
	      </tr>
	   </thead>
	
	   <c:forEach items="${lista}" var="o" varStatus="index"> 
		   <tr>
		      <td>${o.id}</td>
		      <td><fmt:formatDate value="${o.dataHoraInicio}" pattern="dd/MM/yyyy HH:mm"/></td>
		      <td><fmt:formatDate value="${o.dataHoraFim}" pattern="dd/MM/yyyy HH:mm"/></td>
		      <td><fmt:formatDate value="${o.dataHoraUltima}" pattern="dd/MM/yyyy HH:mm"/></td>
		      <td>${o.latUltima}</td>
		      <td>${o.lonUltima}</td>
		      
		     <td><button name="alterar" value="${o.id}"> <i class="fas fa-pencil-alt"></i></button></td>
			 <td><button name="excluir" value="${o.id}"> <i class="fas fa-trash-alt"></i></button></td>
		   </tr>
	   </c:forEach>
	</table>

</form>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta name="header" content="Tipos" />
<title>Tipos</title>
<link href="<c:url value="/resources/css/ru.css"/>" rel="stylesheet" />
</head>
<body>
	<div class="row">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<div class="panel-title pull-left">
			         Alterar tipo
			         </div>
			        <div class="panel-title pull-right"><a href="/ru/manutencao/tipos/pesquisar">Voltar para a pesquisa</a></div>
			        <div class="clearfix"></div>
				</div>
				<div class="panel-body">
					<form:form method="POST" action="/ru/manutencao/tipos/salvar" class="form-horizontal">
						<form:hidden path="id" />
						<div class="form-group">
							<label for="descricao" class="col-sm-2 control-label">Descrição</label>
							<div class="col-sm-4">
								<form:input type="text"	class="form-control" path="descricao" placeholder="Descrição" />				
							</div>
						</div>
						 <div class="form-group">
						    <div class="col-sm-offset-2 col-sm-10">
						      <button type="submit" class="btn btn-primary">Salvar</button>
						    </div>
						 </div>				
					</form:form>
				</div>
			</div>
		</div>
</body>
</html>
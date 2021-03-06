<%@ page contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://github.com/dandelion" prefix="dandelion" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="actionSalvar"><c:url value="/cardapios/salvar"/></c:set>

<dandelion:bundle includes="jquery.validation,jquery.inputmask,jquery.datetimepicker" />

<html>
<head>
<meta name="header" content="Cadastro" />
<meta name="previouspage" content="<li><a href='<c:url value="/cardapios"/>'>Cardápios</a></li>" />
<title>Cadastro de cardápios</title>
</head>
<body>
	<script type="text/javascript">
		 $(document).ready(function() {
		     var formValidator = $("#cardapio").validate({
		         rules : {
		             data : { required : true },
		             pratoBase : { required : true, maxlength : 50 },
		             pratoTradicional : { required : true, maxlength : 100 },
		             pratoVegetariano : { required : true, maxlength : 100 },
		             guarnicao : { required : true, maxlength : 100 },
		             salada : { required : true, maxlength : 50 },
		             sobremesa : { required : true, maxlength : 50 },
		             suco : { required : true, maxlength : 50 }
		         }
		     });
		     $("#data").focus();
		     $("#div-data").datetimepicker({locale: "pt-br", format: "DD/MM/YYYY"});
		      $("#data").inputmask("99/99/9999");
		 });
  	</script>
  	<form:form action="${actionSalvar}" modelAttribute="cardapio">
	    <form:hidden path="id" />
	    <div class="panel panel-primary col-xs-12 col-md-8 col-md-offset-2">
	      <div class="panel-body">
	        <div class="page-header" style="margin-top: 10px;">
	          <jsp:include page="/layouts/modal-mensagens.jsp"><jsp:param name="model" value="cardapio"/></jsp:include>
	          <h3>
	            <strong>Cardápio</strong>
	          </h3>
	        </div>
	        <div class="row">
	        	<spring:bind path="data">
	            <div class="form-group col-xs-12 col-md-6">
	              <label for="data" class="control-label">Data</label>
		          <div class="input-group date" id="div-data">
		          	<form:input path="data" class="form-control" extra="placeholder=Data da refeição" />
		            <span class="input-group-addon">
		                <span class="glyphicon glyphicon-calendar"></span>
		            </span>
		          </div>
	            </div>
	          </spring:bind>
	          <spring:bind path="pratoBase">
	            <div class="form-group col-xs-12 col-md-6 ${status.error ? 'has-error' : ''}">
	              <label for="pratoBase" class="control-label">Prato Base</label>
	              <form:input path="pratoBase" class="form-control" placeholder="Digite o prato base"/>
	              <span class="has-error"><form:errors path="pratoBase" class="help-block"/></span>
	            </div>
	          </spring:bind>
	        </div>
	        <div class="row">
	          <spring:bind path="pratoTradicional">
	            <div class="form-group col-xs-12 col-md-6 ${status.error ? 'has-error' : ''}">
	              <label for="pratoTradicional" class="control-label">Prato Tradicional</label>
	              <form:input path="pratoTradicional" class="form-control" placeholder="Digite o prato tradicional"/>
	              <span class="has-error"><form:errors path="pratoTradicional" class="help-block"/></span>
	            </div>
	          </spring:bind>
	          <spring:bind path="pratoVegetariano">
	            <div class="form-group col-xs-12 col-md-6 ${status.error ? 'has-error' : ''}">
	              <label for="pratoVegetariano" class="control-label">Prato Vegetariano</label>
	              <form:input path="pratoVegetariano" class="form-control" placeholder="Digite o prato vegetariano"/>
	              <span class="has-error"><form:errors path="pratoVegetariano" class="help-block"/></span>
	            </div>
	          </spring:bind>
	        </div>
	        <div class="row">
	          <spring:bind path="guarnicao">
	            <div class="form-group col-xs-12 col-md-6 ${status.error ? 'has-error' : ''}">
	              <label for="guarnicao" class="control-label">Guarnição</label>
	              <form:input path="guarnicao" class="form-control" placeholder="Digite a guarnição"/>
	              <span class="has-error"><form:errors path="guarnicao" class="help-block"/></span>
	            </div>
	          </spring:bind>
	          <spring:bind path="salada">
	            <div class="form-group col-xs-12 col-md-6 ${status.error ? 'has-error' : ''}">
	              <label for="salada" class="control-label">Salada</label>
	              <form:input path="salada" class="form-control" placeholder="Digite a salada"/>
	              <span class="has-error"><form:errors path="salada" class="help-block"/></span>
	            </div>
	          </spring:bind>
	        </div>
	        <div class="row">
	          <spring:bind path="sobremesa">
	            <div class="form-group col-xs-12 col-md-6 ${status.error ? 'has-error' : ''}">
	              <label for="sobremesa" class="control-label">Sobremesa</label>
	              <form:input path="sobremesa" class="form-control" placeholder="Digite a sobremesa"/>
	              <span class="has-error"><form:errors path="sobremesa" class="help-block"/></span>
	            </div>
	          </spring:bind>
	          <spring:bind path="suco">
	            <div class="form-group col-xs-12 col-md-6 ${status.error ? 'has-error' : ''}">
	              <label for="suco" class="control-label">Suco</label>
	              <form:input path="suco" class="form-control" placeholder="Digite o suco"/>
	              <span class="has-error"><form:errors path="suco" class="help-block"/></span>
	            </div>
	          </spring:bind>
	        </div>
	      </div>
	      <div class="form-group col-x-12 col-md-12" style="text-align: center; margin-top: 25px;">
	        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Salvar</button>
	      </div>
	    </div>
	</form:form>
</body>
</html>
<%-- 
    Document   : register
    Created on : 29 de jun. de 2022, 16:55:00
    Author     : LucasMarcuzo 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta http-equiv=""Content-Type" content="tet/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SorteSua! - Registro</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="shortcut icon" href="icons/trevo-96.png" type="image/x-icon">

</head>

<body class="bg-gradient-primary">

  <div class="container">
    <h4 class="h1 font-weight-bold d-flex justify-content-center text-primary text-gray-900 m-4">SorteSua!</h4>

    <div class="card o-hidden border-0 shadow-lg my-4">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-5">Novo Cadastro</h1>
              </div>
                
              <!--(Verificar se tem erro em algum campo e imprimir a mensagem de erro)-->
                <c:if test="${not empty errors}">
                    <div class="alert alert-danger" role="alert">
                          <c:forEach var="error" items="${errors}">
                          <!-- ${error.category} --> 
                          ${error.message}<br />
                          </c:forEach>
                    </div>
                </c:if>
                
              
              <form method="post" class="user" action="<c:url value="register/salvausuario"/>">
                <div class="form-group row">
                  <div class="col-sm-5 mb-3 mb-sm-0">
                      <input name="usuario.nome" value="${usuario.nome}" minlength="3" maxlength="15" type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="Nome" autofocus>
                  </div>
                  <div class="col-sm-7">
                      <input name="usuario.sobrenome" minlength="3" maxlength="15" type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Sobrenome">
                  </div>
                </div>
                <div class="form-group">
                    <input name="usuario.email" value="${usuario.email}" type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="Email">
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                      <input name="usuario.senha" value="${usuario.senha}" minlength="6" maxlength="20" type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Senha">
                  </div>
                  <div class="col-sm-6">
                    <input name="confirmaSenha" value="${confirmaSenha}" type="password" minlength="6" maxlength="20" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Confirme a Senha">
                  </div>
                </div>
                <button type="submit" class="btn btn-primary btn-user btn-block">
                  Cadastrar
                </button>
              </form>
              <hr>
              <div class="text-center">
                <a class="small" href="<c:url value="login"/>">Já é cadastrado? Fazer Login</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>

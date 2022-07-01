<%-- 
    Document   : login
    Created on : 29 de jun. de 2022, 16:27:46
    Author     : LucasMarcuzo 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SorteSua! - Login</title>

  <!-- Fontes personalizadas para este modelo -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Estilos personalizados para este modelo -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="shortcut icon" href="icons/trevo-96.png" type="image/x-icon">

</head>

<body class="bg-gradient-primary">

  <div class="container">
    <h4 class="h1 font-weight-bold d-flex justify-content-center text-primary text-gray-900 m-4">SorteSua!</h4>
    
    <!-- Linha Externa -->
    <div class="row justify-content-center">
      <div class="col-xl-10 col-lg-12 col-md-9">
        <div class="card o-hidden border-0 shadow-lg my-2">
          <div class="card-body p-0">

            <!-- Linha aninhada no corpo do cartÃ£o -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h4 class="h4 text-gray-900 mb-4">Login</h4>
                  </div>
                    <form method="post" class="user" action="<c:url value="dashboard/salvausuario"/>">
                    <div class="form-group">
                      <input type="email" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Email">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Senha">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Lembrar-me</label>
                      </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-user btn-block">
                      Entrar
                    </button>
                    <hr>
                    <a href="<c:url value="register"/>" class="btn btn-google btn-user btn-block"> Cadastrar
                    </a>
                    <hr>
                <!--
                  <a href="index.html" class="btn btn-google  btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Entrar com o Google
                    </a>
                    <a href="index.html" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Entrar com o Facebook 
                    </a>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Esqueceu sua senha?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.html">Criar uma conta
                    </a>
                  </div>
                  -->
                  </form>
                 </hr>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="d-flex justify-content-center my-3">
    <a href="https://www.freepik.com/vectors/business">Business vector created by freepik - www.freepik.com</a>

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

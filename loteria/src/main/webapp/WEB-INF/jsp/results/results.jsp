<%-- 
    Document   : results
    Created on : 29 de jun. de 2022, 18:27:00
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

  <title>SorteSua! - Resultados</title>

  <!-- Fontes personalizadas para este modelo -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Estilos personalizados para este modelo -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link rel="shortcut icon" href="icons/trevo-96.png" type="image/x-icon">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion no-print" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value="dashboard"/>">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text text-capitalize mx-3">SorteSua!</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value="dashboard"/>">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Menu Principal
      </div>

      <!-- Nav Item - Nova Aposta -->
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="newbet"/>">
          <i class="fas fa-fw fa-dice-one"></i>
          <span>Nova Aposta</span></a>
      </li>

       <!-- Nav Item - Apostas -->
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="bets"/>">
          <i class="fas fa-fw fa-dice"></i>
          <span>Apostas</span>
        </a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Pesquisar por..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Pesquisar por..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Notificações -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">1+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Notificações
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">Hoje</div>
                    Seja bem-vindo a Loteria Sorte Sua!
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Mostrar todas notificações</a>
              </div>
            </li>

            <!-- Nav Item - Mensagens -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Mensagens -->
               <!--  <span class="badge badge-danger badge-counter">0</span> -->
              </a>
              <!-- Dropdown - Mensagens -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Mensagens
                </h6>
                <a class="dropdown-item text-center small text-gray-500" href="#">Mostrar todas mensagens</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - Informações do Usuário -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Nome Usuario</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - Informações do Usuário -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Perfil
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Sair
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800 text-center">Resultado</h1>
          <div class="row">
            <div class="col-12">

            <!-- Card Resultado Inicio -->
            <div class="card shadow mb-4 card-novaaposta mx-auto">
              <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary text-center">Confira quais números foram sorteados</h6>
              </div>
              <div class="card-body">

                
                <div class="row">
                  <div class="col-md-12 numeros">
                    <h2>Números Sorteados</h2>
                    <span class="badge badge-pill badge-primary p-3 text-lg">1</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">3</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">4</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">5</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">8</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">10</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">11</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">13</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">15</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">16</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">18</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">20</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">22</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">24</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">25</span>
                  </div>
                </div>

                <div class="row mt-5">
                  <div class="col-md-12 numeros">
                    <h2>Sua Aposta</h2>
                    <span class="badge badge-pill badge-primary p-3 text-lg">1</span>
                    <span class="badge badge-pill badge-danger p-3 text-lg">2</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">3</span>
                    <span class="badge badge-pill badge-danger p-3 text-lg">6</span>
                    <span class="badge badge-pill badge-danger p-3 text-lg">7</span>
                    <span class="badge badge-pill badge-danger p-3 text-lg">9</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">11</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">13</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">16</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">18</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">20</span>
                    <span class="badge badge-pill badge-danger p-3 text-lg">21</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">22</span>
                    <span class="badge badge-pill badge-danger p-3 text-lg">23</span>
                    <span class="badge badge-pill badge-primary p-3 text-lg">24</span>
                  </div>
                </div>

                
                <div class="row mt-3">
                  <div class="col-md-6 d-flex align-items-center justify-content-center">
                    <div>
                      <h4>Codigo Aposta: <strong>5241</strong></h4>
                      <h4>Erros: <strong>6</strong></h4>
                      <h4>Acertos: <strong>9</strong></h4>
                      <h4>Ganhos: <strong>Nenhum</strong></h4>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <img class="imagem-novaaposta img-fluid" alt="dinheiro" src="https://www.gpspoint.com.br/wp-content/uploads/2019/11/ganhar-dinheior-internet.png">
                  </div>
                </div>
                
              </div>
              <div class="card-footer text-center">
                <a href="<c:url value="newbet"/>" class="btn btn-primary btn-icon-split btn-lg mt-3 mb-3 mr-4">
                  <span class="icon text-white-50">
                    <i class="fas fa-plus"></i>
                  </span>
                  <span class="text">Nova Aposta</span>
                </a>
                <a href="<c:url value="bets"/>" class="btn btn-info btn-icon-split btn-lg mt-3 mb-3">
                  <span class="icon text-white-50">
                    <i class="fas fa-cubes"></i>
                  </span>
                  <span class="text">Ver Apostas</span>
                </a>
              </div>
            </div>
            <!-- Fim card-->

            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Rodapé (Footer) -->
      <footer class="sticky-footer bg-white no-print">
        <div class="container my-auto">
          <div class="copyright text-center my-auto text-capitalize">
            <span>Copyright &copy; SorteSua! 2022</span>
          </div>
        </div>
      </footer>

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Role até o botão superior-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Confirmação de Saida-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Tem certeza que deseja sair?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Clique em "Sair" se desejar encerrar a sua sessão atual.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary focus" type="button" data-dismiss="modal">Cancelar</button>
          <a class="btn btn-primary" href="<c:url value="login"/>">Sair</a>
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

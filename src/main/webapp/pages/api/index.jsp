<%@page language="java" pageEncoding="UTF-8"%>
<jsp:include page="../common/header.jsp"></jsp:include>
<body class="hold-transition skin-blue sidebar-mini">


  <div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>LTE</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">

          <li class="dropdown user user-menu">
            <a href="http://www.baidu.com" class="dropdown-toggle">
              新建
            </a>
          </li>

        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->

      <div id="sidebar">
      </div>

    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 id='apiName'></h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <section class="content">
      <table class="table">
        <tr>
          <td width="300px"><h4>调用方法</h4></td>
          <td><p id="requestMethod" style="margin-top: 8px;font-size:16px">GET</p></td>
        </tr>
        <tr>
          <td><h4>网关调用接口</h4></td>
          <td><p id="apiGatewayPath" style="margin-top: 8px;font-size:16px">暂无</p></td>
        </tr>
        <tr>
          <td><h4>后台实际地址</h4></td>
          <td><p id="endPointPath" style="margin-top: 8px;font-size:16px">123</p></td>
        </tr>
        <tr>
          <td><h4>维护人</h4></td>
          <td><p id="maintainer" style="margin-top: 8px;font-size:16px">暂无</p></td>
        </tr>
        <tr>
          <td><h4>所属项目</h4></td>
          <td><p id="hostName" style="margin-top: 8px;font-size:16px">暂无</p></td>
        </tr>

      </table>
      <h4 style="margin-left: 6px">描述</h4>
      <div id="apiDescription">
        
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 0.1.0
    </div>
    <strong>Copyright &copy; 2016 <a href="http://cc.dhu.edu.cn">DHU 117</a>.</strong> All rights
    reserved.
  </footer>

  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->


<!-- jQuery 2.2.3 -->
<script src="${config.statichost}/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<!-- <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> -->
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  // $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="${config.statichost}/static/bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="${config.statichost}/static/plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="${config.statichost}/static/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="${config.statichost}/static/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${config.statichost}/static/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="${config.statichost}/static/plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script> -->
<!-- <script src="${config.statichost}/static/plugins/daterangepicker/daterangepicker.js"></script> -->
<!-- datepicker -->
<!-- <script src="${config.statichost}/static/plugins/datepicker/bootstrap-datepicker.js"></script> -->
<!-- Bootstrap WYSIHTML5 -->
<script src="${config.statichost}/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="${config.statichost}/static/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<!-- <script src="${config.statichost}/static/plugins/fastclick/fastclick.js"></script> -->
<!-- AdminLTE App -->
<script src="${config.statichost}/static/dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- <script src="${config.statichost}/static/dist/js/pages/dashboard.js"></script> -->
<!-- AdminLTE for demo purposes -->
<!-- <script src="${config.statichost}/static/dist/js/demo.js"></script> -->

<!-- api sidebar -->
<script src="${config.statichost}/static/js/sidebar/sidebar.js"></script>

</body>

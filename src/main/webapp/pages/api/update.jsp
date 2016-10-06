<%@page language="java" pageEncoding="UTF-8"%>
<jsp:include page="../common/header.jsp"></jsp:include>
 <link rel="stylesheet" href="${config.statichost }/static/dist/css/remarkableDemo.css">
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

<header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <a href="/" class="navbar-brand"><b>Admin</b>LTE</a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
          <ul class="nav navbar-nav">

          </ul>
          <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
            </div>
          </form>
        </div>

      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>

  <!-- Full Width Column -->
  <div class="content-wrapper ">
    <div class="container ">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          新建API
        </h1>
      </section>

      <!-- Main content -->
      <section class="content" >


        <form id="myForm" class="form-horizontal">
        <input id="id" name="id" type="hidden" value="${apiId }">
              <div class="box-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">API名称</label>
                  <div class="col-sm-10">
                    <input type="text" name="name" class="form-control" id="inputEmail3" >
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">调用方法</label>

                  <div class="col-sm-10" class="form-control" id="inputPassword3">
                  <select name="requestMethod" id="inputPassword3" class="form-control">
                  <option value="GET">GET</option>
                  <option value="POST">POST</option>
                  </select>
                  </div>
                </div>
                <div class="form-group">
                  <label for="input3" class="col-sm-2 control-label">网关调用接口</label>

                  <div class="col-sm-10">
                    <input type="text" name="apiPath" class="form-control" id="input3">
                  </div>
                </div>
                <div class="form-group">
                  <label for="input4" class="col-sm-2 control-label">后台实际地址</label>

                  <div class="col-sm-10">
                    <input type="text" name="hostRestApi" class="form-control" id="input4">
                  </div>
                </div>
                <div class="form-group">
                  <label for="input5" class="col-sm-2 control-label">维护人</label>

                  <div class="col-sm-10">
                    <input type="text" name="maintainer" class="form-control" id="input5">
                  </div>
                </div>

                <div class="form-group">
                  <label for="input6" class="col-sm-2 control-label">所属项目</label>

                  <div class="col-sm-10">
                   <select name="hostCode" class="form-control" id="input6">
                  <option value="uc">用户中心</option>
                  <option value="cms">内容管理中心</option>
                  </select>
                  </div>
                </div>
                
                <div class="form-group">
                  <label for="input7" class="col-sm-2 control-label">版本号</label>

                  <div class="col-sm-10">
                  <select name="versionCode" id="input7" class="form-control">
                  <option value="v1">V1</option>
                  </select>
                  </div>
                </div>
              </div>


        <div class="container " style="height: 550px">
        <p style="font-size:16px; font-weight: bold">描述</p>
        <span> (使用markdown在下方编写)</span>
          <div class="row full-height" >
            <div class="col-xs-6 full-height">
              <div class="demo-control">
                <a href="#" class="source-clear">clear</a>
                <a id="permalink" href="./" title="Share this snippet as link">
                  <strong>permalink</strong>
                </a>
              </div>
              <textarea name="description" class="source full-height">
-- markdown</textarea>
            </div>
            <section class="col-xs-6 full-height">
              <div class="demo-control"><a href="#" data-result-as="html">html</a><a href="#" data-result-as="src">source</a><a href="#" data-result-as="debug">debug</a></div>
              <div class="result-html full-height"></div>
              <pre class="result-src full-height"><code class="result-src-content full-height"></code></pre>
              <pre class="result-debug full-height"><code class="result-debug-content full-height"></code></pre>
            </section>
          </div>
        </div>
    
        <button id="submit"  class="btn btn-info" style="margin-left:15px;margin-top: 10px">保存</button>
 
      </form> 



      </section>
    
    </div>
    <!-- /.container -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 0.1.0
    </div>
    <strong>Copyright &copy; 2016 <a href="http://cc.dhu.edu.cn">DHU 117</a>.</strong> All rights
    reserved.
  </footer>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="${config.statichost }/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${config.statichost }/static/bootstrap/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="${config.statichost }/static/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${config.statichost }/static/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${config.statichost }/static/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${config.statichost }/static/dist/js/demo.js"></script>

<script src="${config.statichost }/static/dist/js/lodash.js"></script>
<script src="${config.statichost }/static/dist/js/remarkable.js"></script>
<script src="${config.statichost }/static/dist/js/remarkableDemo.js"></script>
<script src="${config.statichost }/static/dist/js/jquery.serialize-object.min.js"></script>

<script type="text/javascript">
  $("#submit").click(function(){
	  $.ajax({
	        type: "POST",
	        url:"/admin/api/update.json",
	        data:JSON.stringify($("#myForm").serializeObject()),
	        dataType: "json",
	        contentType:"application/json",
	        success: function(data){
				if (data.status=='ok'){
					   alert("新建成功");
					   location.href="/";
				} else {
					 alert(data.msg);
				}
	         }
	    });
    return false;   
  }); 
</script>
</body>
</html>
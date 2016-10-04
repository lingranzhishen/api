<%@page language="java" pageEncoding="UTF-8"%>
<jsp:include page="../common/header.jsp"></jsp:include>
<style>
body {
    font-family:verdana,helvetica,arial,sans-serif;
    padding:20px;
    font-size:12px;
    margin:0;
}
h2 {
    font-size:18px;
    font-weight:bold;
    margin:0;
    margin-bottom:15px;
}
.demo-info{
	padding:0 0 12px 0;
}
.demo-tip{
	display:none;
}
		#fm{
			margin:0;
			padding:10px 30px;
		}
		.ftitle{
			font-size:14px;
			font-weight:bold;
			color:#666;
			padding:5px 0;
			margin-bottom:10px;
			border-bottom:1px solid #ccc;
		}
		.fitem{
			margin-bottom:5px;
		}
		.fitem label{
			display:inline-block;
			width:80px;
		}
</style>
<div style="align:center">
前台用户管理
</div>
<h2>Basic CRUD Application</h2>
	<div class="demo-info" style="margin-bottom:10px">
		<div class="demo-tip icon-tip">&nbsp;</div>
		<div>Click the buttons on datagrid toolbar to do crud actions.</div>
	</div>
	
	<table id="dg" title="Api" class="easyui-datagrid" style="width:700px;height:250px"
			url="/api/admin/getAdminList.json"
			toolbar="#toolbar" pagination="true"
			rownumbers="true" fitColumns="true" singleSelect="true">
		<thead>
			<tr>
				<th field="userName" width="50">管理员账号</th>
				<th field="phone" width="50">手机号</th>
				<th field="password" width="50">密码</th>
				<th field="realName" width="50">真实姓名</th>
				<th field="email" width="50">Email</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">New Administrator</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit Administrator</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="removeUser()">Remove Administrator</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="configRole()">配置角色</a>
	</div>
	
	<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
			closed="true" buttons="#dlg-buttons">
		<div class="ftitle">Admin Information</div>
		<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>用户名:</label>
				<input name="userName" id="userNameInput" class="easyui-validatebox" required="true" >
			</div>
			<div class="fitem">
				<label>手机号:</label>
				<input name="phone" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>密码:</label>
				<input name="password" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>Email:</label>
				<input name="email" class="easyui-validatebox" validType="email">
			</div>
			<div class="fitem">
				<label>真实姓名:</label>
				<input name="realName" class="easyui-validatebox">
			</div>
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
	</div>
<jsp:include page="../common/footer.jsp"></jsp:include>

<script type="text/javascript">
var url;
function newUser(){
	$('#userNameInput').attr("disabled",false);
	$('#dlg').dialog('open').dialog('setTitle','New Administrator');
	$('#fm').form('clear');
	url = '/api/admin/add.json';
}
function editUser(){
	$('#userNameInput').attr("disabled",true);
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$('#dlg').dialog('open').dialog('setTitle','Edit User');
		$('#fm').form('load',row);
		url = '/api/admin/update.json';
	}
}
function configRole(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		location.href = "/admin/role/"+row.userName;
	}else{
		$.messager.show({	// show error message
			title: 'INFO',
			msg: '请选择一个用户'
		});
	}
}
function saveUser(){
    var jsonuserinfo = $('#fm').serializeObject();
    if(!$('#fm').form('validate')){
    	return false;
    }
    $.ajax({
        type: "POST",
        url: url,
        data:JSON.stringify(jsonuserinfo),
        dataType: "json",
        contentType:"application/json",
        success: function(data){
			if (data.status=='ok'){
				$('#dlg').dialog('close');		// close the dialog
				$('#dg').datagrid('reload');	// reload the user data
			} else {
				 $.messager.show({
					title: 'Error',
					msg: data.error
				}); 
			}
         }
    });
}
function removeUser(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$.messager.confirm('Confirm','Are you sure you want to remove this user?',function(r){
			if (r){
				$.post('/api/admin/deleteAdmin.json',{userName:row.userName},function(result){
					if (result.status=='ok'){
						$('#dg').datagrid('reload');	// reload the user data
					} else {
						$.messager.show({	// show error message
							title: 'Error',
							msg: result.msg
						});
					}
				},'json');
			}
		});
	}
}
	</script>

var React = require('react');
var ReactDOM = require('react-dom');
var Remarkable =  require('remarkable');
var md = new Remarkable();

var Events = require('./events');
var SidebarBox = require('../components/sidebarbox')

var handler = {}

var apiClick = function(e){
	var dom=e.currentTarget;
	var apiId=$(dom).attr("data-id");
	var url='/admin/api/getDetail/'+appId;
	$.post(url,{},function(data){
		var description=data.data.description;		
		var html = md.render(description);
		$("#apiDescription").html(html);
	});	
}

handler.init = function(){

	var url = '/admin/api/getList/v1';
	$.post(url, {}, function(data){
		// var data = JSON.parse('{"errno":0,"data":[{"apiPath":"getAuthTree","description":"hello api","hostCode":"uc","hostName":"用户中心","hostRestApi":"api/auth/getAuthTree.json","id":1,"name":"获取权限树","requestMethod":"POST","versionCode":"v1"}],"status":"ok"}')
		var data = data.data;
		var tree={}
		for(var i=0;i<data.length;++i){
			var api = data[i];
			if(tree[api.hostCode])
				tree[api.hostCode].apis.push(api);
			else
				tree[api.hostCode]={
					hostCode:api.hostCode,
					hostName:api.hostName,
					apis:[api]
				}
		}

		ReactDOM.render(
		  <SidebarBox tree={tree} apiClick={apiClick}/>,
		  document.getElementById('sidebar')
		);
	});
}

module.exports = handler
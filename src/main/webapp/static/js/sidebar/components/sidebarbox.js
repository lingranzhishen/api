
var React = require('react');
var ReactDOM = require('react-dom');

var Sidebar1 = React.createClass({
	
	render:function(){
		var self = this;
		return(
			<li key={this.props.data.hostCode} className="treeview">
				<a href="#">
					<i className="fa fa-dashboard"></i> 
					<span>{this.props.data.hostName}</span>
					<span className="pull-right-container">
						<i className="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<Sidebar2 apis={this.props.data.apis} apiClick={self.props.apiClick}/>
			</li>
		);
	}
});

var Sidebar2 = React.createClass({
	render:function(){
		var self = this;
		apis = this.props.apis.map(function(value, key){
			return (
				<li key={key}>
					<a href="#" data-id={value.id} onClick={self.props.apiClick}>
						<i className="fa fa-circle-o"></i> 
						{value.name}
					</a>
				</li>
			);
		});
		return (
			<ul className="treeview-menu">
				{apis}
			</ul>
		);
	}
})

var SidebarBox = React.createClass({
  render: function() {
  	var bars = []
  	for(var i in this.props.tree){
  		console.log(i, this.props.tree[i])
  		bars.push(<Sidebar1 key={i} data={this.props.tree[i]} apiClick={this.props.apiClick}/>);
  	}
    return (
      <ul className="sidebar-menu">
        {bars}
      </ul>
    );
  }
});

module.exports = SidebarBox
var signals=require("signals");

var events={
	sidebar:{
		click:new signals.Signal()
	},
};

module.exports=events;
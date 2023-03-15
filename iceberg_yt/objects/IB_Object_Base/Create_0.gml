
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	//  ______   ______   ______   ______    //
	// /\  == \ /\  __ \ /\  ___\ /\  ___\   //
	// \ \  __< \ \  __ \\ \___  \\ \  __\   //
	//  \ \_____\\ \_\ \_\\/\_____\\ \_____\ //
	//   \/_____/ \/_/\/_/ \/_____/ \/_____/ //
	//                                       //
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	// IB_Object_Base.create //
	event_inherited();
	
	var _self = self;
	
	// public <<<<<<<<<<
	activate	  = function(_active = true) {
		if (_active) {
			__.active = true;
		}
		else deactivate();
		return self;
	};
	deactivate	  = function() {
		__.active = false;
		return self;
	};
	is_active	  = function() {
		return __.active;
	};
	on_activate   = function(_callback, _data) {
		array_push(__.on_activation, {
			callback: _callback, 
			data:	  _data,
		});
		return self;
	};
	on_deactivate = function(_callback, _data) {
		array_push(__.on_deactivation, {
			callback: _callback, 
			data:	  _data,
		});
		return self;
	};
	
	// private <<<<<<<<<
	__ = {};
	with (__) {
		active			= true;	
		on_activation	= array_create(0);
		on_deactivation = array_create(0);
	};
	
	
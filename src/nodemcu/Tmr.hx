package nodemcu;

@:native('tmr')
extern class Tmr {
	static var ALARM_SINGLE:Int;
	static var ALARM_MANUAL:Int;
	static var ALARM_AUTO:Int;
	
	static function create():Tmr;
	function alarm(interval_ms:Int, mode:Int, f:Tmr->Void):Bool;
	function register(interval_ms:Int, mode:Int, f:Tmr->Void):Void;
	function unregister():Void;
	function interval(ms:Int):Void;
	function start():Bool;
	function stop():Bool;
}


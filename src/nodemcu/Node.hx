package nodemcu;

import haxe.Constraints;

@:native('node')
extern class Node {
	static var CPU80MHZ:CpuSpeed;
	static var CPU160MHZ:CpuSpeed;
	
	static function bootreason():BootReason;
	static function chipid():String;
	static function compile(filename:String):Void;
	static function dsleep(us:Int, options:Int):Void;
	static function flashid():Int;
	static function heap():Int;
	static function info():NodeMcuInfo;
	static function input(str:String):Void;
	static function output(f:String->Void, ?serial:Boolean):Void;
	static function restart():Void;
	static function restore():Void;
	static function setcpufreq(speed:CpuSpeed):Void;
	static function stripdebug(level:Int, f:Function):Void;
	static function osprint(v:Bool):Void;
	static function uptime():UpTime;
}

@:multiReturn extern class BootReason {
	var rawcode:Int;
	var reason:Int;
	var exccause:Int;
	var epc1:Int;
	var epc2:Int;
	var epc3:Int;
	var excvaddr:Int;
	var depc:Int;
}

@:multiReturn extern class NodeMcuInfo {
	var majorVer:Int;
	var minorVer:Int;
	var devVer:Int;
	var chipid:Int;
	var flashid:Int;
	var flashsize:Int;
	var flashmode:Int;
	var flashspeed:Int;
}

@:multiReturn extern class UpTime {
	var lowbits:Int;
	var highbits:Int;
}

abstract CpuSpeed(Dynamic) {}
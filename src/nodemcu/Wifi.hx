package nodemcu;

@:native('wifi')
extern class Wifi {
	static var STATION:Int;
	static var SOFTAP:Int;
	static var STATIONAP:Int;
	static var NULLMODE:Int;
	
	inline static var sta = WifiSta;
	
	static function mode(mode:Int, ?save:Bool):Void;
	static function start():Void;
	static function stop():Void;
}

@:native('wifi.sta')
extern class WifiSta {
	static function config(opt:{}, ?save:Bool):Void;
	static function connect():Void;
	static function disconnect():Void;
	static function on(event:String, f:Dynamic->Dynamic->Void):Void;
}

typedef WifiStaConfig = {
	ssid:String,
	pwd:String,
	auto:Bool,
	bssid:String,
}
package nodemcu;

@:native('time')
extern class Time {
	
	static function initntp():Void;
	static function ntpenabled():Bool;
	static function stopntp():Void;
	static function get():TimeGet;
	static function getLocal():FullCalendar;
	static function cal2epoch(v:Calendar):Int;
	static function epoch2cal(v:Int):FullCalendar;
}

@:multiReturn extern class TimeGet {
	var sec:Int;
	var usec:Int;
}

typedef Calendar = {
	year:Int,
	mon:Int,
	day:Int,
	hour:Int,
	min:Int,
	sec:Int,
}

typedef FullCalendar = {
	> Calendar,
	yday:Int,
	wday:Int,
	dst:Int,
}
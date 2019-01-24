package;

import nodemcu.Time;

@:coreApi class Date {
	var e : Int;
	var c : FullCalendar;

	public function new(year : Int, month : Int, day : Int, hour : Int, min : Int, sec : Int ) {
		e = Time.cal2epoch({
			year  : year,
			mon : month+1,
			day   : day,
			hour  : hour,
			min   : min,
			sec   : sec
		});
		c = Time.epoch2cal(e);
	};
	public function getTime()     : Float return e * 1000;
	public function getHours()    : Int return c.hour;
	public function getMinutes()  : Int return c.min;
	public function getSeconds()  : Int return c.sec;
	public function getFullYear() : Int return c.year;
	public function getMonth()    : Int return c.mon-1;
	public function getDate()     : Int return c.day;
	public function getDay()      : Int return c.wday-1;

	public inline function toString() : String {
		#if lua
		return lua.Boot.dateStr(this);
		#else
		throw '';
		#end
	}

	public static function now() : Date {
		var s = Time.get();
		return fromTime(s.sec * 1000 + s.usec / 1000);
	}

	public static function fromTime( t : Float ) : Date {
		var c = Time.epoch2cal(Std.int(t / 1000));
		return new Date(c.year, c.mon - 1, c.day, c.hour, c.min, c.sec);
	}

	public static inline function fromString( s : String ) : Date {
		#if lua
		return lua.Boot.strDate(s);
		#else
		throw '';
		#end
	}
}
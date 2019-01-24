package nodemcu;

import haxe.extern.EitherType;

@:native('gpio')
extern class Gpio {
	static var IN:Int;
	static var OUT:Int;
	static function config(o:{gpio:EitherType<Int, Array<Int>>, dir:Int}):Void;
	static function write(pin:Int, level:Int):Void;
}
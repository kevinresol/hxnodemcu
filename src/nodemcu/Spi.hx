package nodemcu;

@:native('spi')
extern class Spi {
	// static var SPI1:Int;
	static var HSPI:Int;
	static var VSPI:Int;
	static var MASTER:Int;
	static function master(host:Int, config:SpiConfig, ?dma:Int):SpiMaster;
}

extern class SpiMaster {
	function close():Void;
}

typedef SpiConfig = {
	?sclk:Int,
	?mosi:Int,
	?miso:Int,
	?quadwp:Int,
	?quadhd:Int,
}
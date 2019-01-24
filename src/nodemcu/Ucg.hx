package nodemcu;

import nodemcu.Spi;

@:native('ucg')
extern class Ucg {
	static var FONT_MODE_TRANSPARENT:Int;
	static var FONT_MODE_SOLID:Int;
	static var DRAW_UPPER_RIGH:Int;
	static var DRAW_UPPER_LEFT:Int;
	static var DRAW_LOWER_RIGHT:Int;
	static var DRAW_LOWER_LEFT:Int;
	static var DRAW_ALL:Int;
	
	static var font_ncenR14_hr:Dynamic;
	
	static function hx8352c_18x240x400_hw_spi(bus:SpiMaster, cs:Int, dc:Int, ?res:Int):UcgDisp;
	static function ili9163_18x128x128_hw_spi(bus:SpiMaster, cs:Int, dc:Int, ?res:Int):UcgDisp;
	static function ili9341_18x240x320_hw_spi(bus:SpiMaster, cs:Int, dc:Int, ?res:Int):UcgDisp;
	static function ili9486_18x320x480_hw_spi(bus:SpiMaster, cs:Int, dc:Int, ?res:Int):UcgDisp;
	static function pcf8833_16x132x132_hw_spi(bus:SpiMaster, cs:Int, dc:Int, ?res:Int):UcgDisp;
	static function seps225_16x128x128_uvis_hw_spi(bus:SpiMaster, cs:Int, dc:Int, ?res:Int):UcgDisp;
	static function ssd1351_18x128x128_hw_spi(bus:SpiMaster, cs:Int, dc:Int, ?res:Int):UcgDisp;
	static function ssd1351_18x128x128_ft_hw_spi(bus:SpiMaster, cs:Int, dc:Int, ?res:Int):UcgDisp;
	static function ssd1331_18x96x64_uvis_hw_spi(bus:SpiMaster, cs:Int, dc:Int, ?res:Int):UcgDisp;
	static function st7735_18x128x160_hw_spi(bus:SpiMaster, cs:Int, dc:Int, ?res:Int):UcgDisp;
}


extern class UcgDisp {
	function begin(fontMode:Int):Void;
	function clearScreen():Void;
	// function draw90Line():Void;
	function drawBox(x:Int, y:Int, w:Int, h:Int):Void;
	// function drawCircle():Void;
	// function drawDisc():Void;
	// function drawFrame():Void;
	// function drawGlyph():Void;
	function drawGradientBox(x:Int, y:Int, w:Int, h:Int):Void;
	// function drawGradientLine():Void;
	// function drawHLine():Void;
	// function drawLine():Void;
	// function drawPixel():Void;
	// function drawRBox():Void;
	// function drawRFrame():Void;
	// function drawString():Void;
	// function drawTetragon():Void;
	// function drawTriangle():Void;
	// function drawVLine():Void;
	// function getFontAscent():Void;
	// function getFontDescent():Void;
	// function getHeight():Void;
	// function getStrWidth():Void;
	// function getWidth():Void;
	// function print():Void;
	function setClipRange(x:Int, y:Int, w:Int, h:Int):Void;
	function setColor(index:Int, r:Int, g:Int, b:Int):Void;
	function setFont(font:Dynamic):Void;
	// function setFontMode():Void;
	// function setFontPosBaseline():Void;
	// function setFontPosBottom():Void;
	// function setFontPosCenter():Void;
	// function setFontPosTop():Void;
	// function setMaxClipRange():Void;
	// function setPrintDir():Void;
	// function setPrintPos():Void;
	// function setRotate90():Void;
	// function setRotate180():Void;
	// function setRotate270():Void;
	// function setScale2x2():Void;
	// function undoClipRange():Void;
	// function undoRotate():Void;
	// function undoScale():Void;
}

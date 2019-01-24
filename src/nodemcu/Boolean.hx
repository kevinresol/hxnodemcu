package nodemcu;

abstract Boolean(Int) from Int to Int {
	@:from public static inline function fromBool(v:Bool):Boolean return v ? 1 : 0;
}
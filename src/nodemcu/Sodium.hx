package nodemcu;

@:native('sodium')
extern class Sodium {
	inline static var random = SodiumRandom;
}


@:native('sodium.random')
extern class SodiumRandom {
	static function random():Int;
}


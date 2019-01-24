package nodemcu;

import haxe.extern.EitherType;

@:native('mqtt')
extern class Mqtt {
	
	static var CONN_FAIL_SERVER_NOT_FOUND:Int;
	static var CONN_FAIL_NOT_A_CONNACK_MSG:Int;
	static var CONN_FAIL_DNS:Int;
	static var CONN_FAIL_TIMEOUT_RECEIVING:Int;
	static var CONN_FAIL_TIMEOUT_SENDING:Int;
	static var CONNACK_ACCEPTED:Int;
	static var CONNACK_REFUSED_PROTOCOL_VER:Int;
	static var CONNACK_REFUSED_ID_REJECTED:Int;
	static var CONNACK_REFUSED_SERVER_UNAVAILABLE:Int;
	static var CONNACK_REFUSED_BAD_USER_OR_PASS:Int;
	static var CONNACK_REFUSED_NOT_AUTHORIZED:Int;
	
	@:native('Client')
	static function createClient(clientId:String, keepAlive:Boolean, ?username:String, ?password:String, ?cleanSession:Boolean):MqttClient;
}

extern class MqttClient {
	function close():Bool;
	@:overload(function(host:String, port:Int, secure:Boolean, autoReconnect:Boolean, cert:String, ?onConnect:MqttClient->Void, ?onError:MqttClient->Int->Void):Bool {})
	@:overload(function(host:String, port:Int, secure:Boolean, autoReconnect:Boolean, cert:String, clientCert:String, privateKey:String, ?onConnect:MqttClient->Void, ?onError:MqttClient->Int->Void):Bool {})
	function connect(host:String, port:Int, secure:Boolean, autoReconnect:Boolean, ?onConnect:MqttClient->Void, ?onError:MqttClient->Int->Void):Bool;
	function on(event:String, f:MqttClient->String->String->Void):Void;
	function publish(topic:String, payload:String, qos:Int, retain:Boolean, ?onPubAck:MqttClient->Void):Bool;
	@:overload(function(topic:String, qos:Int, ?onSuccess:MqttClient->Void):Bool {})
	function subscribe(topics:Dynamic<Int>, ?onSuccess:MqttClient->Void):Bool;
	@:overload(function(topic:String, ?onSuccess:MqttClient->Void):Bool {})
	function unsubscribe(topics:Dynamic<Dynamic>, ?onSuccess:MqttClient->Void):Bool;
}
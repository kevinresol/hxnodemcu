package haxe;

import nodemcu.Tmr;
import nodemcu.Time;

class Timer {
  
  var tmr:Tmr;
  
  public function new(time_ms:Int) {
    tmr = Tmr.create();
    tmr.alarm(time_ms, Tmr.ALARM_AUTO, function(t) run());
  }
  
  dynamic public function run() {}
  
  public function stop() {
    if(tmr != null) {
      tmr.unregister();
      tmr = null;
    }
  }
  
  public static function delay(f:Void->Void, time_ms:Int):Timer {
    var t = new haxe.Timer(time_ms);
    t.run = function() {
      t.stop();
      f();
    };
    return t;
  }
  
  public static function measure<T>(f:Void->T):T {
    var t0 = stamp();
    var r = f();
    haxe.Log.trace((stamp() - t0) + "s");
    return r;
  }
  
  public static function stamp():Float {
    var s = Time.get();
    return s.sec + s.usec / 1000000;
  }
}
package sun.awt.X11;
//// This file is an automatically generated file, please do not edit this file, modify the WrapperGenerator.java file instead !
extern class XKeyboardState extends sun.awt.X11.XWrapperBase
{
	@:overload @:public @:static public static function getSize() : Int;
	
	@:overload @:public override public function getDataSize() : Int;
	
	@:overload @:public override public function getPData() : haxe.Int64;
	
	@:overload @:public public function new(addr : haxe.Int64) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function dispose() : Void;
	
	@:overload @:public public function get_key_click_percent() : Int;
	
	@:overload @:public public function set_key_click_percent(v : Int) : Void;
	
	@:overload @:public public function get_bell_percent() : Int;
	
	@:overload @:public public function set_bell_percent(v : Int) : Void;
	
	@:overload @:public public function get_bell_pitch() : Int;
	
	@:overload @:public public function set_bell_pitch(v : Int) : Void;
	
	@:overload @:public public function get_bell_duration() : Int;
	
	@:overload @:public public function set_bell_duration(v : Int) : Void;
	
	@:overload @:public public function get_led_mask() : haxe.Int64;
	
	@:overload @:public public function set_led_mask(v : haxe.Int64) : Void;
	
	@:overload @:public public function get_global_auto_repeat() : Int;
	
	@:overload @:public public function set_global_auto_repeat(v : Int) : Void;
	
	@:overload @:public public function get_auto_repeats(index : Int) : java.StdTypes.Int8;
	
	@:overload @:public public function set_auto_repeats(index : Int, v : java.StdTypes.Int8) : Void;
	
	@:overload @:public public function get_auto_repeats() : haxe.Int64;
	
	
}

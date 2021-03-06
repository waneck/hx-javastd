package sun.java2d.x11;
extern class XSurfaceData extends sun.java2d.SurfaceData
{
	@:overload @:public @:static public static function isX11SurfaceDataInitialized() : Bool;
	
	@:overload @:public @:static public static function setX11SurfaceDataInitialized() : Void;
	
	@:overload @:public public function new(surfaceType : sun.java2d.loops.SurfaceType, cm : java.awt.image.ColorModel) : Void;
	
	@:overload @:protected @:native private function initOps(peer : sun.awt.X11ComponentPeer, gc : sun.awt.X11GraphicsConfig, depth : Int) : Void;
	
	@:overload @:protected @:static @:native private static function XCreateGC(pXSData : haxe.Int64) : haxe.Int64;
	
	@:overload @:protected @:static @:native private static function XResetClip(xgc : haxe.Int64) : Void;
	
	@:overload @:protected @:static @:native private static function XSetClip(xgc : haxe.Int64, lox : Int, loy : Int, hix : Int, hiy : Int, complexclip : sun.java2d.pipe.Region) : Void;
	
	@:overload @:protected @:native private function flushNativeSurface() : Void;
	
	@:overload @:protected @:native private function isDrawableValid() : Bool;
	
	@:overload @:protected @:native private function setInvalid() : Void;
	
	@:overload @:protected @:static @:native private static function XSetGraphicsExposures(xgc : haxe.Int64, needExposures : Bool) : Void;
	
	
}

package sun.awt.X11;
//// This file is an automatically generated file, please do not edit this file, modify the WrapperGenerator.java file instead !
extern class XEvent extends sun.awt.X11.XWrapperBase
{
	@:overload public static function getSize() : Int;
	
	@:overload override public function getDataSize() : Int;
	
	@:overload override public function getPData() : haxe.Int64;
	
	@:overload public function new(addr : haxe.Int64) : Void;
	
	@:overload public function new() : Void;
	
	@:overload public function dispose() : Void;
	
	@:overload public function get_type() : Int;
	
	@:overload public function set_type(v : Int) : Void;
	
	@:overload public function get_xany() : sun.awt.X11.XAnyEvent;
	
	@:overload public function get_xkey() : sun.awt.X11.XKeyEvent;
	
	@:overload public function get_xbutton() : sun.awt.X11.XButtonEvent;
	
	@:overload public function get_xmotion() : sun.awt.X11.XMotionEvent;
	
	@:overload public function get_xcrossing() : sun.awt.X11.XCrossingEvent;
	
	@:overload public function get_xfocus() : sun.awt.X11.XFocusChangeEvent;
	
	@:overload public function get_xexpose() : sun.awt.X11.XExposeEvent;
	
	@:overload public function get_xgraphicsexpose() : sun.awt.X11.XGraphicsExposeEvent;
	
	@:overload public function get_xnoexpose() : sun.awt.X11.XNoExposeEvent;
	
	@:overload public function get_xvisibility() : sun.awt.X11.XVisibilityEvent;
	
	@:overload public function get_xcreatewindow() : sun.awt.X11.XCreateWindowEvent;
	
	@:overload public function get_xdestroywindow() : sun.awt.X11.XDestroyWindowEvent;
	
	@:overload public function get_xunmap() : sun.awt.X11.XUnmapEvent;
	
	@:overload public function get_xmap() : sun.awt.X11.XMapEvent;
	
	@:overload public function get_xmaprequest() : sun.awt.X11.XMapRequestEvent;
	
	@:overload public function get_xreparent() : sun.awt.X11.XReparentEvent;
	
	@:overload public function get_xconfigure() : sun.awt.X11.XConfigureEvent;
	
	@:overload public function get_xgravity() : sun.awt.X11.XGravityEvent;
	
	@:overload public function get_xresizerequest() : sun.awt.X11.XResizeRequestEvent;
	
	@:overload public function get_xconfigurerequest() : sun.awt.X11.XConfigureRequestEvent;
	
	@:overload public function get_xcirculate() : sun.awt.X11.XCirculateEvent;
	
	@:overload public function get_xcirculaterequest() : sun.awt.X11.XCirculateRequestEvent;
	
	@:overload public function get_xproperty() : sun.awt.X11.XPropertyEvent;
	
	@:overload public function get_xselectionclear() : sun.awt.X11.XSelectionClearEvent;
	
	@:overload public function get_xselectionrequest() : sun.awt.X11.XSelectionRequestEvent;
	
	@:overload public function get_xselection() : sun.awt.X11.XSelectionEvent;
	
	@:overload public function get_xcolormap() : sun.awt.X11.XColormapEvent;
	
	@:overload public function get_xclient() : sun.awt.X11.XClientMessageEvent;
	
	@:overload public function get_xmapping() : sun.awt.X11.XMappingEvent;
	
	@:overload public function get_xerror() : sun.awt.X11.XErrorEvent;
	
	@:overload public function get_xkeymap() : sun.awt.X11.XKeymapEvent;
	
	@:overload public function get_pad(index : Int) : haxe.Int64;
	
	@:overload public function set_pad(index : Int, v : haxe.Int64) : Void;
	
	@:overload public function get_pad() : haxe.Int64;
	
	
}

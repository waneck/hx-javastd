package sun.awt.X11;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/**
* XAtom is a class that allows you to create and modify X Window properties.
* An X Atom is an identifier for a property that you can set on any X Window.
* Standard X Atom are defined by X11 and these atoms are defined in this class
* for convenience. Common X Atoms like <code>XA_WM_NAME</code> are used to communicate with the
* Window manager to let it know the Window name. The use and protocol for these
* atoms are defined in the Inter client communications converntions manual.
* User specified XAtoms are defined by specifying a name that gets Interned
* by the XServer and an <code>XAtom</code> object is returned. An <code>XAtom</code> can also be created
* by using a pre-exisiting atom like <code>XA_WM_CLASS</code>. A <code>display</code> has to be specified
* in order to create an <code>XAtom</code>. <p> <p>
*
* Once an <code>XAtom</code> instance is created, you can call get and set property methods to
* set the values for a particular window. <p> <p>
*
*
* Example usage : To set the window name for a top level: <p>
* <code>
* XAtom xa = new XAtom(display,XAtom.XA_WM_NAME); <p>
* xa.setProperty(window,"Hello World");<p></code>
*<p>
*<p>
* To get the cut buffer :<p>
* <p><code>
* XAtom xa = new XAtom(display,XAtom.XA_CUT_BUFFER0);<p>
* String selection = xa.getProperty(root_window);<p></code>
* @author  Bino George
* @since       JDK1.5
*/
@:require(java5) extern class XAtom
{
	public static var XA_PRIMARY(default, null) : haxe.Int64;
	
	public static var XA_SECONDARY(default, null) : haxe.Int64;
	
	public static var XA_ARC(default, null) : haxe.Int64;
	
	public static var XA_ATOM(default, null) : haxe.Int64;
	
	public static var XA_BITMAP(default, null) : haxe.Int64;
	
	public static var XA_CARDINAL(default, null) : haxe.Int64;
	
	public static var XA_COLORMAP(default, null) : haxe.Int64;
	
	public static var XA_CURSOR(default, null) : haxe.Int64;
	
	public static var XA_CUT_BUFFER0(default, null) : haxe.Int64;
	
	public static var XA_CUT_BUFFER1(default, null) : haxe.Int64;
	
	public static var XA_CUT_BUFFER2(default, null) : haxe.Int64;
	
	public static var XA_CUT_BUFFER3(default, null) : haxe.Int64;
	
	public static var XA_CUT_BUFFER4(default, null) : haxe.Int64;
	
	public static var XA_CUT_BUFFER5(default, null) : haxe.Int64;
	
	public static var XA_CUT_BUFFER6(default, null) : haxe.Int64;
	
	public static var XA_CUT_BUFFER7(default, null) : haxe.Int64;
	
	public static var XA_DRAWABLE(default, null) : haxe.Int64;
	
	public static var XA_FONT(default, null) : haxe.Int64;
	
	public static var XA_INTEGER(default, null) : haxe.Int64;
	
	public static var XA_PIXMAP(default, null) : haxe.Int64;
	
	public static var XA_POINT(default, null) : haxe.Int64;
	
	public static var XA_RECTANGLE(default, null) : haxe.Int64;
	
	public static var XA_RESOURCE_MANAGER(default, null) : haxe.Int64;
	
	public static var XA_RGB_COLOR_MAP(default, null) : haxe.Int64;
	
	public static var XA_RGB_BEST_MAP(default, null) : haxe.Int64;
	
	public static var XA_RGB_BLUE_MAP(default, null) : haxe.Int64;
	
	public static var XA_RGB_DEFAULT_MAP(default, null) : haxe.Int64;
	
	public static var XA_RGB_GRAY_MAP(default, null) : haxe.Int64;
	
	public static var XA_RGB_GREEN_MAP(default, null) : haxe.Int64;
	
	public static var XA_RGB_RED_MAP(default, null) : haxe.Int64;
	
	public static var XA_STRING(default, null) : haxe.Int64;
	
	public static var XA_VISUALID(default, null) : haxe.Int64;
	
	public static var XA_WINDOW(default, null) : haxe.Int64;
	
	public static var XA_WM_COMMAND(default, null) : haxe.Int64;
	
	public static var XA_WM_HINTS(default, null) : haxe.Int64;
	
	public static var XA_WM_CLIENT_MACHINE(default, null) : haxe.Int64;
	
	public static var XA_WM_ICON_NAME(default, null) : haxe.Int64;
	
	public static var XA_WM_ICON_SIZE(default, null) : haxe.Int64;
	
	public static var XA_WM_NAME(default, null) : haxe.Int64;
	
	public static var XA_WM_NORMAL_HINTS(default, null) : haxe.Int64;
	
	public static var XA_WM_SIZE_HINTS(default, null) : haxe.Int64;
	
	public static var XA_WM_ZOOM_HINTS(default, null) : haxe.Int64;
	
	public static var XA_MIN_SPACE(default, null) : haxe.Int64;
	
	public static var XA_NORM_SPACE(default, null) : haxe.Int64;
	
	public static var XA_MAX_SPACE(default, null) : haxe.Int64;
	
	public static var XA_END_SPACE(default, null) : haxe.Int64;
	
	public static var XA_SUPERSCRIPT_X(default, null) : haxe.Int64;
	
	public static var XA_SUPERSCRIPT_Y(default, null) : haxe.Int64;
	
	public static var XA_SUBSCRIPT_X(default, null) : haxe.Int64;
	
	public static var XA_SUBSCRIPT_Y(default, null) : haxe.Int64;
	
	public static var XA_UNDERLINE_POSITION(default, null) : haxe.Int64;
	
	public static var XA_UNDERLINE_THICKNESS(default, null) : haxe.Int64;
	
	public static var XA_STRIKEOUT_ASCENT(default, null) : haxe.Int64;
	
	public static var XA_STRIKEOUT_DESCENT(default, null) : haxe.Int64;
	
	public static var XA_ITALIC_ANGLE(default, null) : haxe.Int64;
	
	public static var XA_X_HEIGHT(default, null) : haxe.Int64;
	
	public static var XA_QUAD_WIDTH(default, null) : haxe.Int64;
	
	public static var XA_WEIGHT(default, null) : haxe.Int64;
	
	public static var XA_POINT_SIZE(default, null) : haxe.Int64;
	
	public static var XA_RESOLUTION(default, null) : haxe.Int64;
	
	public static var XA_COPYRIGHT(default, null) : haxe.Int64;
	
	public static var XA_NOTICE(default, null) : haxe.Int64;
	
	public static var XA_FONT_NAME(default, null) : haxe.Int64;
	
	public static var XA_FAMILY_NAME(default, null) : haxe.Int64;
	
	public static var XA_FULL_NAME(default, null) : haxe.Int64;
	
	public static var XA_CAP_HEIGHT(default, null) : haxe.Int64;
	
	public static var XA_WM_CLASS(default, null) : haxe.Int64;
	
	public static var XA_WM_TRANSIENT_FOR(default, null) : haxe.Int64;
	
	public static var XA_LAST_PREDEFINED(default, null) : haxe.Int64;
	
	@:overload public static function get(name : String) : sun.awt.X11.XAtom;
	
	@:overload @:final public function getName() : String;
	
	@:overload public function toString() : String;
	
	@:overload public function new(name : String, autoIntern : Bool) : Void;
	
	/**  This constructor will create an instance of XAtom that is specified
	*  by the predefined XAtom specified by u <code> latom </code>
	*
	* @param display X display to use.
	* @param atom a predefined XAtom.
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(display : haxe.Int64, atom : haxe.Int64) : Void;
	
	/**
	* Creates uninitialized instance of
	*/
	@:overload public function new() : Void;
	
	/**  Sets the window property for the specified window
	* @param window window id to use
	* @param str value to set to.
	* @since 1.5
	*/
	@:require(java5) @:overload public function setProperty(window : haxe.Int64, str : String) : Void;
	
	/**
	* Sets UTF8_STRING type property. Explicitly converts str to UTF-8 byte sequence.
	*/
	@:overload public function setPropertyUTF8(window : haxe.Int64, str : String) : Void;
	
	/**
	* Sets STRING/8 type property. Explicitly converts str to Latin-1 byte sequence.
	*/
	@:overload public function setProperty8(window : haxe.Int64, str : String) : Void;
	
	/**  Gets the window property for the specified window
	* @param window window id to use
	* @param str value to set to.
	* @return string with the property.
	* @since 1.5
	*/
	@:require(java5) @:overload public function getProperty(window : haxe.Int64) : String;
	
	/*
	* Auxiliary function that returns the value of 'property' of type
	* 'property_type' on window 'window'.  Format of the property must be 32.
	*/
	@:overload public function get32Property(window : haxe.Int64, property_type : haxe.Int64) : haxe.Int64;
	
	/**
	*  Returns value of property of type CARDINAL/32 of this window
	*/
	@:overload public function getCard32Property(window : sun.awt.X11.XBaseWindow) : haxe.Int64;
	
	/**
	* Sets property of type CARDINAL on the window
	*/
	@:overload public function setCard32Property(window : haxe.Int64, value : haxe.Int64) : Void;
	
	/**
	* Sets property of type CARDINAL/32 on the window
	*/
	@:overload public function setCard32Property(window : sun.awt.X11.XBaseWindow, value : haxe.Int64) : Void;
	
	/**
	* Gets uninterpreted set of data from property and stores them in data_ptr.
	* Property type is the same as current atom, property is current atom.
	* Property format is 32. Property 'delete' is false.
	* Returns boolean if requested type, format, length match returned values
	* and returned data pointer is not null.
	*/
	@:overload public function getAtomData(window : haxe.Int64, data_ptr : haxe.Int64, length : Int) : Bool;
	
	/**
	* Gets uninterpreted set of data from property and stores them in data_ptr.
	* Property type is <code>type</code>, property is current atom.
	* Property format is 32. Property 'delete' is false.
	* Returns boolean if requested type, format, length match returned values
	* and returned data pointer is not null.
	*/
	@:overload public function getAtomData(window : haxe.Int64, type : haxe.Int64, data_ptr : haxe.Int64, length : Int) : Bool;
	
	/**
	* Sets uninterpreted set of data into property from data_ptr.
	* Property type is the same as current atom, property is current atom.
	* Property format is 32. Mode is PropModeReplace. length is a number
	* of items pointer by data_ptr.
	*/
	@:overload public function setAtomData(window : haxe.Int64, data_ptr : haxe.Int64, length : Int) : Void;
	
	/**
	* Sets uninterpreted set of data into property from data_ptr.
	* Property type is <code>type</code>, property is current atom.
	* Property format is 32. Mode is PropModeReplace. length is a number
	* of items pointer by data_ptr.
	*/
	@:overload public function setAtomData(window : haxe.Int64, type : haxe.Int64, data_ptr : haxe.Int64, length : Int) : Void;
	
	/**
	* Sets uninterpreted set of data into property from data_ptr.
	* Property type is <code>type</code>, property is current atom.
	* Property format is 8. Mode is PropModeReplace. length is a number
	* of bytes pointer by data_ptr.
	*/
	@:overload public function setAtomData8(window : haxe.Int64, type : haxe.Int64, data_ptr : haxe.Int64, length : Int) : Void;
	
	/**
	* Deletes property specified by this item on the window.
	*/
	@:overload public function DeleteProperty(window : haxe.Int64) : Void;
	
	/**
	* Deletes property specified by this item on the window.
	*/
	@:overload public function DeleteProperty(window : sun.awt.X11.XBaseWindow) : Void;
	
	@:overload public function setAtomData(window : haxe.Int64, property_type : haxe.Int64, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/*
	* Auxiliary function that returns the value of 'property' of type
	* 'property_type' on window 'window'.  Format of the property must be 8.
	*/
	@:overload public function getByteArrayProperty(window : haxe.Int64, property_type : haxe.Int64) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Interns the XAtom
	*/
	@:overload public function intern(onlyIfExists : Bool) : Void;
	
	@:overload public function isInterned() : Bool;
	
	@:overload public function setValues(display : haxe.Int64, name : String, atom : haxe.Int64) : Void;
	
	/**
	* Sets property value of type ATOM list to the list of atoms.
	*/
	@:overload public function setAtomListProperty(window : sun.awt.X11.XBaseWindow, atoms : java.NativeArray<sun.awt.X11.XAtom>) : Void;
	
	/**
	* Sets property value of type ATOM list to the list of atoms specified by XAtomList
	*/
	@:overload public function setAtomListProperty(window : sun.awt.X11.XBaseWindow, atoms : sun.awt.X11.XAtomList) : Void;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	/**
	* Sets property on the <code>window</code> to the value <code>window_value</window>
	* Property is assumed to be of type WINDOW/32
	*/
	@:overload public function setWindowProperty(window : haxe.Int64, window_value : haxe.Int64) : Void;
	
	@:overload public function setWindowProperty(window : sun.awt.X11.XBaseWindow, window_value : sun.awt.X11.XBaseWindow) : Void;
	
	/**
	* Gets property on the <code>window</code>. Property is assumed to be
	* of type WINDOW/32.
	*/
	@:overload public function getWindowProperty(window : haxe.Int64) : haxe.Int64;
	
	
}

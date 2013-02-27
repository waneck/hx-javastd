package sun.awt;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class SunHints
{
	/**
	* Rendering hint key and values
	*/
	public static var INTKEY_RENDERING(default, null) : Int;
	
	public static var INTVAL_RENDER_DEFAULT(default, null) : Int;
	
	public static var INTVAL_RENDER_SPEED(default, null) : Int;
	
	public static var INTVAL_RENDER_QUALITY(default, null) : Int;
	
	/**
	* Antialiasing hint key and values
	*/
	public static var INTKEY_ANTIALIASING(default, null) : Int;
	
	public static var INTVAL_ANTIALIAS_DEFAULT(default, null) : Int;
	
	public static var INTVAL_ANTIALIAS_OFF(default, null) : Int;
	
	public static var INTVAL_ANTIALIAS_ON(default, null) : Int;
	
	/**
	* Text antialiasing hint key and values
	*/
	public static var INTKEY_TEXT_ANTIALIASING(default, null) : Int;
	
	public static var INTVAL_TEXT_ANTIALIAS_DEFAULT(default, null) : Int;
	
	public static var INTVAL_TEXT_ANTIALIAS_OFF(default, null) : Int;
	
	public static var INTVAL_TEXT_ANTIALIAS_ON(default, null) : Int;
	
	public static var INTVAL_TEXT_ANTIALIAS_GASP(default, null) : Int;
	
	public static var INTVAL_TEXT_ANTIALIAS_LCD_HRGB(default, null) : Int;
	
	public static var INTVAL_TEXT_ANTIALIAS_LCD_HBGR(default, null) : Int;
	
	public static var INTVAL_TEXT_ANTIALIAS_LCD_VRGB(default, null) : Int;
	
	public static var INTVAL_TEXT_ANTIALIAS_LCD_VBGR(default, null) : Int;
	
	/**
	* Font fractional metrics hint key and values
	*/
	public static var INTKEY_FRACTIONALMETRICS(default, null) : Int;
	
	public static var INTVAL_FRACTIONALMETRICS_DEFAULT(default, null) : Int;
	
	public static var INTVAL_FRACTIONALMETRICS_OFF(default, null) : Int;
	
	public static var INTVAL_FRACTIONALMETRICS_ON(default, null) : Int;
	
	/**
	* Dithering hint key and values
	*/
	public static var INTKEY_DITHERING(default, null) : Int;
	
	public static var INTVAL_DITHER_DEFAULT(default, null) : Int;
	
	public static var INTVAL_DITHER_DISABLE(default, null) : Int;
	
	public static var INTVAL_DITHER_ENABLE(default, null) : Int;
	
	/**
	* Interpolation hint key and values
	*/
	public static var INTKEY_INTERPOLATION(default, null) : Int;
	
	public static var INTVAL_INTERPOLATION_NEAREST_NEIGHBOR(default, null) : Int;
	
	public static var INTVAL_INTERPOLATION_BILINEAR(default, null) : Int;
	
	public static var INTVAL_INTERPOLATION_BICUBIC(default, null) : Int;
	
	/**
	* Alpha interpolation hint key and values
	*/
	public static var INTKEY_ALPHA_INTERPOLATION(default, null) : Int;
	
	public static var INTVAL_ALPHA_INTERPOLATION_DEFAULT(default, null) : Int;
	
	public static var INTVAL_ALPHA_INTERPOLATION_SPEED(default, null) : Int;
	
	public static var INTVAL_ALPHA_INTERPOLATION_QUALITY(default, null) : Int;
	
	/**
	* Color rendering hint key and values
	*/
	public static var INTKEY_COLOR_RENDERING(default, null) : Int;
	
	public static var INTVAL_COLOR_RENDER_DEFAULT(default, null) : Int;
	
	public static var INTVAL_COLOR_RENDER_SPEED(default, null) : Int;
	
	public static var INTVAL_COLOR_RENDER_QUALITY(default, null) : Int;
	
	/**
	* Stroke normalization control hint key and values
	*/
	public static var INTKEY_STROKE_CONTROL(default, null) : Int;
	
	public static var INTVAL_STROKE_DEFAULT(default, null) : Int;
	
	public static var INTVAL_STROKE_NORMALIZE(default, null) : Int;
	
	public static var INTVAL_STROKE_PURE(default, null) : Int;
	
	/**
	* LCD text contrast control hint key.
	* Value is "100" to make discontiguous with the others which
	* are all enumerative and are of a different class.
	*/
	public static var INTKEY_AATEXT_LCD_CONTRAST(default, null) : Int;
	
	/**
	* Rendering hint key and value objects
	*/
	public static var KEY_RENDERING(default, null) : SunHints_Key;
	
	public static var VALUE_RENDER_SPEED(default, null) : Dynamic;
	
	public static var VALUE_RENDER_QUALITY(default, null) : Dynamic;
	
	public static var VALUE_RENDER_DEFAULT(default, null) : Dynamic;
	
	/**
	* Antialiasing hint key and value objects
	*/
	public static var KEY_ANTIALIASING(default, null) : SunHints_Key;
	
	public static var VALUE_ANTIALIAS_ON(default, null) : Dynamic;
	
	public static var VALUE_ANTIALIAS_OFF(default, null) : Dynamic;
	
	public static var VALUE_ANTIALIAS_DEFAULT(default, null) : Dynamic;
	
	/**
	* Text antialiasing hint key and value objects
	*/
	public static var KEY_TEXT_ANTIALIASING(default, null) : SunHints_Key;
	
	public static var VALUE_TEXT_ANTIALIAS_ON(default, null) : Dynamic;
	
	public static var VALUE_TEXT_ANTIALIAS_OFF(default, null) : Dynamic;
	
	public static var VALUE_TEXT_ANTIALIAS_DEFAULT(default, null) : Dynamic;
	
	public static var VALUE_TEXT_ANTIALIAS_GASP(default, null) : Dynamic;
	
	public static var VALUE_TEXT_ANTIALIAS_LCD_HRGB(default, null) : Dynamic;
	
	public static var VALUE_TEXT_ANTIALIAS_LCD_HBGR(default, null) : Dynamic;
	
	public static var VALUE_TEXT_ANTIALIAS_LCD_VRGB(default, null) : Dynamic;
	
	public static var VALUE_TEXT_ANTIALIAS_LCD_VBGR(default, null) : Dynamic;
	
	/**
	* Font fractional metrics hint key and value objects
	*/
	public static var KEY_FRACTIONALMETRICS(default, null) : SunHints_Key;
	
	public static var VALUE_FRACTIONALMETRICS_ON(default, null) : Dynamic;
	
	public static var VALUE_FRACTIONALMETRICS_OFF(default, null) : Dynamic;
	
	public static var VALUE_FRACTIONALMETRICS_DEFAULT(default, null) : Dynamic;
	
	/**
	* Dithering hint key and value objects
	*/
	public static var KEY_DITHERING(default, null) : SunHints_Key;
	
	public static var VALUE_DITHER_ENABLE(default, null) : Dynamic;
	
	public static var VALUE_DITHER_DISABLE(default, null) : Dynamic;
	
	public static var VALUE_DITHER_DEFAULT(default, null) : Dynamic;
	
	/**
	* Interpolation hint key and value objects
	*/
	public static var KEY_INTERPOLATION(default, null) : SunHints_Key;
	
	public static var VALUE_INTERPOLATION_NEAREST_NEIGHBOR(default, null) : Dynamic;
	
	public static var VALUE_INTERPOLATION_BILINEAR(default, null) : Dynamic;
	
	public static var VALUE_INTERPOLATION_BICUBIC(default, null) : Dynamic;
	
	/**
	* Alpha interpolation hint key and value objects
	*/
	public static var KEY_ALPHA_INTERPOLATION(default, null) : SunHints_Key;
	
	public static var VALUE_ALPHA_INTERPOLATION_SPEED(default, null) : Dynamic;
	
	public static var VALUE_ALPHA_INTERPOLATION_QUALITY(default, null) : Dynamic;
	
	public static var VALUE_ALPHA_INTERPOLATION_DEFAULT(default, null) : Dynamic;
	
	/**
	* Color rendering hint key and value objects
	*/
	public static var KEY_COLOR_RENDERING(default, null) : SunHints_Key;
	
	public static var VALUE_COLOR_RENDER_SPEED(default, null) : Dynamic;
	
	public static var VALUE_COLOR_RENDER_QUALITY(default, null) : Dynamic;
	
	public static var VALUE_COLOR_RENDER_DEFAULT(default, null) : Dynamic;
	
	/**
	* Stroke normalization control hint key and value objects
	*/
	public static var KEY_STROKE_CONTROL(default, null) : SunHints_Key;
	
	public static var VALUE_STROKE_DEFAULT(default, null) : Dynamic;
	
	public static var VALUE_STROKE_NORMALIZE(default, null) : Dynamic;
	
	public static var VALUE_STROKE_PURE(default, null) : Dynamic;
	
	/**
	* LCD text contrast hint key
	*/
	public static var KEY_TEXT_ANTIALIAS_LCD_CONTRAST(default, null) : java.awt.RenderingHints.RenderingHints_Key;
	
	
}
/**
* Defines the type of all keys used to control various
* aspects of the rendering and imaging pipelines.  Instances
* of this class are immutable and unique which means that
* tests for matches can be made using the == operator instead
* of the more expensive equals() method.
*/
@:native('sun$awt$SunHints$Key') extern class SunHints_Key extends java.awt.RenderingHints.RenderingHints_Key
{
	/**
	* Construct a key using the indicated private key.  Each
	* subclass of Key maintains its own unique domain of integer
	* keys.  No two objects with the same integer key and of the
	* same specific subclass can be constructed.  An exception
	* will be thrown if an attempt is made to construct another
	* object of a given class with the same integer key as a
	* pre-existing instance of that subclass of Key.
	*/
	@:overload public function new(privatekey : Int, description : String) : Void;
	
	/**
	* Returns the numeric index associated with this Key.  This
	* is useful for use in switch statements and quick lookups
	* of the setting of a particular key.
	*/
	@:overload @:final public function getIndex() : Int;
	
	/**
	* Returns a string representation of the Key.
	*/
	@:overload @:final public function toString() : String;
	
	/**
	* Returns true if the specified object is a valid value
	* for this Key.
	*/
	@:overload override public function isCompatibleValue(val : Dynamic) : Bool;
	
	
}
/**
* Defines the type of all "enumerative" values used to control
* various aspects of the rendering and imaging pipelines.  Instances
* of this class are immutable and unique which means that
* tests for matches can be made using the == operator instead
* of the more expensive equals() method.
*/
@:native('sun$awt$SunHints$Value') extern class SunHints_Value
{
	@:overload public static function get(keyindex : Int, valueindex : Int) : SunHints_Value;
	
	/**
	* Construct a value using the indicated private index.  Each
	* subclass of Value maintains its own unique domain of integer
	* indices.  Enforcing the uniqueness of the integer indices
	* is left to the subclass.
	*/
	@:overload public function new(key : SunHints_Key, index : Int, description : String) : Void;
	
	/**
	* Returns the numeric index associated with this Key.  This
	* is useful for use in switch statements and quick lookups
	* of the setting of a particular key.
	*/
	@:overload @:final public function getIndex() : Int;
	
	/**
	* Returns a string representation of this Value.
	*/
	@:overload @:final public function toString() : String;
	
	/**
	* Returns true if the specified object is a valid Key
	* for this Value.
	*/
	@:overload @:final public function isCompatibleKey(k : SunHints_Key) : Bool;
	
	/**
	* The hash code for all SunHints.Value objects will be the same
	* as the system identity code of the object as defined by the
	* System.identityHashCode() method.
	*/
	@:overload @:final public function hashCode() : Int;
	
	/**
	* The equals method for all SunHints.Value objects will return
	* the same result as the equality operator '=='.
	*/
	@:overload @:final public function equals(o : Dynamic) : Bool;
	
	
}
@:native('sun$awt$SunHints$LCDContrastKey') extern class SunHints_LCDContrastKey extends SunHints_Key
{
	@:overload public function new(privatekey : Int, description : String) : Void;
	
	/**
	* Returns true if the specified object is a valid value
	* for this Key. The allowable range is 100 to 250.
	*/
	@:overload @:final override public function isCompatibleValue(val : Dynamic) : Bool;
	
	
}

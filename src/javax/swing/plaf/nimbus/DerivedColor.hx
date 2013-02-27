package javax.swing.plaf.nimbus;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DerivedColor extends java.awt.Color
{
	@:overload public function getUiDefaultParentName() : String;
	
	@:overload public function getHueOffset() : Single;
	
	@:overload public function getSaturationOffset() : Single;
	
	@:overload public function getBrightnessOffset() : Single;
	
	@:overload public function getAlphaOffset() : Int;
	
	/**
	* Recalculate the derived color from the UIManager parent color and offsets
	*/
	@:overload public function rederiveColor() : Void;
	
	/**
	* Returns the RGB value representing the color in the default sRGB {@link java.awt.image.ColorModel}. (Bits 24-31
	* are alpha, 16-23 are red, 8-15 are green, 0-7 are blue).
	*
	* @return the RGB value of the color in the default sRGB <code>ColorModel</code>.
	* @see java.awt.image.ColorModel#getRGBdefault
	* @see #getRed
	* @see #getGreen
	* @see #getBlue
	* @since JDK1.0
	*/
	@:require(java0) @:overload override public function getRGB() : Int;
	
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	/**
	* Returns a string representation of this <code>Color</code>. This method
	* is intended to be used only for debugging purposes. The content and
	* format of the returned string might vary between implementations. The
	* returned string might be empty but cannot be <code>null</code>.
	*
	* @return a String representation of this <code>Color</code>.
	*/
	@:overload override public function toString() : String;
	
	
}
@:native('javax$swing$plaf$nimbus$DerivedColor$UIResource') @:internal extern class DerivedColor_UIResource extends DerivedColor implements javax.swing.plaf.UIResource
{
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	
}

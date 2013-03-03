package java.awt.im;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class InputMethodHighlight
{
	/**
	* Constant for the raw text state.
	*/
	@:public @:final @:static public static var RAW_TEXT(default, null) : Int;
	
	/**
	* Constant for the converted text state.
	*/
	@:public @:final @:static public static var CONVERTED_TEXT(default, null) : Int;
	
	/**
	* Constant for the default highlight for unselected raw text.
	*/
	@:public @:final @:static public static var UNSELECTED_RAW_TEXT_HIGHLIGHT(default, null) : java.awt.im.InputMethodHighlight;
	
	/**
	* Constant for the default highlight for selected raw text.
	*/
	@:public @:final @:static public static var SELECTED_RAW_TEXT_HIGHLIGHT(default, null) : java.awt.im.InputMethodHighlight;
	
	/**
	* Constant for the default highlight for unselected converted text.
	*/
	@:public @:final @:static public static var UNSELECTED_CONVERTED_TEXT_HIGHLIGHT(default, null) : java.awt.im.InputMethodHighlight;
	
	/**
	* Constant for the default highlight for selected converted text.
	*/
	@:public @:final @:static public static var SELECTED_CONVERTED_TEXT_HIGHLIGHT(default, null) : java.awt.im.InputMethodHighlight;
	
	/**
	* Constructs an input method highlight record.
	* The variation is set to 0, the style to null.
	* @param selected Whether the text range is selected
	* @param state The conversion state for the text range - RAW_TEXT or CONVERTED_TEXT
	* @see InputMethodHighlight#RAW_TEXT
	* @see InputMethodHighlight#CONVERTED_TEXT
	* @exception IllegalArgumentException if a state other than RAW_TEXT or CONVERTED_TEXT is given
	*/
	@:overload @:public public function new(selected : Bool, state : Int) : Void;
	
	/**
	* Constructs an input method highlight record.
	* The style is set to null.
	* @param selected Whether the text range is selected
	* @param state The conversion state for the text range - RAW_TEXT or CONVERTED_TEXT
	* @param variation The style variation for the text range
	* @see InputMethodHighlight#RAW_TEXT
	* @see InputMethodHighlight#CONVERTED_TEXT
	* @exception IllegalArgumentException if a state other than RAW_TEXT or CONVERTED_TEXT is given
	*/
	@:overload @:public public function new(selected : Bool, state : Int, variation : Int) : Void;
	
	/**
	* Constructs an input method highlight record.
	* The style attributes map provided must be unmodifiable.
	* @param selected whether the text range is selected
	* @param state the conversion state for the text range - RAW_TEXT or CONVERTED_TEXT
	* @param variation the variation for the text range
	* @param style the rendering style attributes for the text range, or null
	* @see InputMethodHighlight#RAW_TEXT
	* @see InputMethodHighlight#CONVERTED_TEXT
	* @exception IllegalArgumentException if a state other than RAW_TEXT or CONVERTED_TEXT is given
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function new(selected : Bool, state : Int, variation : Int, style : java.util.Map<java.awt.font.TextAttribute, Dynamic>) : Void;
	
	/**
	* Returns whether the text range is selected.
	*/
	@:overload @:public public function isSelected() : Bool;
	
	/**
	* Returns the conversion state of the text range.
	* @return The conversion state for the text range - RAW_TEXT or CONVERTED_TEXT.
	* @see InputMethodHighlight#RAW_TEXT
	* @see InputMethodHighlight#CONVERTED_TEXT
	*/
	@:overload @:public public function getState() : Int;
	
	/**
	* Returns the variation of the text range.
	*/
	@:overload @:public public function getVariation() : Int;
	
	/**
	* Returns the rendering style attributes for the text range, or null.
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getStyle() : java.util.Map<java.awt.font.TextAttribute, Dynamic>;
	
	
}

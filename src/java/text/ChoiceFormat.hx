package java.text;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class ChoiceFormat extends java.text.NumberFormat
{
	/**
	* Sets the pattern.
	* @param newPattern See the class description.
	*/
	@:overload @:public public function applyPattern(newPattern : String) : Void;
	
	/**
	* Gets the pattern.
	*/
	@:overload @:public public function toPattern() : String;
	
	/**
	* Constructs with limits and corresponding formats based on the pattern.
	* @see #applyPattern
	*/
	@:overload @:public public function new(newPattern : String) : Void;
	
	/**
	* Constructs with the limits and the corresponding formats.
	* @see #setChoices
	*/
	@:overload @:public public function new(limits : java.NativeArray<Float>, formats : java.NativeArray<String>) : Void;
	
	/**
	* Set the choices to be used in formatting.
	* @param limits contains the top value that you want
	* parsed with that format,and should be in ascending sorted order. When
	* formatting X, the choice will be the i, where
	* limit[i] &lt;= X &lt; limit[i+1].
	* If the limit array is not in ascending order, the results of formatting
	* will be incorrect.
	* @param formats are the formats you want to use for each limit.
	* They can be either Format objects or Strings.
	* When formatting with object Y,
	* if the object is a NumberFormat, then ((NumberFormat) Y).format(X)
	* is called. Otherwise Y.toString() is called.
	*/
	@:overload @:public public function setChoices(limits : java.NativeArray<Float>, formats : java.NativeArray<String>) : Void;
	
	/**
	* Get the limits passed in the constructor.
	* @return the limits.
	*/
	@:overload @:public public function getLimits() : java.NativeArray<Float>;
	
	/**
	* Get the formats passed in the constructor.
	* @return the formats.
	*/
	@:overload @:public public function getFormats() : java.NativeArray<Dynamic>;
	
	/**
	* Specialization of format. This method really calls
	* <code>format(double, StringBuffer, FieldPosition)</code>
	* thus the range of longs that are supported is only equal to
	* the range that can be stored by double. This will never be
	* a practical limitation.
	*/
	@:overload @:public override public function format(number : haxe.Int64, toAppendTo : java.lang.StringBuffer, status : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Returns pattern with formatted double.
	* @param number number to be formatted & substituted.
	* @param toAppendTo where text is appended.
	* @param status ignore no useful status is returned.
	*/
	@:overload @:public override public function format(number : Float, toAppendTo : java.lang.StringBuffer, status : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Parses a Number from the input text.
	* @param text the source text.
	* @param status an input-output parameter.  On input, the
	* status.index field indicates the first character of the
	* source text that should be parsed.  On exit, if no error
	* occured, status.index is set to the first unparsed character
	* in the source text.  On exit, if an error did occur,
	* status.index is unchanged and status.errorIndex is set to the
	* first index of the character that caused the parse to fail.
	* @return A Number representing the value of the number parsed.
	*/
	@:overload @:public override public function parse(text : String, status : java.text.ParsePosition) : java.lang.Number;
	
	/**
	* Finds the least double greater than d.
	* If NaN, returns same value.
	* <p>Used to make half-open intervals.
	* @see #previousDouble
	*/
	@:overload @:public @:static @:final public static function nextDouble(d : Float) : Float;
	
	/**
	* Finds the greatest double less than d.
	* If NaN, returns same value.
	* @see #nextDouble
	*/
	@:overload @:public @:static @:final public static function previousDouble(d : Float) : Float;
	
	/**
	* Overrides Cloneable
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	/**
	* Generates a hash code for the message format object.
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Equality comparision between two
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Finds the least double greater than d (if positive == true),
	* or the greatest double less than d (if positive == false).
	* If NaN, returns same value.
	*
	* Does not affect floating-point flags,
	* provided these member functions do not:
	*          Double.longBitsToDouble(long)
	*          Double.doubleToLongBits(double)
	*          Double.isNaN(double)
	*/
	@:overload @:public @:static public static function nextDouble(d : Float, positive : Bool) : Float;
	
	
}

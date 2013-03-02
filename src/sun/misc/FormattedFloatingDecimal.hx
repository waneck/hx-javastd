package sun.misc;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class FormattedFloatingDecimal
{
	/*
	* FIRST IMPORTANT CONSTRUCTOR: DOUBLE
	*/
	@:overload public function new(d : Float) : Void;
	
	@:overload public function new(d : Float, precision : Int, form : sun.misc.FormattedFloatingDecimal.FormattedFloatingDecimal_Form) : Void;
	
	/*
	* SECOND IMPORTANT CONSTRUCTOR: SINGLE
	*/
	@:overload public function new(f : Single) : Void;
	
	@:overload public function new(f : Single, precision : Int, form : sun.misc.FormattedFloatingDecimal.FormattedFloatingDecimal_Form) : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function getExponent() : Int;
	
	@:overload public function getExponentRounded() : Int;
	
	@:overload public function getChars(result : java.NativeArray<java.StdTypes.Char16>) : Int;
	
	/*
	* Take a FormattedFloatingDecimal, which we presumably just scanned in,
	* and find out what its value is, as a double.
	*
	* AS A SIDE EFFECT, SET roundDir TO INDICATE PREFERRED
	* ROUNDING DIRECTION in case the result is really destined
	* for a single-precision float.
	*/
	@:overload @:strictfp public function doubleValue() : Float;
	
	/*
	* Take a FormattedFloatingDecimal, which we presumably just scanned in,
	* and find out what its value is, as a float.
	* This is distinct from doubleValue() to avoid the extremely
	* unlikely case of a double rounding error, wherein the converstion
	* to double has one rounding error, and the conversion of that double
	* to a float has another rounding error, IN THE WRONG DIRECTION,
	* ( because of the preference to a zero low-order bit ).
	*/
	@:overload @:strictfp public function floatValue() : Single;
	
	
}
@:native('sun$misc$FormattedFloatingDecimal$Form') extern enum FormattedFloatingDecimal_Form
{
	SCIENTIFIC;
	COMPATIBLE;
	DECIMAL_FLOAT;
	GENERAL;
	
}


package sun.misc;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class FloatingDecimal
{
	/*
	* FIRST IMPORTANT CONSTRUCTOR: DOUBLE
	*/
	@:overload public function new(d : Float) : Void;
	
	/*
	* SECOND IMPORTANT CONSTRUCTOR: SINGLE
	*/
	@:overload public function new(f : Single) : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function toJavaFormatString() : String;
	
	@:overload public function appendTo(buf : java.lang.Appendable) : Void;
	
	@:overload public static function readJavaFormatString(_in : String) : FloatingDecimal;
	
	/*
	* Take a FloatingDecimal, which we presumably just scanned in,
	* and find out what its value is, as a double.
	*
	* AS A SIDE EFFECT, SET roundDir TO INDICATE PREFERRED
	* ROUNDING DIRECTION in case the result is really destined
	* for a single-precision float.
	*/
	@:overload @:strictfp public function doubleValue() : Float;
	
	/*
	* Take a FloatingDecimal, which we presumably just scanned in,
	* and find out what its value is, as a float.
	* This is distinct from doubleValue() to avoid the extremely
	* unlikely case of a double rounding error, wherein the conversion
	* to double has one rounding error, and the conversion of that double
	* to a float has another rounding error, IN THE WRONG DIRECTION,
	* ( because of the preference to a zero low-order bit ).
	*/
	@:overload @:strictfp public function floatValue() : Single;
	
	
}
@:internal extern class FDBigInt
{
	@:overload public function new(v : Int) : Void;
	
	@:overload public function new(v : haxe.Int64) : Void;
	
	@:overload public function new(other : FDBigInt) : Void;
	
	@:overload public function new(seed : haxe.Int64, digit : java.NativeArray<java.StdTypes.Char16>, nd0 : Int, nd : Int) : Void;
	
	/*
	* Left shift by c bits.
	* Shifts this in place.
	*/
	@:overload public function lshiftMe(c : Int) : Void;
	
	/*
	* normalize this number by shifting until
	* the MSB of the number is at 0x08000000.
	* This is in preparation for quoRemIteration, below.
	* The idea is that, to make division easier, we want the
	* divisor to be "normalized" -- usually this means shifting
	* the MSB into the high words sign bit. But because we know that
	* the quotient will be 0 < q < 10, we would like to arrange that
	* the dividend not span up into another word of precision.
	* (This needs to be explained more clearly!)
	*/
	@:overload public function normalizeMe() : Int;
	
	/*
	* Multiply a FDBigInt by an int.
	* Result is a new FDBigInt.
	*/
	@:overload public function mult(iv : Int) : FDBigInt;
	
	/*
	* Multiply a FDBigInt by an int and add another int.
	* Result is computed in place.
	* Hope it fits!
	*/
	@:overload public function multaddMe(iv : Int, addend : Int) : Void;
	
	/*
	* Multiply a FDBigInt by another FDBigInt.
	* Result is a new FDBigInt.
	*/
	@:overload public function mult(other : FDBigInt) : FDBigInt;
	
	/*
	* Add one FDBigInt to another. Return a FDBigInt
	*/
	@:overload public function add(other : FDBigInt) : FDBigInt;
	
	/*
	* Subtract one FDBigInt from another. Return a FDBigInt
	* Assert that the result is positive.
	*/
	@:overload public function sub(other : FDBigInt) : FDBigInt;
	
	/*
	* Compare FDBigInt with another FDBigInt. Return an integer
	* >0: this > other
	*  0: this == other
	* <0: this < other
	*/
	@:overload public function cmp(other : FDBigInt) : Int;
	
	/*
	* Compute
	* q = (int)( this / S )
	* this = 10 * ( this mod S )
	* Return q.
	* This is the iteration step of digit development for output.
	* We assume that S has been normalized, as above, and that
	* "this" has been lshift'ed accordingly.
	* Also assume, of course, that the result, q, can be expressed
	* as an integer, 0 <= q < 10.
	*/
	@:overload public function quoRemIteration(S : FDBigInt) : Int;
	
	@:overload public function longValue() : haxe.Int64;
	
	@:overload public function toString() : String;
	
	
}

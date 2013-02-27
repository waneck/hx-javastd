package com.sun.tools.internal.xjc.model;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Multiplicity
{
	/**
	* represents a possible number of occurence.
	*
	* Usually, denoted by a pair of integers like (1,1) or (5,10).
	* A special value "unbounded" is allowed as the upper bound.
	*
	* <p>
	* For example, (0,unbounded) corresponds to the '*' occurence of DTD.
	* (0,1) corresponds to the '?' occurence of DTD.
	*
	* @author
	*    <a href="mailto:kohsuke.kawaguchi@sun.com">Kohsuke KAWAGUCHI</a>
	*/
	public var min(default, null) : java.math.BigInteger;
	
	public var max(default, null) : java.math.BigInteger;
	
	@:overload public static function create(min : java.math.BigInteger, max : java.math.BigInteger) : Multiplicity;
	
	@:overload public static function create(min : Int, max : Null<Int>) : Multiplicity;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	/** returns true if the multiplicity is (1,1). */
	@:overload public function isUnique() : Bool;
	
	/** returns true if the multiplicity is (0,1) */
	@:overload public function isOptional() : Bool;
	
	/** returns true if the multiplicity is (0,1) or (1,1). */
	@:overload public function isAtMostOnce() : Bool;
	
	/** returns true if the multiplicity is (0,0). */
	@:overload public function isZero() : Bool;
	
	/**
	* Returns true if the multiplicity represented by this object
	* completely includes the multiplicity represented by the
	* other object. For example, we say [1,3] includes [1,2] but
	* [2,4] doesn't include [1,3].
	*/
	@:overload public function includes(rhs : Multiplicity) : Bool;
	
	/**
	* Returns the string representation of the 'max' property.
	* Either a number or a token "unbounded".
	*/
	@:overload public function getMaxString() : String;
	
	/** gets the string representation.
	* mainly debug purpose.
	*/
	@:overload public function toString() : String;
	
	/** the constant representing the (0,0) multiplicity. */
	public static var ZERO(default, null) : Multiplicity;
	
	/** the constant representing the (1,1) multiplicity. */
	public static var ONE(default, null) : Multiplicity;
	
	/** the constant representing the (0,1) multiplicity. */
	public static var OPTIONAL(default, null) : Multiplicity;
	
	/** the constant representing the (0,unbounded) multiplicity. */
	public static var STAR(default, null) : Multiplicity;
	
	/** the constant representing the (1,unbounded) multiplicity. */
	public static var PLUS(default, null) : Multiplicity;
	
	@:overload public static function choice(lhs : Multiplicity, rhs : Multiplicity) : Multiplicity;
	
	@:overload public static function group(lhs : Multiplicity, rhs : Multiplicity) : Multiplicity;
	
	@:overload public static function multiply(lhs : Multiplicity, rhs : Multiplicity) : Multiplicity;
	
	@:overload public static function oneOrMore(c : Multiplicity) : Multiplicity;
	
	@:overload public function makeOptional() : Multiplicity;
	
	@:overload public function makeRepeated() : Multiplicity;
	
	
}

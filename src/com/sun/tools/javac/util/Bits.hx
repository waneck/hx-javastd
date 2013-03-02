package com.sun.tools.javac.util;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
/** A class for extensible, mutable bit sets.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Bits
{
	/** Construct an initially empty set.
	*/
	@:overload public function new() : Void;
	
	/** Construct a set consisting initially of given bit vector.
	*/
	@:overload public function new(bits : java.NativeArray<Int>) : Void;
	
	/** Construct a set consisting initially of given range.
	*/
	@:overload public function new(start : Int, limit : Int) : Void;
	
	/** This set = {}.
	*/
	@:overload public function clear() : Void;
	
	/** Return a copy of this set.
	*/
	@:overload public function dup() : com.sun.tools.javac.util.Bits;
	
	/** Include x in this set.
	*/
	@:overload public function incl(x : Int) : Void;
	
	/** Include [start..limit) in this set.
	*/
	@:overload public function inclRange(start : Int, limit : Int) : Void;
	
	/** Exclude [start...end] from this set.
	*/
	@:overload public function excludeFrom(start : Int) : Void;
	
	/** Exclude x from this set.
	*/
	@:overload public function excl(x : Int) : Void;
	
	/** Is x an element of this set?
	*/
	@:overload public function isMember(x : Int) : Bool;
	
	/** this set = this set & xs.
	*/
	@:overload public function andSet(xs : com.sun.tools.javac.util.Bits) : com.sun.tools.javac.util.Bits;
	
	/** this set = this set | xs.
	*/
	@:overload public function orSet(xs : com.sun.tools.javac.util.Bits) : com.sun.tools.javac.util.Bits;
	
	/** this set = this set \ xs.
	*/
	@:overload public function diffSet(xs : com.sun.tools.javac.util.Bits) : com.sun.tools.javac.util.Bits;
	
	/** this set = this set ^ xs.
	*/
	@:overload public function xorSet(xs : com.sun.tools.javac.util.Bits) : com.sun.tools.javac.util.Bits;
	
	/** Return the index of the least bit position >= x that is set.
	*  If none are set, returns -1.  This provides a nice way to iterate
	*  over the members of a bit set:
	*  <pre>
	*  for (int i = bits.nextBit(0); i>=0; i = bits.nextBit(i+1)) ...
	*  </pre>
	*/
	@:overload public function nextBit(x : Int) : Int;
	
	/** a string representation of this set.
	*/
	@:overload public function toString() : String;
	
	/** Test Bits.nextBit(int). */
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	
}

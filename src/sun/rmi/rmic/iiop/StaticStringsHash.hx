package sun.rmi.rmic.iiop;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
/**
* StaticStringsHash takes an array of constant strings and
* uses several different hash methods to try to find the
* 'best' one for that set. The set of methods is currently
* fixed, but with a little work could be made extensible thru
* subclassing.
* <p>
* The current set of methods is:
* <ol>
* <li> length() - works well when all strings are different length.</li>
* <li> charAt(n) - works well when one offset into all strings is different.</li>
* <li> hashCode() - works well with larger arrays.</li>
* </ol>
* After constructing an instance over the set of strings, the
* <code>getKey(String)</code> method can be used to use the selected hash
* method to produce a key.  The <code>method</code> string will contain
* "length()", "charAt(n)", or "hashCode()", and is intended for use by
* code generators.
* <p>
* The <code>keys</code> array will contain the full set of unique keys.
* <p>
* The <code>buckets</code> array will contain a set of arrays, one for
* each key in the <code>keys</code>, where <code>buckets[x][y]</code>
* is an index into the <code>strings</code> array.
* @author      Bryan Atsatt
*/
extern class StaticStringsHash
{
	/** The set of strings upon which the hash info is created */
	@:public public var strings : java.NativeArray<String>;
	
	/** Unique hash keys */
	@:public public var keys : java.NativeArray<Int>;
	
	/** Buckets for each key, where buckets[x][y] is an index
	* into the strings[] array. */
	@:public public var buckets : java.NativeArray<java.NativeArray<Int>>;
	
	/** The method to invoke on String to produce the hash key */
	@:public public var method : String;
	
	/** Get a key for the given string using the
	* selected hash method.
	* @param str the string to return a key for.
	* @return the key.
	*/
	@:overload @:public public function getKey(str : String) : Int;
	
	/** Constructor
	* @param strings the set of strings upon which to
	* find an optimal hash method. Must not contain
	* duplicates.
	*/
	@:overload @:public public function new(strings : java.NativeArray<String>) : Void;
	
	/** Print an optimized 'contains' method for the
	* argument strings
	*/
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	
}

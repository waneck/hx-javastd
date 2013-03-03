package java.nio.charset;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class CoderResult
{
	/**
	* Returns a string describing this coder result.
	*
	* @return  A descriptive string
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Tells whether or not this object describes an underflow condition.  </p>
	*
	* @return  <tt>true</tt> if, and only if, this object denotes underflow
	*/
	@:overload @:public public function isUnderflow() : Bool;
	
	/**
	* Tells whether or not this object describes an overflow condition.  </p>
	*
	* @return  <tt>true</tt> if, and only if, this object denotes overflow
	*/
	@:overload @:public public function isOverflow() : Bool;
	
	/**
	* Tells whether or not this object describes an error condition.  </p>
	*
	* @return  <tt>true</tt> if, and only if, this object denotes either a
	*          malformed-input error or an unmappable-character error
	*/
	@:overload @:public public function isError() : Bool;
	
	/**
	* Tells whether or not this object describes a malformed-input error.
	* </p>
	*
	* @return  <tt>true</tt> if, and only if, this object denotes a
	*          malformed-input error
	*/
	@:overload @:public public function isMalformed() : Bool;
	
	/**
	* Tells whether or not this object describes an unmappable-character
	* error.  </p>
	*
	* @return  <tt>true</tt> if, and only if, this object denotes an
	*          unmappable-character error
	*/
	@:overload @:public public function isUnmappable() : Bool;
	
	/**
	* Returns the length of the erroneous input described by this
	* object&nbsp;&nbsp;<i>(optional operation)</i>.  </p>
	*
	* @return  The length of the erroneous input, a positive integer
	*
	* @throws  UnsupportedOperationException
	*          If this object does not describe an error condition, that is,
	*          if the {@link #isError() isError} does not return <tt>true</tt>
	*/
	@:overload @:public public function length() : Int;
	
	/**
	* Result object indicating underflow, meaning that either the input buffer
	* has been completely consumed or, if the input buffer is not yet empty,
	* that additional input is required.  </p>
	*/
	@:public @:static @:final public static var UNDERFLOW(default, null) : java.nio.charset.CoderResult;
	
	/**
	* Result object indicating overflow, meaning that there is insufficient
	* room in the output buffer.  </p>
	*/
	@:public @:static @:final public static var OVERFLOW(default, null) : java.nio.charset.CoderResult;
	
	/**
	* Static factory method that returns the unique object describing a
	* malformed-input error of the given length.  </p>
	*
	* @return  The requested coder-result object
	*/
	@:overload @:public @:static public static function malformedForLength(length : Int) : java.nio.charset.CoderResult;
	
	/**
	* Static factory method that returns the unique result object describing
	* an unmappable-character error of the given length.  </p>
	*
	* @return  The requested coder-result object
	*/
	@:overload @:public @:static public static function unmappableForLength(length : Int) : java.nio.charset.CoderResult;
	
	/**
	* Throws an exception appropriate to the result described by this object.
	* </p>
	*
	* @throws  BufferUnderflowException
	*          If this object is {@link #UNDERFLOW}
	*
	* @throws  BufferOverflowException
	*          If this object is {@link #OVERFLOW}
	*
	* @throws  MalformedInputException
	*          If this object represents a malformed-input error; the
	*          exception's length value will be that of this object
	*
	* @throws  UnmappableCharacterException
	*          If this object represents an unmappable-character error; the
	*          exceptions length value will be that of this object
	*/
	@:overload @:public public function throwException() : Void;
	
	
}
@:native('java$nio$charset$CoderResult$Cache') @:internal extern class CoderResult_Cache
{
	@:overload @:protected @:abstract private function create(len : Int) : java.nio.charset.CoderResult;
	
	
}

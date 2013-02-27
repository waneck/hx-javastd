package sun.security.util;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Debug
{
	@:overload public static function Help() : Void;
	
	/**
	* Get a Debug object corresponding to whether or not the given
	* option is set. Set the prefix to be the same as option.
	*/
	@:overload public static function getInstance(option : String) : Debug;
	
	/**
	* Get a Debug object corresponding to whether or not the given
	* option is set. Set the prefix to be prefix.
	*/
	@:overload public static function getInstance(option : String, prefix : String) : Debug;
	
	/**
	* True if the system property "security.debug" contains the
	* string "option".
	*/
	@:overload public static function isOn(option : String) : Bool;
	
	/**
	* print a message to stderr that is prefixed with the prefix
	* created from the call to getInstance.
	*/
	@:overload public function println(message : String) : Void;
	
	/**
	* print a blank line to stderr that is prefixed with the prefix.
	*/
	@:overload public function println() : Void;
	
	/**
	* print a message to stderr that is prefixed with the prefix.
	*/
	@:native('println') @:overload public static function _println(prefix : String, message : String) : Void;
	
	/**
	* return a hexadecimal printed representation of the specified
	* BigInteger object. the value is formatted to fit on lines of
	* at least 75 characters, with embedded newlines. Words are
	* separated for readability, with eight words (32 bytes) per line.
	*/
	@:overload public static function toHexString(b : java.math.BigInteger) : String;
	
	@:overload public static function toString(b : java.NativeArray<java.StdTypes.Int8>) : String;
	
	
}

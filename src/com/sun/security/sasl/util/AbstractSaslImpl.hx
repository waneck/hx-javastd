package com.sun.security.sasl.util;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractSaslImpl
{
	/**
	* The base class used by client and server implementations of SASL
	* mechanisms to process properties passed in the props argument
	* and strings with the same format (e.g., used in digest-md5).
	*
	* Also contains utilities for doing int to network-byte-order
	* transformations.
	*
	* @author Rosanna Lee
	*/
	private var completed : Bool;
	
	private var privacy : Bool;
	
	private var integrity : Bool;
	
	private var qop : java.NativeArray<java.StdTypes.Int8>;
	
	private var allQop : java.StdTypes.Int8;
	
	private var strength : java.NativeArray<java.StdTypes.Int8>;
	
	private var sendMaxBufSize : Int;
	
	private var recvMaxBufSize : Int;
	
	private var rawSendSize : Int;
	
	private var myClassName : String;
	
	@:overload private function new(props : java.util.Map<Dynamic, Dynamic>, className : String) : Void;
	
	/**
	* Determines whether this mechanism has completed.
	*
	* @return true if has completed; false otherwise;
	*/
	@:overload public function isComplete() : Bool;
	
	/**
	* Retrieves the negotiated property.
	* @exception SaslException if this authentication exchange has not completed
	*/
	@:overload public function getNegotiatedProperty(propName : String) : Dynamic;
	
	@:overload @:final private static function combineMasks(_in : java.NativeArray<java.StdTypes.Int8>) : java.StdTypes.Int8;
	
	@:overload @:final private static function findPreferredMask(pref : java.StdTypes.Int8, _in : java.NativeArray<java.StdTypes.Int8>) : java.StdTypes.Int8;
	
	@:overload @:final private static function parseQop(qop : String, saveTokens : java.NativeArray<String>, ignore : Bool) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Outputs a byte array and converts
	*/
	@:overload @:final private static function traceOutput(srcClass : String, srcMethod : String, traceTag : String, output : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:final private static function traceOutput(srcClass : String, srcMethod : String, traceTag : String, output : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Returns the integer represented by  4 bytes in network byte order.
	*/
	@:overload @:final private static function networkByteOrderToInt(buf : java.NativeArray<java.StdTypes.Int8>, start : Int, count : Int) : Int;
	
	/**
	* Encodes an integer into 4 bytes in network byte order in the buffer
	* supplied.
	*/
	@:overload @:final private static function intToNetworkByteOrder(num : Int, buf : java.NativeArray<java.StdTypes.Int8>, start : Int, count : Int) : Void;
	
	private static var MAX_SEND_BUF(default, null) : String;
	
	/**
	* Logger for debug messages
	*/
	private static var logger(default, null) : java.util.logging.Logger;
	
	private static var NO_PROTECTION(default, null) : java.StdTypes.Int8;
	
	private static var INTEGRITY_ONLY_PROTECTION(default, null) : java.StdTypes.Int8;
	
	private static var PRIVACY_PROTECTION(default, null) : java.StdTypes.Int8;
	
	private static var LOW_STRENGTH(default, null) : java.StdTypes.Int8;
	
	private static var MEDIUM_STRENGTH(default, null) : java.StdTypes.Int8;
	
	private static var HIGH_STRENGTH(default, null) : java.StdTypes.Int8;
	
	
}

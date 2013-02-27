package com.sun.security.sasl;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class CramMD5Base
{
	/**
	* Base class for implementing CRAM-MD5 client and server mechanisms.
	*
	* @author Vincent Ryan
	* @author Rosanna Lee
	*/
	private var completed : Bool;
	
	private var aborted : Bool;
	
	private var pw : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function new() : Void;
	
	/**
	* Retrieves this mechanism's name.
	*
	* @return  The string "CRAM-MD5".
	*/
	@:overload public function getMechanismName() : String;
	
	/**
	* Determines whether this mechanism has completed.
	* CRAM-MD5 completes after processing one challenge from the server.
	*
	* @return true if has completed; false otherwise;
	*/
	@:overload public function isComplete() : Bool;
	
	/**
	* Unwraps the incoming buffer. CRAM-MD5 supports no security layer.
	*
	* @throws SaslException If attempt to use this method.
	*/
	@:overload public function unwrap(incoming : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Wraps the outgoing buffer. CRAM-MD5 supports no security layer.
	*
	* @throws SaslException If attempt to use this method.
	*/
	@:overload public function wrap(outgoing : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the negotiated property.
	* This method can be called only after the authentication exchange has
	* completed (i.e., when <tt>isComplete()</tt> returns true); otherwise, a
	* <tt>SaslException</tt> is thrown.
	*
	* @return value of property; only QOP is applicable to CRAM-MD5.
	* @exception IllegalStateException if this authentication exchange has not completed
	*/
	@:overload public function getNegotiatedProperty(propName : String) : Dynamic;
	
	@:overload public function dispose() : Void;
	
	@:overload private function clearPassword() : Void;
	
	@:overload private function finalize() : Void;
	
	private static var logger : java.util.logging.Logger;
	
	
}

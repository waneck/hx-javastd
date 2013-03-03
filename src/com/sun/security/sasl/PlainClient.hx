package com.sun.security.sasl;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
/**
* Implements the PLAIN SASL client mechanism.
* (<A
* HREF="http://ftp.isi.edu/in-notes/rfc2595.txt">RFC 2595</A>)
*
* @author Rosanna Lee
*/
@:internal extern class PlainClient implements javax.security.sasl.SaslClient
{
	/**
	* Retrieves this mechanism's name for to initiate the PLAIN protocol
	* exchange.
	*
	* @return  The string "PLAIN".
	*/
	@:overload @:public public function getMechanismName() : String;
	
	@:overload @:public public function hasInitialResponse() : Bool;
	
	@:overload @:public public function dispose() : Void;
	
	/**
	* Retrieves the initial response for the SASL command, which for
	* PLAIN is the concatenation of authorization ID, authentication ID
	* and password, with each component separated by the US-ASCII <NUL> byte.
	*
	* @param challengeData Ignored
	* @return A non-null byte array containing the response to be sent to the server.
	* @throws SaslException If cannot encode ids in UTF-8
	* @throw IllegalStateException if authentication already completed
	*/
	@:overload @:public public function evaluateChallenge(challengeData : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Determines whether this mechanism has completed.
	* Plain completes after returning one response.
	*
	* @return true if has completed; false otherwise;
	*/
	@:overload @:public public function isComplete() : Bool;
	
	/**
	* Unwraps the incoming buffer.
	*
	* @throws SaslException Not applicable to this mechanism.
	*/
	@:overload @:public public function unwrap(incoming : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Wraps the outgoing buffer.
	*
	* @throws SaslException Not applicable to this mechanism.
	*/
	@:overload @:public public function wrap(outgoing : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the negotiated property.
	* This method can be called only after the authentication exchange has
	* completed (i.e., when <tt>isComplete()</tt> returns true); otherwise, a
	* <tt>SaslException</tt> is thrown.
	*
	* @return value of property; only QOP is applicable to PLAIN.
	* @exception IllegalStateException if this authentication exchange
	*     has not completed
	*/
	@:overload @:public public function getNegotiatedProperty(propName : String) : Dynamic;
	
	@:overload @:protected private function finalize() : Void;
	
	
}

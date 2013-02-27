package sun.net.www.protocol.http.spnego;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class NegotiatorImpl extends sun.net.www.protocol.http.Negotiator
{
	/**
	* Constructor
	* @throws java.io.IOException If negotiator cannot be constructed
	*/
	@:overload public function new(hci : sun.net.www.protocol.http.HttpCallerInfo) : Void;
	
	/**
	* Return the first token of GSS, in SPNEGO, it's called NegTokenInit
	* @return the first token
	*/
	@:overload override public function firstToken() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Return the rest tokens of GSS, in SPNEGO, it's called NegTokenTarg
	* @param token the token received from server
	* @return the next token
	* @throws java.io.IOException if the token cannot be created successfully
	*/
	@:overload override public function nextToken(token : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
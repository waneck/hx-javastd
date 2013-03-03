package com.sun.security.ntlm;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class NTLMException extends java.security.GeneralSecurityException
{
	/**
	* If the incoming packet is invalid.
	*/
	@:public @:final @:static public static var PACKET_READ_ERROR(default, null) : Int;
	
	/**
	* If the client cannot get a domain value from the server and the
	* caller has not provided one.
	*/
	@:public @:final @:static public static var NO_DOMAIN_INFO(default, null) : Int;
	
	/**
	* If the client name is not found on server's user database.
	*/
	@:public @:final @:static public static var USER_UNKNOWN(default, null) : Int;
	
	/**
	* If authentication fails.
	*/
	@:public @:final @:static public static var AUTH_FAILED(default, null) : Int;
	
	/**
	* If an illegal version string is provided.
	*/
	@:public @:final @:static public static var BAD_VERSION(default, null) : Int;
	
	/**
	* Protocol errors.
	*/
	@:public @:final @:static public static var PROTOCOL(default, null) : Int;
	
	/**
	* Constructs an NTLMException object.
	* @param errorCode the error code, which can be retrieved by
	* the {@link #errorCode() } method.
	* @param msg the string message, which can be retrived by
	* the {@link Exception#getMessage() } method.
	*/
	@:overload @:public public function new(errorCode : Int, msg : String) : Void;
	
	/**
	* Returns the error code associated with this NTLMException.
	* @return the error code
	*/
	@:overload @:public public function errorCode() : Int;
	
	
}

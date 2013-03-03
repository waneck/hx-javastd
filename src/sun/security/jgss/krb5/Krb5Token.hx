package sun.security.jgss.krb5;
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
* This class represents a base class for all Kerberos v5 GSS-API
* tokens. It contains commonly used definitions and utilities.
*
* @author Mayank Upadhyay
*/
@:internal extern class Krb5Token extends sun.security.jgss.GSSToken
{
	/**
	* The token id defined for the token emitted by the initSecContext call
	* carrying the AP_REQ .
	*/
	@:public @:static @:final public static var AP_REQ_ID(default, null) : Int;
	
	/**
	* The token id defined for the token emitted by the acceptSecContext call
	* carrying the AP_REP .
	*/
	@:public @:static @:final public static var AP_REP_ID(default, null) : Int;
	
	/**
	* The token id defined for any token carrying a KRB-ERR message.
	*/
	@:public @:static @:final public static var ERR_ID(default, null) : Int;
	
	/**
	* The token id defined for the token emitted by the getMIC call.
	*/
	@:public @:static @:final public static var MIC_ID(default, null) : Int;
	
	/**
	* The token id defined for the token emitted by the wrap call.
	*/
	@:public @:static @:final public static var WRAP_ID(default, null) : Int;
	
	@:public @:static @:final public static var MIC_ID_v2(default, null) : Int;
	
	@:public @:static @:final public static var WRAP_ID_v2(default, null) : Int;
	
	/**
	* The object identifier corresponding to the Kerberos v5 GSS-API
	* mechanism.
	*/
	@:public @:static public static var OID : sun.security.util.ObjectIdentifier;
	
	/**
	* Returns a strign representing the token type.
	*
	* @param tokenId the token id for which a string name is desired
	* @return the String name of this token type
	*/
	@:overload @:public @:static public static function getTokenName(tokenId : Int) : String;
	
	
}

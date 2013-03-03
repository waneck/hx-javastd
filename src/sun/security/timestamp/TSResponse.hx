package sun.security.timestamp;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class TSResponse
{
	/**
	* The requested timestamp was granted.
	*/
	@:public @:static @:final public static var GRANTED(default, null) : Int;
	
	/**
	* The requested timestamp was granted with some modifications.
	*/
	@:public @:static @:final public static var GRANTED_WITH_MODS(default, null) : Int;
	
	/**
	* The requested timestamp was not granted.
	*/
	@:public @:static @:final public static var REJECTION(default, null) : Int;
	
	/**
	* The requested timestamp has not yet been processed.
	*/
	@:public @:static @:final public static var WAITING(default, null) : Int;
	
	/**
	* A warning that a certificate revocation is imminent.
	*/
	@:public @:static @:final public static var REVOCATION_WARNING(default, null) : Int;
	
	/**
	* Notification that a certificate revocation has occurred.
	*/
	@:public @:static @:final public static var REVOCATION_NOTIFICATION(default, null) : Int;
	
	/**
	* Unrecognized or unsupported algorithm identifier.
	*/
	@:public @:static @:final public static var BAD_ALG(default, null) : Int;
	
	/**
	* The requested transaction is not permitted or supported.
	*/
	@:public @:static @:final public static var BAD_REQUEST(default, null) : Int;
	
	/**
	* The data submitted has the wrong format.
	*/
	@:public @:static @:final public static var BAD_DATA_FORMAT(default, null) : Int;
	
	/**
	* The TSA's time source is not available.
	*/
	@:public @:static @:final public static var TIME_NOT_AVAILABLE(default, null) : Int;
	
	/**
	* The requested TSA policy is not supported by the TSA.
	*/
	@:public @:static @:final public static var UNACCEPTED_POLICY(default, null) : Int;
	
	/**
	* The requested extension is not supported by the TSA.
	*/
	@:public @:static @:final public static var UNACCEPTED_EXTENSION(default, null) : Int;
	
	/**
	* The additional information requested could not be understood or is not
	* available.
	*/
	@:public @:static @:final public static var ADD_INFO_NOT_AVAILABLE(default, null) : Int;
	
	/**
	* The request cannot be handled due to system failure.
	*/
	@:public @:static @:final public static var SYSTEM_FAILURE(default, null) : Int;
	
	/**
	* Retrieve the status code returned by the TSA.
	*/
	@:overload @:public public function getStatusCode() : Int;
	
	/**
	* Retrieve the status messages returned by the TSA.
	*
	* @return If null then no status messages were received.
	*/
	@:overload @:public public function getStatusMessages() : java.NativeArray<String>;
	
	/**
	* Retrieve the failure code returned by the TSA.
	*
	* @return If -1 then no failure code was received.
	*/
	@:overload @:public public function getFailureCode() : Int;
	
	@:overload @:public public function getStatusCodeAsText() : String;
	
	@:overload @:public public function getFailureCodeAsText() : String;
	
	/**
	* Retrieve the timestamp token returned by the TSA.
	*
	* @return If null then no token was received.
	*/
	@:overload @:public public function getToken() : sun.security.pkcs.PKCS7;
	
	/**
	* Retrieve the ASN.1 BER encoded timestamp token returned by the TSA.
	*
	* @return If null then no token was received.
	*/
	@:overload @:public public function getEncodedToken() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('sun$security$timestamp$TSResponse$TimestampException') @:internal extern class TSResponse_TimestampException extends java.io.IOException
{
	
}

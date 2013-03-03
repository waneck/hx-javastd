package org.ietf.jgss;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
* This exception is thrown whenever a GSS-API error occurs, including
* any mechanism specific error.  It may contain both the major and the
* minor GSS-API status codes.  Major error codes are those defined at the
* GSS-API level in this class. Minor error codes are mechanism specific
* error codes that can provide additional information. The underlying
* mechanism implementation is responsible for setting appropriate minor
* status codes when throwing this exception.  Aside from delivering the
* numeric error codes to the caller, this class performs the mapping from
* their numeric values to textual representations. <p>
*
* @author Mayank Upadhyay
* @since 1.4
*/
@:require(java4) extern class GSSException extends java.lang.Exception
{
	/**
	* Channel bindings mismatch.
	*/
	@:public @:static @:final public static var BAD_BINDINGS(default, null) : Int;
	
	/**
	* Unsupported mechanism requested.
	*/
	@:public @:static @:final public static var BAD_MECH(default, null) : Int;
	
	/**
	* Invalid name provided.
	*/
	@:public @:static @:final public static var BAD_NAME(default, null) : Int;
	
	/**
	* Name of unsupported type provided.
	*/
	@:public @:static @:final public static var BAD_NAMETYPE(default, null) : Int;
	
	/*
	* This is meant to be thrown by display_status which displays
	* major/minor status when an incorrect status type is passed in to it!
	*/
	@:public @:static @:final public static var BAD_STATUS(default, null) : Int;
	
	/**
	* Token had invalid integrity check.
	*/
	@:public @:static @:final public static var BAD_MIC(default, null) : Int;
	
	/**
	* Security context expired.
	*/
	@:public @:static @:final public static var CONTEXT_EXPIRED(default, null) : Int;
	
	/**
	* Expired credentials.
	*/
	@:public @:static @:final public static var CREDENTIALS_EXPIRED(default, null) : Int;
	
	/**
	* Defective credentials.
	*
	*/
	@:public @:static @:final public static var DEFECTIVE_CREDENTIAL(default, null) : Int;
	
	/**
	* Defective token.
	*
	*/
	@:public @:static @:final public static var DEFECTIVE_TOKEN(default, null) : Int;
	
	/**
	* General failure, unspecified at GSS-API level.
	*/
	@:public @:static @:final public static var FAILURE(default, null) : Int;
	
	/**
	* Invalid security context.
	*/
	@:public @:static @:final public static var NO_CONTEXT(default, null) : Int;
	
	/**
	* Invalid credentials.
	*/
	@:public @:static @:final public static var NO_CRED(default, null) : Int;
	
	/**
	* Unsupported QOP value.
	*/
	@:public @:static @:final public static var BAD_QOP(default, null) : Int;
	
	/**
	* Operation unauthorized.
	*/
	@:public @:static @:final public static var UNAUTHORIZED(default, null) : Int;
	
	/**
	* Operation unavailable.
	*/
	@:public @:static @:final public static var UNAVAILABLE(default, null) : Int;
	
	/**
	* Duplicate credential element requested.
	*/
	@:public @:static @:final public static var DUPLICATE_ELEMENT(default, null) : Int;
	
	/**
	* Name contains multi-mechanism elements.
	*/
	@:public @:static @:final public static var NAME_NOT_MN(default, null) : Int;
	
	/**
	* The token was a duplicate of an earlier token.
	* This is a fatal error code that may occur during
	* context establishment.  It is not used to indicate
	* supplementary status values. The MessageProp object is
	* used for that purpose.
	*/
	@:public @:static @:final public static var DUPLICATE_TOKEN(default, null) : Int;
	
	/**
	* The token's validity period has expired.  This is a
	* fatal error code that may occur during context establishment.
	* It is not used to indicate supplementary status values.
	* The MessageProp object is used for that purpose.
	*/
	@:public @:static @:final public static var OLD_TOKEN(default, null) : Int;
	
	/**
	* A later token has already been processed.  This is a
	* fatal error code that may occur during context establishment.
	* It is not used to indicate supplementary status values.
	* The MessageProp object is used for that purpose.
	*/
	@:public @:static @:final public static var UNSEQ_TOKEN(default, null) : Int;
	
	/**
	* An expected per-message token was not received.  This is a
	* fatal error code that may occur during context establishment.
	* It is not used to indicate supplementary status values.
	* The MessageProp object is used for that purpose.
	*/
	@:public @:static @:final public static var GAP_TOKEN(default, null) : Int;
	
	/**
	*  Creates a GSSException object with a specified major code.
	*
	* @param majorCode the The GSS error code for the problem causing this
	* exception to be thrown.
	*/
	@:overload @:public public function new(majorCode : Int) : Void;
	
	/**
	* Creates a GSSException object with the specified major code, minor
	* code, and minor code textual explanation.  This constructor is to be
	* used when the exception is originating from the underlying mechanism
	* level. It allows the setting of both the GSS code and the mechanism
	* code.
	*
	* @param majorCode the GSS error code for the problem causing this
	* exception to be thrown.
	* @param minorCode the mechanism level error code for the problem
	* causing this exception to be thrown.
	* @param minorString the textual explanation of the mechanism error
	* code.
	*/
	@:overload @:public public function new(majorCode : Int, minorCode : Int, minorString : String) : Void;
	
	/**
	* Returns the GSS-API level major error code for the problem causing
	* this exception to be thrown. Major error codes are
	* defined at the mechanism independent GSS-API level in this
	* class. Mechanism specific error codes that might provide more
	* information aer set as the minor error code.
	*
	* @return int the GSS-API level major error code causing this exception
	* @see #getMajorString
	* @see #getMinor
	* @see #getMinorString
	*/
	@:overload @:public public function getMajor() : Int;
	
	/**
	* Returns the mechanism level error code for the problem causing this
	* exception to be thrown. The minor code is set by the underlying
	* mechanism.
	*
	* @return int the mechanism error code; 0 indicates that it has not
	* been set.
	* @see #getMinorString
	* @see #setMinor
	*/
	@:overload @:public public function getMinor() : Int;
	
	/**
	* Returns a string explaining the GSS-API level major error code in
	* this exception.
	*
	* @return String explanation string for the major error code
	* @see #getMajor
	* @see #toString
	*/
	@:overload @:public public function getMajorString() : String;
	
	/**
	* Returns a string explaining the mechanism specific error code.
	* If the minor status code is 0, then no mechanism level error details
	* will be available.
	*
	* @return String a textual explanation of mechanism error code
	* @see #getMinor
	* @see #getMajorString
	* @see #toString
	*/
	@:overload @:public public function getMinorString() : String;
	
	/**
	* Used by the exception thrower to set the mechanism
	* level minor error code and its string explanation.  This is used by
	* mechanism providers to indicate error details.
	*
	* @param minorCode the mechanism specific error code
	* @param message textual explanation of the mechanism error code
	* @see #getMinor
	*/
	@:overload @:public public function setMinor(minorCode : Int, message : String) : Void;
	
	/**
	* Returns a textual representation of both the major and the minor
	* status codes.
	*
	* @return a String with the error descriptions
	*/
	@:overload @:public override public function toString() : String;
	
	/**
	* Returns a textual representation of both the major and the minor
	* status codes.
	*
	* @return a String with the error descriptions
	*/
	@:overload @:public override public function getMessage() : String;
	
	
}

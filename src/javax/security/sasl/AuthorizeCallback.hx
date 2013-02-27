package javax.security.sasl;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class AuthorizeCallback implements javax.security.auth.callback.Callback implements java.io.Serializable
{
	/**
	* Constructs an instance of <tt>AuthorizeCallback</tt>.
	*
	* @param authnID   The (authenticated) authentication id.
	* @param authzID   The authorization id.
	*/
	@:overload public function new(authnID : String, authzID : String) : Void;
	
	/**
	* Returns the authentication id to check.
	* @return The authentication id to check.
	*/
	@:overload public function getAuthenticationID() : String;
	
	/**
	* Returns the authorization id to check.
	* @return The authentication id to check.
	*/
	@:overload public function getAuthorizationID() : String;
	
	/**
	* Determines whether the authentication id is allowed to
	* act on behalf of the authorization id.
	*
	* @return <tt>true</tt> if authorization is allowed; <tt>false</tt> otherwise
	* @see #setAuthorized(boolean)
	* @see #getAuthorizedID()
	*/
	@:overload public function isAuthorized() : Bool;
	
	/**
	* Sets whether the authorization is allowed.
	* @param ok <tt>true</tt> if authorization is allowed; <tt>false</tt> otherwise
	* @see #isAuthorized
	* @see #setAuthorizedID(java.lang.String)
	*/
	@:overload public function setAuthorized(ok : Bool) : Void;
	
	/**
	* Returns the id of the authorized user.
	* @return The id of the authorized user. <tt>null</tt> means the
	* authorization failed.
	* @see #setAuthorized(boolean)
	* @see #setAuthorizedID(java.lang.String)
	*/
	@:overload public function getAuthorizedID() : String;
	
	/**
	* Sets the id of the authorized entity. Called by handler only when the id
	* is different from getAuthorizationID(). For example, the id
	* might need to be canonicalized for the environment in which it
	* will be used.
	* @param id The id of the authorized user.
	* @see #setAuthorized(boolean)
	* @see #getAuthorizedID
	*/
	@:overload public function setAuthorizedID(id : String) : Void;
	
	
}

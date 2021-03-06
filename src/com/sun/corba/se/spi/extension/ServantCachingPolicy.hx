package com.sun.corba.se.spi.extension;
/*
* Copyright (c) 2001, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ServantCachingPolicy extends org.omg.CORBA.LocalObject implements org.omg.CORBA.Policy
{
	/** Do not cache servants in the ClientRequestDispatcher.  This will
	* always support the full POA semantics, including changing the
	* servant that handles requests on a particular objref.
	*/
	@:public @:static @:final public static var NO_SERVANT_CACHING(default, null) : Int;
	
	/** Perform servant caching, preserving POA current and POA destroy semantics.
	* We will use this as the new default, as the app server is making heavier use
	* now of POA facilities.
	*/
	@:public @:static @:final public static var FULL_SEMANTICS(default, null) : Int;
	
	/** Perform servant caching, preservent only POA current semantics.
	* At least this level is required in order to support selection of ObjectCopiers
	* for co-located RMI-IIOP calls, as the current copier is stored in
	* OAInvocationInfo, which must be present on the stack inside the call.
	*/
	@:public @:static @:final public static var INFO_ONLY_SEMANTICS(default, null) : Int;
	
	/** Perform servant caching, not preserving POA current or POA destroy semantics.
	*/
	@:public @:static @:final public static var MINIMAL_SEMANTICS(default, null) : Int;
	
	@:overload @:public public function typeToName() : String;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function getType() : Int;
	
	/** Return the default servant caching policy.
	*/
	@:overload @:public @:synchronized @:static public static function getPolicy() : com.sun.corba.se.spi.extension.ServantCachingPolicy;
	
	@:overload @:public @:synchronized @:static public static function getFullPolicy() : com.sun.corba.se.spi.extension.ServantCachingPolicy;
	
	@:overload @:public @:synchronized @:static public static function getInfoOnlyPolicy() : com.sun.corba.se.spi.extension.ServantCachingPolicy;
	
	@:overload @:public @:synchronized @:static public static function getMinimalPolicy() : com.sun.corba.se.spi.extension.ServantCachingPolicy;
	
	@:overload @:public public function policy_type() : Int;
	
	@:overload @:public public function copy() : org.omg.CORBA.Policy;
	
	@:overload @:public public function destroy() : Void;
	
	
}

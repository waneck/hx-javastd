package com.sun.jndi.ldap;
/*
* Copyright (c) 1999, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class LdapURL extends com.sun.jndi.toolkit.url.Uri
{
	/**
	* Creates an LdapURL object from an LDAP URL string.
	*/
	@:overload @:public public function new(url : String) : Void;
	
	/**
	* Returns true if the URL is an LDAPS URL.
	*/
	@:overload @:public public function useSsl() : Bool;
	
	/**
	* Returns the LDAP URL's distinguished name.
	*/
	@:overload @:public public function getDN() : String;
	
	/**
	* Returns the LDAP URL's attributes.
	*/
	@:overload @:public public function getAttributes() : String;
	
	/**
	* Returns the LDAP URL's scope.
	*/
	@:overload @:public public function getScope() : String;
	
	/**
	* Returns the LDAP URL's filter.
	*/
	@:overload @:public public function getFilter() : String;
	
	/**
	* Returns the LDAP URL's extensions.
	*/
	@:overload @:public public function getExtensions() : String;
	
	/**
	* Given a space-separated list of LDAP URLs, returns an array of strings.
	*/
	@:overload @:public @:static public static function fromList(urlList : String) : java.NativeArray<String>;
	
	/**
	* Derermines whether an LDAP URL has query components.
	*/
	@:overload @:public @:static public static function hasQueryComponents(url : String) : Bool;
	
	
}

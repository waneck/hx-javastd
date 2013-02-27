package java.net;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class InMemoryCookieStore implements java.net.CookieStore
{
	/**
	* The default ctor
	*/
	@:overload public function new() : Void;
	
	/**
	* Add one cookie into cookie store.
	*/
	@:overload public function add(uri : java.net.URI, cookie : java.net.HttpCookie) : Void;
	
	/**
	* Get all cookies, which:
	*  1) given uri domain-matches with, or, associated with
	*     given uri when added to the cookie store.
	*  3) not expired.
	* See RFC 2965 sec. 3.3.4 for more detail.
	*/
	@:overload public function get(uri : java.net.URI) : java.util.List<java.net.HttpCookie>;
	
	/**
	* Get all cookies in cookie store, except those have expired
	*/
	@:overload public function getCookies() : java.util.List<java.net.HttpCookie>;
	
	/**
	* Get all URIs, which are associated with at least one cookie
	* of this cookie store.
	*/
	@:overload public function getURIs() : java.util.List<java.net.URI>;
	
	/**
	* Remove a cookie from store
	*/
	@:overload public function remove(uri : java.net.URI, ck : java.net.HttpCookie) : Bool;
	
	/**
	* Remove all cookies in this cookie store.
	*/
	@:overload public function removeAll() : Bool;
	
	
}

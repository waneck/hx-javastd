package java.net;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class CookieHandler
{
	/**
	* Gets the system-wide cookie handler.
	*
	* @return the system-wide cookie handler; A null return means
	*        there is no system-wide cookie handler currently set.
	* @throws SecurityException
	*       If a security manager has been installed and it denies
	* {@link NetPermission}<tt>("getCookieHandler")</tt>
	* @see #setDefault(CookieHandler)
	*/
	@:overload @:public @:synchronized @:static public static function getDefault() : java.net.CookieHandler;
	
	/**
	* Sets (or unsets) the system-wide cookie handler.
	*
	* Note: non-standard http protocol handlers may ignore this setting.
	*
	* @param cHandler The HTTP cookie handler, or
	*       <code>null</code> to unset.
	* @throws SecurityException
	*       If a security manager has been installed and it denies
	* {@link NetPermission}<tt>("setCookieHandler")</tt>
	* @see #getDefault()
	*/
	@:overload @:public @:synchronized @:static public static function setDefault(cHandler : java.net.CookieHandler) : Void;
	
	/**
	* Gets all the applicable cookies from a cookie cache for the
	* specified uri in the request header.
	*
	* <P>The {@code URI} passed as an argument specifies the intended use for
	* the cookies. In particular the scheme should reflect whether the cookies
	* will be sent over http, https or used in another context like javascript.
	* The host part should reflect either the destination of the cookies or
	* their origin in the case of javascript.</P>
	* <P>It is up to the implementation to take into account the {@code URI} and
	* the cookies attributes and security settings to determine which ones
	* should be returned.</P>
	*
	* <P>HTTP protocol implementers should make sure that this method is
	* called after all request headers related to choosing cookies
	* are added, and before the request is sent.</P>
	*
	* @param uri a <code>URI</code> representing the intended use for the
	*            cookies
	* @param requestHeaders - a Map from request header
	*            field names to lists of field values representing
	*            the current request headers
	* @return an immutable map from state management headers, with
	*            field names "Cookie" or "Cookie2" to a list of
	*            cookies containing state information
	*
	* @throws IOException if an I/O error occurs
	* @throws IllegalArgumentException if either argument is null
	* @see #put(URI, Map)
	*/
	@:overload @:public @:abstract public function get(uri : java.net.URI, requestHeaders : java.util.Map<String, java.util.List<String>>) : java.util.Map<String, java.util.List<String>>;
	
	/**
	* Sets all the applicable cookies, examples are response header
	* fields that are named Set-Cookie2, present in the response
	* headers into a cookie cache.
	*
	* @param uri a <code>URI</code> where the cookies come from
	* @param responseHeaders an immutable map from field names to
	*            lists of field values representing the response
	*            header fields returned
	* @throws  IOException if an I/O error occurs
	* @throws  IllegalArgumentException if either argument is null
	* @see #get(URI, Map)
	*/
	@:overload @:public @:abstract public function put(uri : java.net.URI, responseHeaders : java.util.Map<String, java.util.List<String>>) : Void;
	
	
}

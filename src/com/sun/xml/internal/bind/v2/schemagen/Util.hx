package com.sun.xml.internal.bind.v2.schemagen;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
* TODO: JAX-WS dependes on this class - consider moving it somewhere more stable, Notify JAX-WS before modifying anything...
*
* Other miscellaneous utility methods.
*
* @author
*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
*/
extern class Util
{
	/**
	* Escape any characters that would cause the single arg constructor
	* of java.net.URI to complain about illegal chars.
	*
	* @param s source string to be escaped
	*/
	@:overload @:public @:static public static function escapeURI(s : String) : String;
	
	/**
	* Calculate the parent URI path of the given URI path.
	*
	* @param uriPath the uriPath (as returned by java.net.URI#getPath()
	* @return the parent URI path of the given URI path
	*/
	@:overload @:public @:static public static function getParentUriPath(uriPath : String) : String;
	
	/**
	* Calculate the normalized form of the given uriPath.
	*
	* For example:
	*    /a/b/c/ -> /a/b/c/
	*    /a/b/c  -> /a/b/
	*    /a/     -> /a/
	*    /a      -> /
	*
	* @param uriPath path of a URI (as returned by java.net.URI#getPath()
	* @return the normalized uri path
	*/
	@:overload @:public @:static public static function normalizeUriPath(uriPath : String) : String;
	
	/**
	* determine if two Strings are equal ignoring case allowing null values
	*
	* @param s string 1
	* @param t string 2
	* @return true iff the given strings are equal ignoring case, false if they aren't
	* equal or either of them are null.
	*/
	@:overload @:public @:static public static function equalsIgnoreCase(s : String, t : String) : Bool;
	
	/**
	* determine if two Strings are iqual allowing null values
	*
	* @param s string 1
	* @param t string 2
	* @return true iff the strings are equal, false if they aren't equal or either of
	* them are null.
	*/
	@:overload @:public @:static public static function equal(s : String, t : String) : Bool;
	
	
}

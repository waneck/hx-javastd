package com.sun.xml.internal.ws.api;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class EndpointAddress
{
	@:overload @:public public function new(uri : java.net.URI) : Void;
	
	/**
	*
	* @see #create(String)
	*/
	@:overload @:public public function new(url : String) : Void;
	
	/**
	* Creates a new {@link EndpointAddress} with a reasonably
	* generic error handling.
	*/
	@:overload @:public @:static public static function create(url : String) : com.sun.xml.internal.ws.api.EndpointAddress;
	
	/**
	* Returns an URL of this endpoint adress.
	*
	* @return
	*      null if this endpoint address doesn't have a registered {@link URLStreamHandler}.
	*/
	@:overload @:public public function getURL() : java.net.URL;
	
	/**
	* Returns an URI of the endpoint address.
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public public function getURI() : java.net.URI;
	
	/**
	* Tries to open {@link URLConnection} for this endpoint.
	*
	* <p>
	* This is possible only when an endpoint address has
	* the corresponding {@link URLStreamHandler}.
	*
	* @throws IOException
	*      if {@link URL#openConnection()} reports an error.
	* @throws AssertionError
	*      if this endpoint doesn't have an associated URL.
	*      if the code is written correctly this shall never happen.
	*/
	@:overload @:public public function openConnection() : java.net.URLConnection;
	
	@:overload @:public public function toString() : String;
	
	
}

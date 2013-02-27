package sun.net.www.http;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class KeepAliveCache extends java.util.HashMap<KeepAliveKey, ClientVector> implements java.lang.Runnable
{
	/**
	* Constructor
	*/
	@:overload public function new() : Void;
	
	/**
	* Register this URL and HttpClient (that supports keep-alive) with the cache
	* @param url  The URL contains info about the host and port
	* @param http The HttpClient to be cached
	*/
	@:overload @:synchronized public function put(url : java.net.URL, obj : Dynamic, http : sun.net.www.http.HttpClient) : Void;
	
	/* remove an obsolete HttpClient from its VectorCache */
	@:overload @:synchronized public function remove(h : sun.net.www.http.HttpClient, obj : Dynamic) : Void;
	
	/**
	* Check to see if this URL has a cached HttpClient
	*/
	@:overload @:synchronized public function get(url : java.net.URL, obj : Dynamic) : sun.net.www.http.HttpClient;
	
	/* Sleeps for an alloted timeout, then checks for timed out connections.
	* Errs on the side of caution (leave connections idle for a relatively
	* short time).
	*/
	@:overload public function run() : Void;
	
	
}
@:internal extern class ClientVector extends java.util.Stack<KeepAliveEntry>
{
	
}
@:internal extern class KeepAliveKey
{
	/**
	* Constructor
	*
	* @param url the URL containing the protocol, host and port information
	*/
	@:overload public function new(url : java.net.URL, obj : Dynamic) : Void;
	
	/**
	* Determine whether or not two objects of this type are equal
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* The hashCode() for this object is the string hashCode() of
	* concatenation of the protocol, host name and port.
	*/
	@:overload public function hashCode() : Int;
	
	
}
@:internal extern class KeepAliveEntry
{
	
}

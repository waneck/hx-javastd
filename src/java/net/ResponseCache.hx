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
extern class ResponseCache
{
	/**
	* Gets the system-wide response cache.
	*
	* @throws  SecurityException
	*          If a security manager has been installed and it denies
	* {@link NetPermission}<tt>("getResponseCache")</tt>
	*
	* @see #setDefault(ResponseCache)
	* @return the system-wide <code>ResponseCache</code>
	* @since 1.5
	*/
	@:require(java5) @:overload @:synchronized public static function getDefault() : java.net.ResponseCache;
	
	/**
	* Sets (or unsets) the system-wide cache.
	*
	* Note: non-standard procotol handlers may ignore this setting.
	*
	* @param responseCache The response cache, or
	*          <code>null</code> to unset the cache.
	*
	* @throws  SecurityException
	*          If a security manager has been installed and it denies
	* {@link NetPermission}<tt>("setResponseCache")</tt>
	*
	* @see #getDefault()
	* @since 1.5
	*/
	@:require(java5) @:overload @:synchronized public static function setDefault(responseCache : java.net.ResponseCache) : Void;
	
	/**
	* Retrieve the cached response based on the requesting uri,
	* request method and request headers. Typically this method is
	* called by the protocol handler before it sends out the request
	* to get the network resource. If a cached response is returned,
	* that resource is used instead.
	*
	* @param uri a <code>URI</code> used to reference the requested
	*            network resource
	* @param rqstMethod a <code>String</code> representing the request
	*            method
	* @param rqstHeaders - a Map from request header
	*            field names to lists of field values representing
	*            the current request headers
	* @return a <code>CacheResponse</code> instance if available
	*          from cache, or null otherwise
	* @throws  IOException if an I/O error occurs
	* @throws  IllegalArgumentException if any one of the arguments is null
	*
	* @see     java.net.URLConnection#setUseCaches(boolean)
	* @see     java.net.URLConnection#getUseCaches()
	* @see     java.net.URLConnection#setDefaultUseCaches(boolean)
	* @see     java.net.URLConnection#getDefaultUseCaches()
	*/
	@:overload @:abstract public function get(uri : java.net.URI, rqstMethod : String, rqstHeaders : java.util.Map<String, java.util.List<String>>) : java.net.CacheResponse;
	
	/**
	* The protocol handler calls this method after a resource has
	* been retrieved, and the ResponseCache must decide whether or
	* not to store the resource in its cache. If the resource is to
	* be cached, then put() must return a CacheRequest object which
	* contains an OutputStream that the protocol handler will
	* use to write the resource into the cache. If the resource is
	* not to be cached, then put must return null.
	*
	* @param uri a <code>URI</code> used to reference the requested
	*            network resource
	* @param conn - a URLConnection instance that is used to fetch
	*            the response to be cached
	* @return a <code>CacheRequest</code> for recording the
	*            response to be cached. Null return indicates that
	*            the caller does not intend to cache the response.
	* @throws IOException if an I/O error occurs
	* @throws IllegalArgumentException if any one of the arguments is
	*            null
	*/
	@:overload @:abstract public function put(uri : java.net.URI, conn : java.net.URLConnection) : java.net.CacheRequest;
	
	
}

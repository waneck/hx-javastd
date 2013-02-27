package sun.security.ssl;
/*
* Copyright (c) 1999, 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SSLSessionContextImpl implements javax.net.ssl.SSLSessionContext
{
	/**
	* Returns the <code>SSLSession</code> bound to the specified session id.
	*/
	@:overload public function getSession(sessionId : java.NativeArray<java.StdTypes.Int8>) : javax.net.ssl.SSLSession;
	
	/**
	* Returns an enumeration of the active SSL sessions.
	*/
	@:overload public function getIds() : java.util.Enumeration<java.NativeArray<java.StdTypes.Int8>>;
	
	/**
	* Sets the timeout limit for cached <code>SSLSession</code> objects
	*
	* Note that after reset the timeout, the cached session before
	* should be timed within the shorter one of the old timeout and the
	* new timeout.
	*/
	@:overload public function setSessionTimeout(seconds : Int) : Void;
	
	/**
	* Gets the timeout limit for cached <code>SSLSession</code> objects
	*/
	@:overload public function getSessionTimeout() : Int;
	
	/**
	* Sets the size of the cache used for storing
	* <code>SSLSession</code> objects.
	*/
	@:overload public function setSessionCacheSize(size : Int) : Void;
	
	/**
	* Gets the size of the cache used for storing
	* <code>SSLSession</code> objects.
	*/
	@:overload public function getSessionCacheSize() : Int;
	
	
}
@:native('sun$security$ssl$SSLSessionContextImpl$SessionCacheVisitor') @:internal extern class SSLSessionContextImpl_SessionCacheVisitor implements sun.security.util.Cache.Cache_CacheVisitor
{
	@:overload public function visit(map : java.util.Map<Dynamic, Dynamic>) : Void;
	
	@:overload public function getSessionIds() : java.util.Enumeration<java.NativeArray<java.StdTypes.Int8>>;
	
	
}

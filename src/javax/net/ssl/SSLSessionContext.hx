package javax.net.ssl;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern interface SSLSessionContext
{
	/**
	* Returns the <code>SSLSession</code> bound to the specified session id.
	*
	* @param sessionId the Session identifier
	* @return the <code>SSLSession</code> or null if
	* the specified session id does not refer to a valid SSLSession.
	*
	* @throws NullPointerException if <code>sessionId</code> is null.
	*/
	@:overload @:public public function getSession(sessionId : java.NativeArray<java.StdTypes.Int8>) : javax.net.ssl.SSLSession;
	
	/**
	* Returns an Enumeration of all session id's grouped under this
	* <code>SSLSessionContext</code>.
	*
	* @return an enumeration of all the Session id's
	*/
	@:overload @:public public function getIds() : java.util.Enumeration<java.NativeArray<java.StdTypes.Int8>>;
	
	/**
	* Sets the timeout limit for <code>SSLSession</code> objects grouped
	* under this <code>SSLSessionContext</code>.
	* <p>
	* If the timeout limit is set to 't' seconds, a session exceeds the
	* timeout limit 't' seconds after its creation time.
	* When the timeout limit is exceeded for a session, the
	* <code>SSLSession</code> object is invalidated and future connections
	* cannot resume or rejoin the session.
	* A check for sessions exceeding the timeout is made immediately whenever
	* the timeout limit is changed for this <code>SSLSessionContext</code>.
	*
	* @param seconds the new session timeout limit in seconds; zero means
	*          there is no limit.
	*
	* @exception IllegalArgumentException if the timeout specified is < 0.
	* @see #getSessionTimeout
	*/
	@:overload @:public public function setSessionTimeout(seconds : Int) : Void;
	
	/**
	* Returns the timeout limit of <code>SSLSession</code> objects grouped
	* under this <code>SSLSessionContext</code>.
	* <p>
	* If the timeout limit is set to 't' seconds, a session exceeds the
	* timeout limit 't' seconds after its creation time.
	* When the timeout limit is exceeded for a session, the
	* <code>SSLSession</code> object is invalidated and future connections
	* cannot resume or rejoin the session.
	* A check for sessions exceeding the timeout limit is made immediately
	* whenever the timeout limit is changed for this
	* <code>SSLSessionContext</code>.
	*
	* @return the session timeout limit in seconds; zero means there is no
	* limit.
	* @see #setSessionTimeout
	*/
	@:overload @:public public function getSessionTimeout() : Int;
	
	/**
	* Sets the size of the cache used for storing
	* <code>SSLSession</code> objects grouped under this
	* <code>SSLSessionContext</code>.
	*
	* @param size the new session cache size limit; zero means there is no
	* limit.
	* @exception IllegalArgumentException if the specified size is < 0.
	* @see #getSessionCacheSize
	*/
	@:overload @:public public function setSessionCacheSize(size : Int) : Void;
	
	/**
	* Returns the size of the cache used for storing
	* <code>SSLSession</code> objects grouped under this
	* <code>SSLSessionContext</code>.
	*
	* @return size of the session cache; zero means there is no size limit.
	* @see #setSessionCacheSize
	*/
	@:overload @:public public function getSessionCacheSize() : Int;
	
	
}

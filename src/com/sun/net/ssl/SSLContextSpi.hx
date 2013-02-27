package com.sun.net.ssl;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
/*
* NOTE:  this file was copied from javax.net.ssl.SSLContextSpi
*/
/**
* This class defines the <i>Service Provider Interface</i> (<b>SPI</b>)
* for the <code>SSLContext</code> class.
*
* <p> All the abstract methods in this class must be implemented by each
* cryptographic service provider who wishes to supply the implementation
* of a particular SSL context.
*
* @deprecated As of JDK 1.4, this implementation-specific class was
*      replaced by {@link javax.net.ssl.SSLContextSpi}.
*/
extern class SSLContextSpi
{
	/**
	* Initializes this context.
	*
	* @param km the sources of authentication keys
	* @param tm the sources of peer authentication trust decisions
	* @param random the source of randomness for this generator
	*/
	@:overload @:abstract private function engineInit(ah : java.NativeArray<javax.net.ssl.KeyManager>, th : java.NativeArray<javax.net.ssl.TrustManager>, sr : java.security.SecureRandom) : Void;
	
	/**
	* Returns a <code>SocketFactory</code> object for this
	* context.
	*
	* @return the factory
	*/
	@:overload @:abstract private function engineGetSocketFactory() : javax.net.ssl.SSLSocketFactory;
	
	/**
	* Returns a <code>ServerSocketFactory</code> object for
	* this context.
	*
	* @return the factory
	*/
	@:overload @:abstract private function engineGetServerSocketFactory() : javax.net.ssl.SSLServerSocketFactory;
	
	
}
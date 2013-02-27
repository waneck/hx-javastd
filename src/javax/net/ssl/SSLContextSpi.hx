package javax.net.ssl;
/*
* Copyright (c) 1999, 2005, Oracle and/or its affiliates. All rights reserved.
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
* This class defines the <i>Service Provider Interface</i> (<b>SPI</b>)
* for the <code>SSLContext</code> class.
*
* <p> All the abstract methods in this class must be implemented by each
* cryptographic service provider who wishes to supply the implementation
* of a particular SSL context.
*
* @since 1.4
* @see SSLContext
*/
@:require(java4) extern class SSLContextSpi
{
	/**
	* Initializes this context.
	*
	* @param km the sources of authentication keys
	* @param tm the sources of peer authentication trust decisions
	* @param sr the source of randomness
	* @throws KeyManagementException if this operation fails
	* @see SSLContext#init(KeyManager [], TrustManager [], SecureRandom)
	*/
	@:overload @:abstract private function engineInit(km : java.NativeArray<javax.net.ssl.KeyManager>, tm : java.NativeArray<javax.net.ssl.TrustManager>, sr : java.security.SecureRandom) : Void;
	
	/**
	* Returns a <code>SocketFactory</code> object for this
	* context.
	*
	* @return the <code>SocketFactory</code> object
	* @throws IllegalStateException if the SSLContextImpl requires
	*         initialization and the <code>engineInit()</code>
	*         has not been called
	* @see javax.net.ssl.SSLContext#getSocketFactory()
	*/
	@:overload @:abstract private function engineGetSocketFactory() : javax.net.ssl.SSLSocketFactory;
	
	/**
	* Returns a <code>ServerSocketFactory</code> object for
	* this context.
	*
	* @return the <code>ServerSocketFactory</code> object
	* @throws IllegalStateException if the SSLContextImpl requires
	*         initialization and the <code>engineInit()</code>
	*         has not been called
	* @see javax.net.ssl.SSLContext#getServerSocketFactory()
	*/
	@:overload @:abstract private function engineGetServerSocketFactory() : javax.net.ssl.SSLServerSocketFactory;
	
	/**
	* Creates a new <code>SSLEngine</code> using this context.
	* <P>
	* Applications using this factory method are providing no hints
	* for an internal session reuse strategy. If hints are desired,
	* {@link #engineCreateSSLEngine(String, int)} should be used
	* instead.
	* <P>
	* Some cipher suites (such as Kerberos) require remote hostname
	* information, in which case this factory method should not be used.
	*
	* @return  the <code>SSLEngine</code> Object
	* @throws IllegalStateException if the SSLContextImpl requires
	*         initialization and the <code>engineInit()</code>
	*         has not been called
	*
	* @see     SSLContext#createSSLEngine()
	*
	* @since   1.5
	*/
	@:require(java5) @:overload @:abstract private function engineCreateSSLEngine() : javax.net.ssl.SSLEngine;
	
	/**
	* Creates a <code>SSLEngine</code> using this context.
	* <P>
	* Applications using this factory method are providing hints
	* for an internal session reuse strategy.
	* <P>
	* Some cipher suites (such as Kerberos) require remote hostname
	* information, in which case peerHost needs to be specified.
	*
	* @param host the non-authoritative name of the host
	* @param port the non-authoritative port
	* @return  the <code>SSLEngine</code> Object
	* @throws IllegalStateException if the SSLContextImpl requires
	*         initialization and the <code>engineInit()</code>
	*         has not been called
	*
	* @see     SSLContext#createSSLEngine(String, int)
	*
	* @since   1.5
	*/
	@:require(java5) @:overload @:abstract private function engineCreateSSLEngine(host : String, port : Int) : javax.net.ssl.SSLEngine;
	
	/**
	* Returns a server <code>SSLSessionContext</code> object for
	* this context.
	*
	* @return the <code>SSLSessionContext</code> object
	* @see javax.net.ssl.SSLContext#getServerSessionContext()
	*/
	@:overload @:abstract private function engineGetServerSessionContext() : javax.net.ssl.SSLSessionContext;
	
	/**
	* Returns a client <code>SSLSessionContext</code> object for
	* this context.
	*
	* @return the <code>SSLSessionContext</code> object
	* @see javax.net.ssl.SSLContext#getClientSessionContext()
	*/
	@:overload @:abstract private function engineGetClientSessionContext() : javax.net.ssl.SSLSessionContext;
	
	/**
	* Returns a copy of the SSLParameters indicating the default
	* settings for this SSL context.
	*
	* <p>The parameters will always have the ciphersuite and protocols
	* arrays set to non-null values.
	*
	* <p>The default implementation obtains the parameters from an
	* SSLSocket created by calling the
	* {@linkplain javax.net.SocketFactory#createSocket
	* SocketFactory.createSocket()} method of this context's SocketFactory.
	*
	* @return a copy of the SSLParameters object with the default settings
	* @throws UnsupportedOperationException if the default SSL parameters
	*   could not be obtained.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload private function engineGetDefaultSSLParameters() : javax.net.ssl.SSLParameters;
	
	/**
	* Returns a copy of the SSLParameters indicating the maximum supported
	* settings for this SSL context.
	*
	* <p>The parameters will always have the ciphersuite and protocols
	* arrays set to non-null values.
	*
	* <p>The default implementation obtains the parameters from an
	* SSLSocket created by calling the
	* {@linkplain javax.net.SocketFactory#createSocket
	* SocketFactory.createSocket()} method of this context's SocketFactory.
	*
	* @return a copy of the SSLParameters object with the maximum supported
	*   settings
	* @throws UnsupportedOperationException if the supported SSL parameters
	*   could not be obtained.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload private function engineGetSupportedSSLParameters() : javax.net.ssl.SSLParameters;
	
	
}

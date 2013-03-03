package javax.rmi.ssl;
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
extern class SslRMIServerSocketFactory implements java.rmi.server.RMIServerSocketFactory
{
	/**
	* <p>Creates a new <code>SslRMIServerSocketFactory</code> with
	* the default SSL socket configuration.</p>
	*
	* <p>SSL connections accepted by server sockets created by this
	* factory have the default cipher suites and protocol versions
	* enabled and do not require client authentication.</p>
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* <p>Creates a new <code>SslRMIServerSocketFactory</code> with
	* the specified SSL socket configuration.</p>
	*
	* @param enabledCipherSuites names of all the cipher suites to
	* enable on SSL connections accepted by server sockets created by
	* this factory, or <code>null</code> to use the cipher suites
	* that are enabled by default
	*
	* @param enabledProtocols names of all the protocol versions to
	* enable on SSL connections accepted by server sockets created by
	* this factory, or <code>null</code> to use the protocol versions
	* that are enabled by default
	*
	* @param needClientAuth <code>true</code> to require client
	* authentication on SSL connections accepted by server sockets
	* created by this factory; <code>false</code> to not require
	* client authentication
	*
	* @exception IllegalArgumentException when one or more of the cipher
	* suites named by the <code>enabledCipherSuites</code> parameter is
	* not supported, when one or more of the protocols named by the
	* <code>enabledProtocols</code> parameter is not supported or when
	* a problem is encountered while trying to check if the supplied
	* cipher suites and protocols to be enabled are supported.
	*
	* @see SSLSocket#setEnabledCipherSuites
	* @see SSLSocket#setEnabledProtocols
	* @see SSLSocket#setNeedClientAuth
	*/
	@:overload @:public public function new(enabledCipherSuites : java.NativeArray<String>, enabledProtocols : java.NativeArray<String>, needClientAuth : Bool) : Void;
	
	/**
	* <p>Creates a new <code>SslRMIServerSocketFactory</code> with the
	* specified <code>SSLContext</code> and SSL socket configuration.</p>
	*
	* @param context the SSL context to be used for creating SSL sockets.
	* If <code>context</code> is null the default <code>SSLSocketFactory</code>
	* or the default <code>SSLServerSocketFactory</code> will be used to
	* create SSL sockets. Otherwise, the socket factory returned by
	* <code>SSLContext.getSocketFactory()</code> or
	* <code>SSLContext.getServerSocketFactory()</code> will be used instead.
	*
	* @param enabledCipherSuites names of all the cipher suites to
	* enable on SSL connections accepted by server sockets created by
	* this factory, or <code>null</code> to use the cipher suites
	* that are enabled by default
	*
	* @param enabledProtocols names of all the protocol versions to
	* enable on SSL connections accepted by server sockets created by
	* this factory, or <code>null</code> to use the protocol versions
	* that are enabled by default
	*
	* @param needClientAuth <code>true</code> to require client
	* authentication on SSL connections accepted by server sockets
	* created by this factory; <code>false</code> to not require
	* client authentication
	*
	* @exception IllegalArgumentException when one or more of the cipher
	* suites named by the <code>enabledCipherSuites</code> parameter is
	* not supported, when one or more of the protocols named by the
	* <code>enabledProtocols</code> parameter is not supported or when
	* a problem is encountered while trying to check if the supplied
	* cipher suites and protocols to be enabled are supported.
	*
	* @see SSLSocket#setEnabledCipherSuites
	* @see SSLSocket#setEnabledProtocols
	* @see SSLSocket#setNeedClientAuth
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function new(context : javax.net.ssl.SSLContext, enabledCipherSuites : java.NativeArray<String>, enabledProtocols : java.NativeArray<String>, needClientAuth : Bool) : Void;
	
	/**
	* <p>Returns the names of the cipher suites enabled on SSL
	* connections accepted by server sockets created by this factory,
	* or <code>null</code> if this factory uses the cipher suites
	* that are enabled by default.</p>
	*
	* @return an array of cipher suites enabled, or <code>null</code>
	*
	* @see SSLSocket#setEnabledCipherSuites
	*/
	@:overload @:public @:final public function getEnabledCipherSuites() : java.NativeArray<String>;
	
	/**
	* <p>Returns the names of the protocol versions enabled on SSL
	* connections accepted by server sockets created by this factory,
	* or <code>null</code> if this factory uses the protocol versions
	* that are enabled by default.</p>
	*
	* @return an array of protocol versions enabled, or
	* <code>null</code>
	*
	* @see SSLSocket#setEnabledProtocols
	*/
	@:overload @:public @:final public function getEnabledProtocols() : java.NativeArray<String>;
	
	/**
	* <p>Returns <code>true</code> if client authentication is
	* required on SSL connections accepted by server sockets created
	* by this factory.</p>
	*
	* @return <code>true</code> if client authentication is required
	*
	* @see SSLSocket#setNeedClientAuth
	*/
	@:overload @:public @:final public function getNeedClientAuth() : Bool;
	
	/**
	* <p>Creates a server socket that accepts SSL connections
	* configured according to this factory's SSL socket configuration
	* parameters.</p>
	*/
	@:overload @:public public function createServerSocket(port : Int) : java.net.ServerSocket;
	
	/**
	* <p>Indicates whether some other object is "equal to" this one.</p>
	*
	* <p>Two <code>SslRMIServerSocketFactory</code> objects are equal
	* if they have been constructed with the same SSL context and
	* SSL socket configuration parameters.</p>
	*
	* <p>A subclass should override this method (as well as
	* {@link #hashCode()}) if it adds instance state that affects
	* equality.</p>
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* <p>Returns a hash code value for this
	* <code>SslRMIServerSocketFactory</code>.</p>
	*
	* @return a hash code value for this
	* <code>SslRMIServerSocketFactory</code>.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}

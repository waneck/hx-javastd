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
extern class SslRMIClientSocketFactory implements java.rmi.server.RMIClientSocketFactory implements java.io.Serializable
{
	/**
	* <p>Creates a new <code>SslRMIClientSocketFactory</code>.</p>
	*/
	@:overload public function new() : Void;
	
	/**
	* <p>Creates an SSL socket.</p>
	*
	* <p>If the system property
	* <code>javax.rmi.ssl.client.enabledCipherSuites</code> is
	* specified, this method will call {@link
	* SSLSocket#setEnabledCipherSuites(String[])} before returning
	* the socket. The value of this system property is a string that
	* is a comma-separated list of SSL/TLS cipher suites to
	* enable.</p>
	*
	* <p>If the system property
	* <code>javax.rmi.ssl.client.enabledProtocols</code> is
	* specified, this method will call {@link
	* SSLSocket#setEnabledProtocols(String[])} before returning the
	* socket. The value of this system property is a string that is a
	* comma-separated list of SSL/TLS protocol versions to
	* enable.</p>
	*/
	@:overload public function createSocket(host : String, port : Int) : java.net.Socket;
	
	/**
	* <p>Indicates whether some other object is "equal to" this one.</p>
	*
	* <p>Because all instances of this class are functionally equivalent
	* (they all use the default
	* <code>SSLSocketFactory</code>), this method simply returns
	* <code>this.getClass().equals(obj.getClass())</code>.</p>
	*
	* <p>A subclass should override this method (as well
	* as {@link #hashCode()}) if its instances are not all
	* functionally equivalent.</p>
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* <p>Returns a hash code value for this
	* <code>SslRMIClientSocketFactory</code>.</p>
	*
	* @return a hash code value for this
	* <code>SslRMIClientSocketFactory</code>.
	*/
	@:overload public function hashCode() : Int;
	
	
}

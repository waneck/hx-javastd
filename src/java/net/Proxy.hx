package java.net;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
* This class represents a proxy setting, typically a type (http, socks) and
* a socket address.
* A <code>Proxy</code> is an immutable object.
*
* @see     java.net.ProxySelector
* @author Yingxian Wang
* @author Jean-Christophe Collet
* @since   1.5
*/
@:require(java5) extern class Proxy
{
	/**
	* A proxy setting that represents a <code>DIRECT</code> connection,
	* basically telling the protocol handler not to use any proxying.
	* Used, for instance, to create sockets bypassing any other global
	* proxy settings (like SOCKS):
	* <P>
	* <code>Socket s = new Socket(Proxy.NO_PROXY);</code><br>
	* <P>
	*/
	public static var NO_PROXY(default, null) : Proxy;
	
	/**
	* Creates an entry representing a PROXY connection.
	* Certain combinations are illegal. For instance, for types Http, and
	* Socks, a SocketAddress <b>must</b> be provided.
	* <P>
	* Use the <code>Proxy.NO_PROXY</code> constant
	* for representing a direct connection.
	*
	* @param type the <code>Type</code> of the proxy
	* @param sa the <code>SocketAddress</code> for that proxy
	* @throws IllegalArgumentException when the type and the address are
	* incompatible
	*/
	@:overload public function new(type : Proxy_Type, sa : java.net.SocketAddress) : Void;
	
	/**
	* Returns the proxy type.
	*
	* @return a Type representing the proxy type
	*/
	@:overload public function type() : Proxy_Type;
	
	/**
	* Returns the socket address of the proxy, or
	* <code>null</code> if its a direct connection.
	*
	* @return a <code>SocketAddress</code> representing the socket end
	*         point of the proxy
	*/
	@:overload public function address() : java.net.SocketAddress;
	
	/**
	* Constructs a string representation of this Proxy.
	* This String is constructed by calling toString() on its type
	* and concatenating " @ " and the toString() result from its address
	* if its type is not <code>DIRECT</code>.
	*
	* @return  a string representation of this object.
	*/
	@:overload public function toString() : String;
	
	/**
	* Compares this object against the specified object.
	* The result is <code>true</code> if and only if the argument is
	* not <code>null</code> and it represents the same proxy as
	* this object.
	* <p>
	* Two instances of <code>Proxy</code> represent the same
	* address if both the SocketAddresses and type are equal.
	*
	* @param   obj   the object to compare against.
	* @return  <code>true</code> if the objects are the same;
	*          <code>false</code> otherwise.
	* @see java.net.InetSocketAddress#equals(java.lang.Object)
	*/
	@:overload @:final public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hashcode for this Proxy.
	*
	* @return  a hash code value for this Proxy.
	*/
	@:overload @:final public function hashCode() : Int;
	
	
}
/**
* Represents the proxy type.
*
* @since 1.5
*/
@:require(java5) @:native('java$net$Proxy$Type') extern enum Proxy_Type
{
	/**
	* Represents a direct connection, or the absence of a proxy.
	*/
	DIRECT;
	/**
	* Represents proxy for high level protocols such as HTTP or FTP.
	*/
	HTTP;
	/**
	* Represents a SOCKS (V4 or V5) proxy.
	*/
	SOCKS;
	
}


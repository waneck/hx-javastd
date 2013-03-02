package java.net;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ProxySelector
{
	/**
	* Gets the system-wide proxy selector.
	*
	* @throws  SecurityException
	*          If a security manager has been installed and it denies
	* {@link NetPermission}<tt>("getProxySelector")</tt>
	* @see #setDefault(ProxySelector)
	* @return the system-wide <code>ProxySelector</code>
	* @since 1.5
	*/
	@:require(java5) @:overload public static function getDefault() : java.net.ProxySelector;
	
	/**
	* Sets (or unsets) the system-wide proxy selector.
	*
	* Note: non-standard protocol handlers may ignore this setting.
	*
	* @param ps The HTTP proxy selector, or
	*          <code>null</code> to unset the proxy selector.
	*
	* @throws  SecurityException
	*          If a security manager has been installed and it denies
	* {@link NetPermission}<tt>("setProxySelector")</tt>
	*
	* @see #getDefault()
	* @since 1.5
	*/
	@:require(java5) @:overload public static function setDefault(ps : java.net.ProxySelector) : Void;
	
	/**
	* Selects all the applicable proxies based on the protocol to
	* access the resource with and a destination address to access
	* the resource at.
	* The format of the URI is defined as follow:
	* <UL>
	* <LI>http URI for http connections</LI>
	* <LI>https URI for https connections
	* <LI>ftp URI for ftp connections</LI>
	* <LI><code>socket://host:port</code><br>
	*     for tcp client sockets connections</LI>
	* </UL>
	*
	* @param   uri
	*          The URI that a connection is required to
	*
	* @return  a List of Proxies. Each element in the
	*          the List is of type
	*          {@link java.net.Proxy Proxy};
	*          when no proxy is available, the list will
	*          contain one element of type
	*          {@link java.net.Proxy Proxy}
	*          that represents a direct connection.
	* @throws IllegalArgumentException if the argument is null
	*/
	@:overload @:abstract public function select(uri : java.net.URI) : java.util.List<java.net.Proxy>;
	
	/**
	* Called to indicate that a connection could not be established
	* to a proxy/socks server. An implementation of this method can
	* temporarily remove the proxies or reorder the sequence of
	* proxies returned by {@link #select(URI)}, using the address
	* and the IOException caught when trying to connect.
	*
	* @param   uri
	*          The URI that the proxy at sa failed to serve.
	* @param   sa
	*          The socket address of the proxy/SOCKS server
	*
	* @param   ioe
	*          The I/O exception thrown when the connect failed.
	* @throws IllegalArgumentException if either argument is null
	*/
	@:overload @:abstract public function connectFailed(uri : java.net.URI, sa : java.net.SocketAddress, ioe : java.io.IOException) : Void;
	
	
}

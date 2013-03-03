package sun.net.spi;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultProxySelector extends java.net.ProxySelector
{
	/**
	* select() method. Where all the hard work is done.
	* Build a list of proxies depending on URI.
	* Since we're only providing compatibility with the system properties
	* from previous releases (see list above), that list will always
	* contain 1 single proxy, default being NO_PROXY.
	*/
	@:overload @:public override public function select(uri : java.net.URI) : java.util.List<java.net.Proxy>;
	
	@:overload @:public override public function connectFailed(uri : java.net.URI, sa : java.net.SocketAddress, ioe : java.io.IOException) : Void;
	
	
}
/**
* How to deal with "non proxy hosts":
* since we do have to generate a RegexpPool we don't want to do that if
* it's not necessary. Therefore we do cache the result, on a per-protocol
* basis, and change it only when the "source", i.e. the system property,
* did change.
*/
@:native('sun$net$spi$DefaultProxySelector$NonProxyInfo') @:internal extern class DefaultProxySelector_NonProxyInfo
{
	
}

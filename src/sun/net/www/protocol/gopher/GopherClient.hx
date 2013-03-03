package sun.net.www.protocol.gopher;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class GopherClient extends sun.net.NetworkClient implements java.lang.Runnable
{
	/**
	* @deprecated
	*/
	@:public @:static public static var useGopherProxy : Bool;
	
	/**
	* @deprecated
	*/
	@:public @:static public static var gopherProxyHost : String;
	
	/**
	* @deprecated
	*/
	@:public @:static public static var gopherProxyPort : Int;
	
	/**
	* @return true if gopher connections should go through a proxy, according
	*          to system properties.
	*/
	@:overload @:public @:static public static function getUseGopherProxy() : Bool;
	
	/**
	* @return the proxy host to use, or null if nothing is set.
	*/
	@:overload @:public @:static public static function getGopherProxyHost() : String;
	
	/**
	* @return the proxy port to use.  Will default reasonably.
	*/
	@:overload @:public @:static public static function getGopherProxyPort() : Int;
	
	/** This method is run as a seperate thread when an incoming gopher
	document requires translation to html */
	@:overload @:public public function run() : Void;
	
	
}
@:internal extern class GopherInputStream extends java.io.FilterInputStream
{
	@:overload @:public override public function close() : Void;
	
	
}

package sun.net.www.protocol.http;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class HttpCallerInfo
{
	/**
	* Used in HTTP/Negotiate, to feed HTTP request info into JGSS as a HttpCaller,
	* so that special actions can be taken, including special callback handler,
	* special useSubjectCredsOnly value.
	*
	* This is an immutable class. It can be instantiated in two styles;
	*
	* 1. Un-schemed: Create at the beginning before the preferred scheme is
	* determined. This object can be fed into AuthenticationHeader to check
	* for the preference.
	*
	* 2. Schemed: With the scheme field filled, can be used in JGSS-API calls.
	*/
	@:final @:public public var url(default, null) : java.net.URL;
	
	@:final @:public public var host(default, null) : String;
	
	@:final @:public public var protocol(default, null) : String;
	
	@:final @:public public var prompt(default, null) : String;
	
	@:final @:public public var scheme(default, null) : String;
	
	@:final @:public public var port(default, null) : Int;
	
	@:final @:public public var addr(default, null) : java.net.InetAddress;
	
	@:final @:public public var authType(default, null) : java.net.Authenticator.Authenticator_RequestorType;
	
	/**
	* Create a schemed object based on an un-schemed one.
	*/
	@:overload @:public public function new(old : sun.net.www.protocol.http.HttpCallerInfo, scheme : String) : Void;
	
	/**
	* Constructor an un-schemed object for site access.
	*/
	@:overload @:public public function new(url : java.net.URL) : Void;
	
	/**
	* Constructor an un-schemed object for proxy access.
	*/
	@:overload @:public public function new(url : java.net.URL, host : String, port : Int) : Void;
	
	
}

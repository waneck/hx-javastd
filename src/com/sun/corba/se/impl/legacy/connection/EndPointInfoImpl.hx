package com.sun.corba.se.impl.legacy.connection;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class EndPointInfoImpl implements com.sun.corba.se.spi.transport.SocketInfo implements com.sun.corba.se.spi.legacy.connection.LegacyServerSocketEndPointInfo
{
	@:protected private var type : String;
	
	@:protected private var hostname : String;
	
	@:protected private var port : Int;
	
	@:protected private var locatorPort : Int;
	
	@:protected private var name : String;
	
	@:overload @:public public function new(type : String, port : Int, hostname : String) : Void;
	
	@:overload @:public public function getType() : String;
	
	@:overload @:public public function getHost() : String;
	
	@:overload @:public public function getHostName() : String;
	
	@:overload @:public public function getPort() : Int;
	
	@:overload @:public public function getLocatorPort() : Int;
	
	@:overload @:public public function setLocatorPort(port : Int) : Void;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function toString() : String;
	
	
}

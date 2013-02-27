package com.sun.corba.se.spi.legacy.connection;
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
/**
* LegacyServerSocketEndPointInfo is an abstraction of a port.
*/
extern interface LegacyServerSocketEndPointInfo
{
	/**
	* e.g.: "CLEAR_TEXT", "SSL", ...
	*/
	@:overload public function getType() : String;
	
	/**
	* Get the host name of this end point. Subcontracts must use this
	* instead of InetAddress.getHostName() because this would take
	* into account the value of the ORBServerHost property.
	*/
	@:overload public function getHostName() : String;
	
	@:overload public function getPort() : Int;
	
	/**
	* The ORBD's proxy port of this end point.
	* Note: Pre-ORT "port-exchange" model.
	*/
	@:overload public function getLocatorPort() : Int;
	
	@:overload public function setLocatorPort(port : Int) : Void;
	
	@:overload public function getName() : String;
	
	
}

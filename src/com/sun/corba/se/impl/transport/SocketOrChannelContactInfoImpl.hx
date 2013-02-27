package com.sun.corba.se.impl.transport;
/*
* Copyright (c) 2002, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class SocketOrChannelContactInfoImpl extends com.sun.corba.se.impl.transport.CorbaContactInfoBase implements com.sun.corba.se.spi.transport.SocketInfo
{
	/**
	* @author Harold Carr
	*/
	private var isHashCodeCached : Bool;
	
	private var cachedHashCode : Int;
	
	private var socketType : String;
	
	private var hostname : String;
	
	private var port : Int;
	
	@:overload private function new() : Void;
	
	@:overload private function new(orb : com.sun.corba.se.spi.orb.ORB, contactInfoList : com.sun.corba.se.spi.transport.CorbaContactInfoList) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, contactInfoList : com.sun.corba.se.spi.transport.CorbaContactInfoList, socketType : String, hostname : String, port : Int) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, contactInfoList : com.sun.corba.se.spi.transport.CorbaContactInfoList, effectiveTargetIOR : com.sun.corba.se.spi.ior.IOR, addressingDisposition : java.StdTypes.Int16, socketType : String, hostname : String, port : Int) : Void;
	
	@:overload override public function isConnectionBased() : Bool;
	
	@:overload override public function shouldCacheConnection() : Bool;
	
	@:overload override public function getConnectionCacheType() : String;
	
	@:overload override public function createConnection() : com.sun.corba.se.pept.transport.Connection;
	
	@:overload override public function getMonitoringName() : String;
	
	@:overload public function getType() : String;
	
	@:overload public function getHost() : String;
	
	@:overload public function getPort() : Int;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function toString() : String;
	
	@:overload override private function dprint(msg : String) : Void;
	
	
}

package com.sun.corba.se.impl.transport;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class SharedCDRContactInfoImpl extends com.sun.corba.se.impl.transport.CorbaContactInfoBase
{
	private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, contactInfoList : com.sun.corba.se.spi.transport.CorbaContactInfoList, effectiveTargetIOR : com.sun.corba.se.spi.ior.IOR, addressingDisposition : java.StdTypes.Int16) : Void;
	
	@:overload override public function getClientRequestDispatcher() : com.sun.corba.se.pept.protocol.ClientRequestDispatcher;
	
	@:overload override public function isConnectionBased() : Bool;
	
	@:overload override public function shouldCacheConnection() : Bool;
	
	@:overload override public function getConnectionCacheType() : String;
	
	@:overload override public function createConnection() : com.sun.corba.se.pept.transport.Connection;
	
	@:overload override public function createMessageMediator(broker : com.sun.corba.se.pept.broker.Broker, contactInfo : com.sun.corba.se.pept.transport.ContactInfo, connection : com.sun.corba.se.pept.transport.Connection, methodName : String, isOneWay : Bool) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload override public function createOutputObject(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.OutputObject;
	
	@:overload override public function getMonitoringName() : String;
	
	@:overload override public function toString() : String;
	
	@:overload private function getWrapper() : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	
}

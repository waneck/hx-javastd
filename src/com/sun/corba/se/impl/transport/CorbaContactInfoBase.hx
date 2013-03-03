package com.sun.corba.se.impl.transport;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class CorbaContactInfoBase implements com.sun.corba.se.spi.transport.CorbaContactInfo
{
	/**
	* @author Harold Carr
	*/
	@:protected private var orb : com.sun.corba.se.spi.orb.ORB;
	
	@:protected private var contactInfoList : com.sun.corba.se.spi.transport.CorbaContactInfoList;
	
	@:protected private var effectiveTargetIOR : com.sun.corba.se.spi.ior.IOR;
	
	@:protected private var addressingDisposition : java.StdTypes.Int16;
	
	@:protected private var connectionCache : com.sun.corba.se.pept.transport.OutboundConnectionCache;
	
	@:overload @:public public function getBroker() : com.sun.corba.se.pept.broker.Broker;
	
	@:overload @:public public function getContactInfoList() : com.sun.corba.se.pept.transport.ContactInfoList;
	
	@:overload @:public public function getClientRequestDispatcher() : com.sun.corba.se.pept.protocol.ClientRequestDispatcher;
	
	@:overload @:public public function setConnectionCache(connectionCache : com.sun.corba.se.pept.transport.OutboundConnectionCache) : Void;
	
	@:overload @:public public function getConnectionCache() : com.sun.corba.se.pept.transport.OutboundConnectionCache;
	
	@:overload @:public public function createMessageMediator(broker : com.sun.corba.se.pept.broker.Broker, contactInfo : com.sun.corba.se.pept.transport.ContactInfo, connection : com.sun.corba.se.pept.transport.Connection, methodName : String, isOneWay : Bool) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload @:public public function createMessageMediator(broker : com.sun.corba.se.pept.broker.Broker, conn : com.sun.corba.se.pept.transport.Connection) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload @:public public function finishCreatingMessageMediator(broker : com.sun.corba.se.pept.broker.Broker, conn : com.sun.corba.se.pept.transport.Connection, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload @:public public function createOutputObject(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.OutputObject;
	
	@:overload @:public public function createInputObject(broker : com.sun.corba.se.pept.broker.Broker, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.InputObject;
	
	@:overload @:public public function getAddressingDisposition() : java.StdTypes.Int16;
	
	@:overload @:public public function setAddressingDisposition(addressingDisposition : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function getTargetIOR() : com.sun.corba.se.spi.ior.IOR;
	
	@:overload @:public public function getEffectiveTargetIOR() : com.sun.corba.se.spi.ior.IOR;
	
	@:overload @:public public function getEffectiveProfile() : com.sun.corba.se.spi.ior.iiop.IIOPProfile;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:protected private function dprint(msg : String) : Void;
	
	/**
	* Used to determine if a
	* {@link com.sun.corba.se.pept.transport.Connection Connection}
	* will be present in an invocation.
	*
	* For example, it may be
	* <code>false</code> in the case of shared-memory
	* <code>Input/OutputObjects</code>.
	*
	* @return <code>true</code> if a
	* {@link com.sun.corba.se.pept.transport.Connection Connection}
	* will be used for an invocation.
	*/
	@:overload @:public @:public public function isConnectionBased() : Bool;
	
	/**
	* PEPt uses separate caches for each type of <code>ContactInfo</code>
	* as given by <code>getConnectionCacheType</code>.
	*
	* @return {@link java.lang.String}
	*/
	@:overload @:public @:public public function getConnectionCacheType() : String;
	
	/**
	* Used to get a
	* {@link com.sun.corba.se.pept.transport.Connection Connection}
	* to send and receive messages on the specific <em>transport</em>
	* represented by this <code>ContactInfo</code>.
	*
	* @return
	* {@link com.sun.corba.se.pept.transport.Connection Connection}
	*/
	@:overload @:public @:public public function createConnection() : com.sun.corba.se.pept.transport.Connection;
	
	@:overload @:public @:public public function getMonitoringName() : String;
	
	/**
	* Used to determine if the
	* {@link com.sun.corba.se.pept.transport.Connection Connection}
	* used for a request should be cached.
	*
	* If <code>true</code> then PEPt will attempt to reuse an existing
	* {@link com.sun.corba.se.pept.transport.Connection Connection}. If
	* one is not found it will create a new one and cache it for future use.
	*
	*
	* @return <code>true</code> if
	* {@link com.sun.corba.se.pept.transport.Connection Connection}s
	* created by this <code>ContactInfo</code> should be cached.
	*/
	@:overload @:public @:public public function shouldCacheConnection() : Bool;
	
	
}

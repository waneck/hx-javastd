package com.sun.corba.se.pept.transport;
/*
* Copyright (c) 2001, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface Acceptor
{
	/**
	* Used to initialize an <code>Acceptor</code>.
	*
	* For example, initialization may mean to create a
	* {@link java.nio.channels.ServerSocketChannel ServerSocketChannel}.
	*
	* Note: this must be prepared to be be called multiple times.
	*
	* @return <code>true</code> when it performs initializatin
	* actions (typically the first call.
	*/
	@:overload public function initialize() : Bool;
	
	/**
	* Used to determine if an <code>Acceptor</code> has been initialized.
	*
	* @return <code>true</code. if the <code>Acceptor</code> has been
	* initialized.
	*/
	@:overload public function initialized() : Bool;
	
	/**
	* PEPt uses separate caches for each type of <code>Acceptor</code>
	* as given by <code>getConnectionCacheType</code>.
	*
	* @return {@link java.lang.String}
	*/
	@:overload public function getConnectionCacheType() : String;
	
	/**
	* Set the
	* {@link com.sun.corba.se.pept.transport.Inbound.ConnectionCache InboundConnectionCache}
	* to be used by this <code>Acceptor</code>.
	*
	* PEPt uses separate caches for each type of <code>Acceptor</code>
	* as given by {@link #getConnectionCacheType}.
	* {@link #setConnectionCache} and {@link #getConnectionCache} support
	* an optimzation to avoid hashing to find that cache.
	*
	* @param connectionCache.
	*/
	@:overload public function setConnectionCache(connectionCache : com.sun.corba.se.pept.transport.InboundConnectionCache) : Void;
	
	/**
	* Get the
	* {@link com.sun.corba.se.pept.transport.Inbound.ConnectionCache InboundConnectionCache}
	* used by this <code>Acceptor</code>
	*
	* PEPt uses separate caches for each type of <code>Acceptor</code>
	* as given by {@link #getConnectionCacheType}.
	* {@link #setConnectionCache} and {@link #getConnectionCache} support
	* an optimzation to avoid hashing to find that cache.
	*
	* @return
	* {@link com.sun.corba.se.pept.transport.ConnectionCache ConnectionCache}
	*/
	@:overload public function getConnectionCache() : com.sun.corba.se.pept.transport.InboundConnectionCache;
	
	/**
	* Used to determine if the <code>Acceptor</code> should register
	* with
	* {@link com.sun.corba.se.pept.transport.Selector Selector}
	* to handle accept events.
	*
	* For example, this may be <em>false</em> in the case of Solaris Doors
	* which do not actively listen.
	*
	* @return <code>true</code> if the <code>Acceptor</code> should be
	* registered with
	* {@link com.sun.corba.se.pept.transport.Selector Selector}
	*/
	@:overload public function shouldRegisterAcceptEvent() : Bool;
	
	/**
	* Accept a connection request.
	*
	* This is called either when the selector gets an accept event
	* for this <code>Acceptor</code> or by a
	* {@link com.sun.corba.se.pept.transport.ListenerThread ListenerThread}.
	*
	* It results in a
	* {@link com.sun.corba.se.pept.transport.Connection Connection}
	* being created.
	*/
	@:overload public function accept() : Void;
	
	/**
	* Close the <code>Acceptor</code>.
	*/
	@:overload public function close() : Void;
	
	/**
	* Get the
	* {@link com.sun.corba.se.pept.transport.EventHandler EventHandler}
	* associated with this <code>Acceptor</code>.
	*
	* @return
	* {@link com.sun.corba.se.pept.transport.EventHandler EventHandler}
	*/
	@:overload public function getEventHandler() : com.sun.corba.se.pept.transport.EventHandler;
	
	/**
	* Used to get a
	* {@link com.sun.corba.se.pept.protocol.MessageMeidator MessageMediator}
	* to hold internal data for a message received using the specific
	* encoding, protocol, transport combination represented by this
	* <code>Acceptor</code>.
	*
	* @return
	* {@link com.sun.corba.se.pept.protocol.MessageMeidator MessageMediator}
	*/
	@:overload public function createMessageMediator(xbroker : com.sun.corba.se.pept.broker.Broker, xconnection : com.sun.corba.se.pept.transport.Connection) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	/**
	* Used to finish creating a
	* {@link com.sun.corba.se.pept.protocol.MessageMeidator MessageMediator}
	* to with internal data for a message received using the specific
	* encoding, protocol, transport combination represented by this
	* <code>Acceptor</code>.
	*
	* @return
	* {@link com.sun.corba.se.pept.protocol.MessageMediator MessageMediator}
	*/
	@:overload public function finishCreatingMessageMediator(broker : com.sun.corba.se.pept.broker.Broker, xconnection : com.sun.corba.se.pept.transport.Connection, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	/**
	* Used to get a
	* {@link com.sun.corba.se.pept.encoding.InputObject InputObject}
	* for the specific <em>encoding</em> represented by this
	* <code>Acceptor</code>.
	*
	* @return
	* {@link com.sun.corba.se.pept.encoding.InputObject InputObject}
	*/
	@:overload public function createInputObject(broker : com.sun.corba.se.pept.broker.Broker, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.InputObject;
	
	/**
	* Used to get a
	* {@link com.sun.corba.se.pept.encoding.OutputObject OutputObject}
	* for the specific <em>encoding</em> represented by this
	* <code>Acceptor</code>.
	*
	* @return
	* {@link com.sun.corba.se.pept.encoding.OutputObject OutputObject}
	*/
	@:overload public function createOutputObject(broker : com.sun.corba.se.pept.broker.Broker, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.OutputObject;
	
	
}

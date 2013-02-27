package com.sun.corba.se.pept.transport;
/*
* Copyright (c) 2001, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface Connection
{
	/**
	* Used to determine if the <code>Connection</code> should register
	* with the
	* {@link com.sun.corba.se.pept.transport.TransportManager
	* TransportManager}
	* {@link com.sun.corba.se.pept.transport.Selector Selector}
	* to handle read events.
	*
	* For example, an HTTP transport would not register since the requesting
	* thread would just block on read when waiting for the reply.
	*
	* @return <code>true</code> if it should be registered.
	*/
	@:overload public function shouldRegisterReadEvent() : Bool;
	
	/**
	* Used to determine if the <code>Connection</code> should register
	* with the
	* {@link com.sun.corba.se.pept.transport.TransportManager
	* TransportManager}
	* {@link com.sun.corba.se.pept.transport.Selector Selector}
	* to handle read events.
	*
	* For example, an HTTP transport would not register since the requesting
	* thread would just block on read when waiting for the reply.
	*
	* @return <code>true</code> if it should be registered.
	*/
	@:overload public function shouldRegisterServerReadEvent() : Bool;
	
	/**
	* Called to read incoming messages.
	*
	* @return <code>true</code> if the thread calling read can be released.
	*/
	@:overload public function read() : Bool;
	
	/**
	* Close the <code>Connection</code>.
	*
	*/
	@:overload public function close() : Void;
	
	/**
	* Get the
	* {@link com.sun.corba.se.pept.transport.Acceptor Acceptor}
	* that created this <code>Connection</code>.
	*
	* @return
	* {@link com.sun.corba.se.pept.transport.Acceptor Acceptor}
	*/
	@:overload public function getAcceptor() : com.sun.corba.se.pept.transport.Acceptor;
	
	/**
	* Get the
	* {@link com.sun.corba.se.pept.transport.ContactInfo ContactInfo}
	* that created this <code>Connection</code>.
	*
	* @return
	* {@link com.sun.corba.se.pept.transport.ContactInfo ContactInfo}
	*/
	@:overload public function getContactInfo() : com.sun.corba.se.pept.transport.ContactInfo;
	
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
	* Indicates whether a
	* {@link com.sun.corba.se.pept.transport.ContactInfo ContactInfo}
	* or a
	* {@link com.sun.corba.se.pept.transport.Acceptor Acceptor}
	* created the
	* <code>Connection</code>.
	*
	* @return <code>true</code> if <code>Connection</code> an
	* {@link com.sun.corba.se.pept.transport.Acceptor Acceptor}
	* created the <code>Connection</code>.
	*/
	@:overload public function isServer() : Bool;
	
	/**
	* Indicates if the <code>Connection</code> is in the process of
	* sending or receiving a message.
	*
	* @return <code>true</code> if the <code>Connection</code> is busy.
	*/
	@:overload public function isBusy() : Bool;
	
	/**
	* Timestamps are used for connection management, in particular, for
	* reclaiming idle <code>Connection</code>s.
	*
	* @return the "time" the <code>Connection</code> was last used.
	*/
	@:overload public function getTimeStamp() : haxe.Int64;
	
	/**
	* Timestamps are used for connection management, in particular, for
	* reclaiming idle <code>Connection</code>s.
	*
	* @param time - the "time" the <code>Connection</code> was last used.
	*/
	@:overload public function setTimeStamp(time : haxe.Int64) : Void;
	
	/**
	* The "state" of the <code>Connection</code>.
	*
	* param state
	*/
	@:overload public function setState(state : String) : Void;
	
	/**
	* Grab a write lock on the <code>Connection</code>.
	*
	* If another thread already has a write lock then the calling
	* thread will block until the lock is released.  The calling
	* thread must call
	* {@link #writeUnlock}
	* when it is done.
	*/
	@:overload public function writeLock() : Void;
	
	/**
	* Release a write lock on the <code>Connection</code>.
	*/
	@:overload public function writeUnlock() : Void;
	
	/*
	* Send the data encoded in
	* {@link com.sun.corba.se.pept.encoding.OutputObject OutputObject}
	* on the <code>Connection</code>.
	*
	* @param outputObject
	*/
	@:overload public function sendWithoutLock(outputObject : com.sun.corba.se.pept.encoding.OutputObject) : Void;
	
	/**
	* Register an invocation's
	* {@link com.sun.corba.se.pept.protocol.MessageMediator MessageMediator}
	* with the <code>Connection</code>.
	*
	* This is useful in protocols which support fragmentation.
	*
	* @param messageMediator
	*/
	@:overload public function registerWaiter(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	/**
	* If a message expect's a response then this method is called.
	*
	* This method might block on a read (e.g., HTTP), put the calling
	* thread to sleep while another thread read's the response (e.g., GIOP),
	* or it may use the calling thread to perform the server-side work
	* (e.g., Solaris Doors).
	*
	* @param messageMediator
	*/
	@:overload public function waitForResponse(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.InputObject;
	
	/**
	* Unregister an invocation's
	* {@link com.sun.corba.se.pept.protocol.MessageMediator MessageMediator}
	* with the <code>Connection</code>.
	*
	* @param messageMediator
	*/
	@:overload public function unregisterWaiter(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload public function setConnectionCache(connectionCache : com.sun.corba.se.pept.transport.ConnectionCache) : Void;
	
	@:overload public function getConnectionCache() : com.sun.corba.se.pept.transport.ConnectionCache;
	
	
}

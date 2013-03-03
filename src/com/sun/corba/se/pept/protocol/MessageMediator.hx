package com.sun.corba.se.pept.protocol;
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
extern interface MessageMediator
{
	/**
	* The {@link com.sun.corba.se.pept.broker.Broker Broker} associated
	* with an invocation.
	*
	* @return {@link com.sun.corba.se.pept.broker.Broker Broker}
	*/
	@:overload @:public public function getBroker() : com.sun.corba.se.pept.broker.Broker;
	
	/**
	* Get the
	* {@link com.sun.corba.se.pept.transport.ContactInfo ContactInfo}
	* which created this <code>MessageMediator</code>.
	*
	* @return
	* {@link com.sun.corba.se.pept.transport.ContactInfo ContactInfo}
	*/
	@:overload @:public public function getContactInfo() : com.sun.corba.se.pept.transport.ContactInfo;
	
	/**
	* Get the
	* {@link com.sun.corba.se.pept.transport.Connection Connection}
	* on which this message is sent or received.
	*/
	@:overload @:public public function getConnection() : com.sun.corba.se.pept.transport.Connection;
	
	/**
	* Used to initialize message headers.
	*
	* Note: this should be moved to a <code>RequestDispatcher</code>.
	*/
	@:overload @:public public function initializeMessage() : Void;
	
	/**
	* Used to send the message (or its last fragment).
	*
	* Note: this should be moved to a <code>RequestDispatcher</code>.
	*/
	@:overload @:public public function finishSendingRequest() : Void;
	
	/**
	* Used to wait for a response for synchronous messages.
	*
	* @deprecated
	*/
	@:overload @:public public function waitForResponse() : com.sun.corba.se.pept.encoding.InputObject;
	
	/**
	* Used to set the
	* {@link com.sun.corba.se.pept.encoding.OutputObject OutputObject}
	* used for the message.
	*
	* @param outputObject
	*/
	@:overload @:public public function setOutputObject(outputObject : com.sun.corba.se.pept.encoding.OutputObject) : Void;
	
	/**
	* Used to get the
	* {@link com.sun.corba.se.pept.encoding.OutputObject OutputObject}
	* used for the message.
	*
	* @return
	* {@link com.sun.corba.se.pept.encoding.OutputObject OutputObject}
	*/
	@:overload @:public public function getOutputObject() : com.sun.corba.se.pept.encoding.OutputObject;
	
	/**
	* Used to set the
	* {@link com.sun.corba.se.pept.encoding.InputObject InputObject}
	* used for the message.
	*
	* @param inputObject
	*/
	@:overload @:public public function setInputObject(inputObject : com.sun.corba.se.pept.encoding.InputObject) : Void;
	
	/**
	* Used to get the
	* {@link com.sun.corba.se.pept.encoding.InputObject InputObject}
	* used for the message.
	*
	* @return
	* {@link com.sun.corba.se.pept.encoding.InputObject InputObject}
	*/
	@:overload @:public public function getInputObject() : com.sun.corba.se.pept.encoding.InputObject;
	
	
}

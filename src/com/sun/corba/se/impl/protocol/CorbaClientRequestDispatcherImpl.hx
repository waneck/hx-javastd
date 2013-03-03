package com.sun.corba.se.impl.protocol;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class CorbaClientRequestDispatcherImpl implements com.sun.corba.se.pept.protocol.ClientRequestDispatcher
{
	@:overload @:public public function beginRequest(self : Dynamic, opName : String, isOneWay : Bool, contactInfo : com.sun.corba.se.pept.transport.ContactInfo) : com.sun.corba.se.pept.encoding.OutputObject;
	
	@:overload @:public public function marshalingComplete(self : Dynamic, outputObject : com.sun.corba.se.pept.encoding.OutputObject) : com.sun.corba.se.pept.encoding.InputObject;
	
	@:overload @:public public function marshalingComplete1(orb : com.sun.corba.se.spi.orb.ORB, messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : com.sun.corba.se.pept.encoding.InputObject;
	
	@:overload @:protected private function processResponse(orb : com.sun.corba.se.spi.orb.ORB, messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, inputObject : com.sun.corba.se.pept.encoding.InputObject) : com.sun.corba.se.pept.encoding.InputObject;
	
	@:overload @:protected private function continueOrThrowSystemOrRemarshal(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, exception : java.lang.Exception) : Void;
	
	@:overload @:protected private function getContactInfoListIterator(orb : com.sun.corba.se.spi.orb.ORB) : com.sun.corba.se.spi.transport.CorbaContactInfoListIterator;
	
	@:overload @:protected private function registerWaiter(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:protected private function unregisterWaiter(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload @:protected private function addServiceContexts(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:protected private function consumeServiceContexts(orb : com.sun.corba.se.spi.orb.ORB, messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:protected private function getExceptionDetailMessage(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException) : Void;
	
	@:overload @:public public function endRequest(broker : com.sun.corba.se.pept.broker.Broker, self : Dynamic, inputObject : com.sun.corba.se.pept.encoding.InputObject) : Void;
	
	@:overload @:protected private function performCodeSetNegotiation(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:protected private function addCodeSetServiceContext(conn : com.sun.corba.se.spi.transport.CorbaConnection, ctxs : com.sun.corba.se.spi.servicecontext.ServiceContexts, giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	@:overload @:protected private function peekUserExceptionId(inputObject : com.sun.corba.se.pept.encoding.InputObject) : String;
	
	@:overload @:protected private function dprint(msg : String) : Void;
	
	@:overload @:protected private function opAndId(mediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : String;
	
	
}

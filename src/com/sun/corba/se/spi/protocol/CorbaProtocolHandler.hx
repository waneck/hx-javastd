package com.sun.corba.se.spi.protocol;
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
extern interface CorbaProtocolHandler extends com.sun.corba.se.pept.protocol.ProtocolHandler
{
	/**
	* @author Harold Carr
	*/
	@:overload public function handleRequest(header : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage, messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload public function handleRequest(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateRequestMessage, messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload public function createResponse(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload public function createUserExceptionResponse(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload public function createUnknownExceptionResponse(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, ex : org.omg.CORBA.portable.UnknownException) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload public function createSystemExceptionResponse(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, ex : org.omg.CORBA.SystemException, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload public function createLocationForward(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, ior : com.sun.corba.se.spi.ior.IOR, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload public function handleThrowableDuringServerDispatch(request : com.sun.corba.se.spi.protocol.CorbaMessageMediator, exception : java.lang.Throwable, completionStatus : org.omg.CORBA.CompletionStatus) : Void;
	
	
}
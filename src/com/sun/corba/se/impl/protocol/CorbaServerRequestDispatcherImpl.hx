package com.sun.corba.se.impl.protocol;
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class CorbaServerRequestDispatcherImpl implements com.sun.corba.se.spi.protocol.CorbaServerRequestDispatcher
{
	@:protected private var orb : com.sun.corba.se.spi.orb.ORB;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	/** XXX/REVISIT:
	* We do not want to look for a servant in the POA/ServantManager case,
	* but we could in most other cases.  The OA could have a method that
	* returns true if the servant MAY exist, and false only if the servant
	* definitely DOES NOT exist.
	*
	* XXX/REVISIT:
	* We may wish to indicate OBJECT_HERE by some mechanism other than
	* returning a null result.
	*
	* Called from ORB.locate when a LocateRequest arrives.
	* Result is not always absolutely correct: may indicate OBJECT_HERE
	* for non-existent objects, which is resolved on invocation.  This
	* "bug" is unavoidable, since in general the object may be destroyed
	* between a locate and a request.  Note that this only checks that
	* the appropriate ObjectAdapter is available, not that the servant
	* actually exists.
	* Need to signal one of OBJECT_HERE, OBJECT_FORWARD, OBJECT_NOT_EXIST.
	* @return Result is null if object is (possibly) implemented here, otherwise
	* an IOR indicating objref to forward the request to.
	* @exception OBJECT_NOT_EXIST is thrown if we know the object does not
	* exist here, and we are not forwarding.
	*/
	@:overload @:public public function locate(okey : com.sun.corba.se.spi.ior.ObjectKey) : com.sun.corba.se.spi.ior.IOR;
	
	@:overload @:public public function dispatch(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload @:protected private function getServantWithPI(request : com.sun.corba.se.spi.protocol.CorbaMessageMediator, objectAdapter : com.sun.corba.se.spi.oa.ObjectAdapter, objectId : java.NativeArray<java.StdTypes.Int8>, oktemp : com.sun.corba.se.spi.ior.ObjectKeyTemplate, operation : String) : Dynamic;
	
	@:overload @:protected private function checkServerId(okey : com.sun.corba.se.spi.ior.ObjectKey) : Void;
	
	/** Always throws OBJECT_NOT_EXIST if operation is not a special method.
	* If operation is _non_existent or _not_existent, this will just
	* return without performing any action, so that _non_existent can return
	* false.  Always throws OBJECT_NOT_EXIST for any other special method.
	* Update for issue 4385.
	*/
	@:overload @:protected private function handleNullServant(operation : String, nserv : com.sun.corba.se.spi.oa.NullServant) : Void;
	
	@:overload @:protected private function consumeServiceContexts(request : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:protected private function dispatchToServant(servant : Dynamic, req : com.sun.corba.se.spi.protocol.CorbaMessageMediator, objectId : java.NativeArray<java.StdTypes.Int8>, objectAdapter : com.sun.corba.se.spi.oa.ObjectAdapter) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:protected private function handleDynamicResult(sreq : com.sun.corba.se.impl.corba.ServerRequestImpl, req : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:protected private function sendingReply(req : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	/** Must always be called, just after the servant's method returns.
	*  Creates the ReplyMessage header and puts in the transaction context
	*  if necessary.
	*/
	@:overload @:protected private function sendingReply(req : com.sun.corba.se.spi.protocol.CorbaMessageMediator, excany : org.omg.CORBA.Any) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	/**
	* Handles setting the connection's code sets if required.
	* Returns true if the CodeSetContext was in the request, false
	* otherwise.
	*/
	@:overload @:protected private function processCodeSetContext(request : com.sun.corba.se.spi.protocol.CorbaMessageMediator, contexts : com.sun.corba.se.spi.servicecontext.ServiceContexts) : Bool;
	
	@:overload @:protected private function dprint(msg : String) : Void;
	
	@:overload @:protected private function opAndId(mediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : String;
	
	
}

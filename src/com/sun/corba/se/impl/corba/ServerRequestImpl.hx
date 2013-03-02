package com.sun.corba.se.impl.corba;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class ServerRequestImpl extends org.omg.CORBA.ServerRequest
{
	@:overload public function new(req : com.sun.corba.se.spi.protocol.CorbaMessageMediator, orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload public function operation() : String;
	
	@:overload public function arguments(args : org.omg.CORBA.NVList) : Void;
	
	@:overload public function set_result(res : org.omg.CORBA.Any) : Void;
	
	@:overload public function set_exception(exc : org.omg.CORBA.Any) : Void;
	
	/** This is called from the ORB after the DynamicImplementation.invoke
	*  returns. Here we set the result if result() has not already been called.
	*  @return the exception if there is one (then ORB will not call
	*  marshalReplyParams()) otherwise return null.
	*/
	@:overload public function checkResultCalled() : org.omg.CORBA.Any;
	
	/** This is called from the ORB after the DynamicImplementation.invoke
	*  returns. Here we marshal the return value and inout/out params.
	*/
	@:overload public function marshalReplyParams(os : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload public function ctx() : org.omg.CORBA.Context;
	
	
}

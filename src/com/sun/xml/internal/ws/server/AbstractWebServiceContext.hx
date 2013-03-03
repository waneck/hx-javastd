package com.sun.xml.internal.ws.server;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractWebServiceContext implements com.sun.xml.internal.ws.api.server.WSWebServiceContext
{
	@:overload @:public public function new(endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : Void;
	
	@:overload @:public public function getMessageContext() : javax.xml.ws.handler.MessageContext;
	
	@:overload @:public public function getUserPrincipal() : java.security.Principal;
	
	@:overload @:public public function isUserInRole(role : String) : Bool;
	
	@:overload @:public public function getEndpointReference(referenceParameters : java.NativeArray<org.w3c.dom.Element>) : javax.xml.ws.EndpointReference;
	
	@:overload @:public public function getEndpointReference<T : javax.xml.ws.EndpointReference>(clazz : Class<T>, referenceParameters : java.NativeArray<org.w3c.dom.Element>) : T;
	
	/**
	* Obtains the request packet that is being processed.
	* @return Packet for the request
	*/
	@:overload @:public public function getRequestPacket() : com.sun.xml.internal.ws.api.message.Packet;
	
	
}

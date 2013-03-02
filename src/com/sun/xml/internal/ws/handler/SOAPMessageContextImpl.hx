package com.sun.xml.internal.ws.handler;
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
@:internal extern class SOAPMessageContextImpl extends com.sun.xml.internal.ws.handler.MessageUpdatableContext implements javax.xml.ws.handler.soap.SOAPMessageContext
{
	@:overload public function new(binding : com.sun.xml.internal.ws.api.WSBinding, packet : com.sun.xml.internal.ws.api.message.Packet, roles : java.util.Set<String>) : Void;
	
	@:overload public function getMessage() : javax.xml.soap.SOAPMessage;
	
	@:overload public function setMessage(soapMsg : javax.xml.soap.SOAPMessage) : Void;
	
	@:overload private function updateMessage() : Void;
	
	@:overload public function getHeaders(header : javax.xml.namespace.QName, jaxbContext : javax.xml.bind.JAXBContext, allRoles : Bool) : java.NativeArray<Dynamic>;
	
	@:overload public function getRoles() : java.util.Set<String>;
	
	
}

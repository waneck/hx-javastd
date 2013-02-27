package com.sun.xml.internal.ws.addressing;
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
extern class WsaServerTube extends com.sun.xml.internal.ws.addressing.WsaTube
{
	@:overload public function new(endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>, wsdlPort : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, binding : com.sun.xml.internal.ws.api.WSBinding, next : com.sun.xml.internal.ws.api.pipe.Tube) : Void;
	
	@:overload public function new(that : WsaServerTube, cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : Void;
	
	@:overload override public function copy(cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : WsaServerTube;
	
	@:overload override public function processRequest(request : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload private function isAnonymousRequired(wbo : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation) : Bool;
	
	@:overload private function checkAnonymousSemantics(wbo : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation, replyTo : com.sun.xml.internal.ws.api.addressing.WSEndpointReference, faultTo : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	@:overload override public function processResponse(response : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload override private function validateAction(packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload override private function checkMessageAddressingProperties(packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* @deprecated
	*      Use {@link JAXWSProperties#ADDRESSING_MESSAGEID}.
	*/
	public static var REQUEST_MESSAGE_ID(default, null) : String;
	
	
}
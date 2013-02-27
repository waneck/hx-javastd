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
extern class WsaClientTube extends com.sun.xml.internal.ws.addressing.WsaTube
{
	/**
	* WsaClientTube appears in the Tubeline only if addressing is enabled.
	* This tube checks the validity of addressing headers in the incoming messages
	* based on the WSDL model.
	* @author Rama Pulavarthi
	* @author Arun Gupta
	*/
	private var expectReply : Bool;
	
	@:overload public function new(wsdlPort : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, binding : com.sun.xml.internal.ws.api.WSBinding, next : com.sun.xml.internal.ws.api.pipe.Tube) : Void;
	
	@:overload public function new(that : WsaClientTube, cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : Void;
	
	@:overload override public function copy(cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : WsaClientTube;
	
	@:overload override public function processRequest(request : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload override public function processResponse(response : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload override private function validateAction(packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	
}

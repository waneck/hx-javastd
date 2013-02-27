package com.sun.xml.internal.ws.server.provider;
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
@:internal extern class ProviderArgumentsBuilder<T>
{
	/**
	* Creates a fault {@link Message} from method invocation's exception
	*/
	@:overload @:abstract private function getResponseMessage(e : java.lang.Exception) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates {@link Message} from method invocation's return value
	*/
	@:overload private function getResponse(request : com.sun.xml.internal.ws.api.message.Packet, e : java.lang.Exception, port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.message.Packet;
	
	/**
	* Binds {@link com.sun.xml.internal.ws.api.message.Message} to method invocation parameter
	* @param packet
	*/
	@:overload @:abstract private function getParameter(packet : com.sun.xml.internal.ws.api.message.Packet) : T;
	
	@:overload @:abstract private function getResponseMessage(returnValue : T) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates {@link Packet} from method invocation's return value
	*/
	@:overload private function getResponse(request : com.sun.xml.internal.ws.api.message.Packet, returnValue : T, port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.message.Packet;
	
	@:overload public static function create(model : com.sun.xml.internal.ws.server.provider.ProviderEndpointModel<Dynamic>, binding : com.sun.xml.internal.ws.api.WSBinding) : ProviderArgumentsBuilder<Dynamic>;
	
	
}

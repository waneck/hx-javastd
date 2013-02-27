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
@:internal extern class WsaTube extends com.sun.xml.internal.ws.api.pipe.helper.AbstractFilterTubeImpl
{
	/**
	* Port that we are processing.
	*/
	private var wsdlPort(default, null) : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	private var binding(default, null) : com.sun.xml.internal.ws.api.WSBinding;
	
	private var addressingVersion(default, null) : com.sun.xml.internal.ws.api.addressing.AddressingVersion;
	
	private var soapVersion(default, null) : com.sun.xml.internal.ws.api.SOAPVersion;
	
	@:overload public function new(wsdlPort : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, binding : com.sun.xml.internal.ws.api.WSBinding, next : com.sun.xml.internal.ws.api.pipe.Tube) : Void;
	
	@:overload public function new(that : WsaTube, cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : Void;
	
	@:overload override public function processException(t : java.lang.Throwable) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload private function getTubeHelper() : com.sun.xml.internal.ws.addressing.WsaTubeHelper;
	
	/**
	* Validates the inbound message. If an error is found, create
	* a fault message and returns that. Otherwise
	* it will pass through the parameter 'packet' object to the return value.
	*/
	@:overload private function validateInboundHeaders(packet : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.message.Packet;
	
	/**
	* This method checks all the WS-Addressing headers are valid and as per the spec definded rules.
	* Mainly it checks the cardinality of the WSA headers and checks that mandatory headers exist.
	* It also checks if the SOAPAction is equal to wsa:Action value when non-empty.
	*
	* Override this method if you need to additional checking of headers other than just existence of the headers.
	* For ex: On server-side, check Anonymous and Non-Anonymous semantics in addition to checking cardinality.
	*
	* Override checkMandatoryHeaders(Packet p) to have different validation rules for different versions
	*
	* @param packet
	*/
	@:overload private function checkMessageAddressingProperties(packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* Checks the cardinality of WS-Addressing headers on an inbound {@link Packet}. This method
	* checks for the cardinality if WS-Addressing is engaged (detected by the presence of wsa:Action
	* header) or wsdl:required=true.
	*
	* @param packet The inbound packet.
	* @throws WebServiceException if:
	* <ul>
	* <li>there is an error reading ReplyTo or FaultTo</li>
	* <li>WS-Addressing is required and {@link Message} within <code>packet</code> is null</li>
	* <li>WS-Addressing is required and no headers are found in the {@link Message}</li>
	* <li>an uknown WS-Addressing header is present</li>
	* </ul>
	*/
	@:overload private function checkCardinality(packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload @:final private function getWSDLBoundOperation(packet : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation;
	
	@:overload private function validateSOAPAction(packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload @:abstract private function validateAction(packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* This should be called only when Addressing is engaged.
	*
	* Checks only for presence of wsa:Action and validates that wsa:Action
	* equals SOAPAction header when non-empty
	* Should be overridden if other wsa headers need to be checked based on version.
	*
	* @param packet
	* @param foundAction
	* @param foundTo
	* @param foundReplyTo
	* @param foundFaultTo
	* @param foundMessageId
	* @param foundRelatesTo
	*/
	@:overload private function checkMandatoryHeaders(packet : com.sun.xml.internal.ws.api.message.Packet, foundAction : Bool, foundTo : Bool, foundReplyTo : Bool, foundFaultTo : Bool, foundMessageId : Bool, foundRelatesTo : Bool) : Void;
	
	
}

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
extern class WsaTubeHelper
{
	/**
	* @author Rama Pulavarthi
	* @author Arun Gupta
	*/
	@:overload public function new(binding : com.sun.xml.internal.ws.api.WSBinding, seiModel : com.sun.xml.internal.ws.api.model.SEIModel, wsdlPort : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort) : Void;
	
	@:overload public function getFaultAction(requestPacket : com.sun.xml.internal.ws.api.message.Packet, responsePacket : com.sun.xml.internal.ws.api.message.Packet) : String;
	
	@:overload public function getInputAction(packet : com.sun.xml.internal.ws.api.message.Packet) : String;
	
	/**
	* This method gives the Input addressing Action for a message.
	* It gives the Action set in the wsdl operation for the corresponding payload.
	* If it is not explicitly set, it gives the soapAction
	* @param packet
	* @return input Action
	*/
	@:overload public function getEffectiveInputAction(packet : com.sun.xml.internal.ws.api.message.Packet) : String;
	
	@:overload public function isInputActionDefault(packet : com.sun.xml.internal.ws.api.message.Packet) : Bool;
	
	@:overload public function getSOAPAction(packet : com.sun.xml.internal.ws.api.message.Packet) : String;
	
	@:overload public function getOutputAction(packet : com.sun.xml.internal.ws.api.message.Packet) : String;
	
	@:overload public function createInvalidAddressingHeaderFault(e : com.sun.xml.internal.ws.addressing.model.InvalidAddressingHeaderException, av : com.sun.xml.internal.ws.api.addressing.AddressingVersion) : javax.xml.soap.SOAPFault;
	
	@:overload public function newMapRequiredFault(e : com.sun.xml.internal.ws.addressing.model.MissingAddressingHeaderException) : javax.xml.soap.SOAPFault;
	
	@:overload @:abstract public function getProblemActionDetail(action : String, element : org.w3c.dom.Element) : Void;
	
	@:overload @:abstract public function getInvalidMapDetail(name : javax.xml.namespace.QName, element : org.w3c.dom.Element) : Void;
	
	@:overload @:abstract public function getMapRequiredDetail(name : javax.xml.namespace.QName, element : org.w3c.dom.Element) : Void;
	
	private var seiModel : com.sun.xml.internal.ws.api.model.SEIModel;
	
	private var wsdlPort : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	private var binding : com.sun.xml.internal.ws.api.WSBinding;
	
	private var soapVer(default, null) : com.sun.xml.internal.ws.api.SOAPVersion;
	
	private var addVer(default, null) : com.sun.xml.internal.ws.api.addressing.AddressingVersion;
	
	
}

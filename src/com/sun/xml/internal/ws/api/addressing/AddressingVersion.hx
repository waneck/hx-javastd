package com.sun.xml.internal.ws.api.addressing;
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
extern enum AddressingVersion
{
	/**
	* 'Traits' object that absorbs differences of WS-Addressing versions.
	*
	* @author Arun Gupta
	*/
	W3C;
	MEMBER;
	
}

@:native('com$sun$xml$internal$ws$api$addressing$AddressingVersion$EPR') extern class AddressingVersion_EPR
{
	@:public @:final public var eprClass(default, null) : Class<javax.xml.ws.EndpointReference>;
	
	@:public @:final public var address(default, null) : String;
	
	@:public @:final public var serviceName(default, null) : String;
	
	@:public @:final public var portName(default, null) : String;
	
	@:public @:final public var portTypeName(default, null) : String;
	
	@:public @:final public var referenceParameters(default, null) : String;
	
	/**
	* Element under which metadata is specified.
	* In W3C, it is wsa:Metadata
	* In Member, it is directly under mex:MetadataSection
	*/
	@:public @:final public var wsdlMetadata(default, null) : javax.xml.namespace.QName;
	
	@:public @:final public var referenceProperties(default, null) : String;
	
	@:overload @:public public function new(eprClass : Class<javax.xml.ws.EndpointReference>, address : String, serviceName : String, portName : String, portTypeName : String, wsdlMetadata : javax.xml.namespace.QName, referenceParameters : String, referenceProperties : String) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$api$addressing$AddressingVersion$EPR') extern class AddressingVersion_EPR
{
	@:public @:final public var eprClass(default, null) : Class<javax.xml.ws.EndpointReference>;
	
	@:public @:final public var address(default, null) : String;
	
	@:public @:final public var serviceName(default, null) : String;
	
	@:public @:final public var portName(default, null) : String;
	
	@:public @:final public var portTypeName(default, null) : String;
	
	@:public @:final public var referenceParameters(default, null) : String;
	
	/**
	* Element under which metadata is specified.
	* In W3C, it is wsa:Metadata
	* In Member, it is directly under mex:MetadataSection
	*/
	@:public @:final public var wsdlMetadata(default, null) : javax.xml.namespace.QName;
	
	@:public @:final public var referenceProperties(default, null) : String;
	
	@:overload @:public public function new(eprClass : Class<javax.xml.ws.EndpointReference>, address : String, serviceName : String, portName : String, portTypeName : String, wsdlMetadata : javax.xml.namespace.QName, referenceParameters : String, referenceProperties : String) : Void;
	
	
}

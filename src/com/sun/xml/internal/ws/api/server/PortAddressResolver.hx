package com.sun.xml.internal.ws.api.server;
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
extern class PortAddressResolver
{
	/**
	* Gets the endpoint address for a WSDL port
	*
	* @param serviceName
	*       WSDL service name(wsd:service in WSDL) for which address is needed. Always non-null.
	* @param portName
	*       WSDL port name(wsdl:port in WSDL) for which address is needed. Always non-null.
	* @return
	*      The address needs to be put in WSDL for port element's location
	*      attribute. Can be null. If it is null, existing port address
	*      is written as it is (without any patching).
	*/
	@:overload @:public @:abstract public function getAddressFor(serviceName : javax.xml.namespace.QName, portName : String) : String;
	
	/**
	* Gets the endpoint address for a WSDL port
	*
	* @param serviceName
	*       WSDL service name(wsd:service in WSDL) for which address is needed. Always non-null.
	* @param portName
	*       WSDL port name(wsdl:port in WSDL) for which address is needed. Always non-null.
	* @param currentAddress
	*       Whatever current address specified for the port in the WSDL
	* @return
	*      The address needs to be put in WSDL for port element's location
	*      attribute. Can be null. If it is null, existing port address
	*      is written as it is (without any patching).
	*/
	@:overload @:public public function getAddressFor(serviceName : javax.xml.namespace.QName, portName : String, currentAddress : String) : String;
	
	
}

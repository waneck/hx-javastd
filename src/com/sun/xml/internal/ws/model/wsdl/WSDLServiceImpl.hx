package com.sun.xml.internal.ws.model.wsdl;
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
extern class WSDLServiceImpl extends com.sun.xml.internal.ws.model.wsdl.AbstractExtensibleImpl implements com.sun.xml.internal.ws.api.model.wsdl.WSDLService
{
	@:overload @:public public function new(xsr : javax.xml.stream.XMLStreamReader, parent : com.sun.xml.internal.ws.model.wsdl.WSDLModelImpl, name : javax.xml.namespace.QName) : Void;
	
	@:overload @:public public function getParent() : com.sun.xml.internal.ws.model.wsdl.WSDLModelImpl;
	
	@:overload @:public public function getName() : javax.xml.namespace.QName;
	
	@:overload @:public public function get(portName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.model.wsdl.WSDLPortImpl;
	
	@:overload @:public public function getFirstPort() : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	@:overload @:public public function getPorts() : java.lang.Iterable<com.sun.xml.internal.ws.model.wsdl.WSDLPortImpl>;
	
	/**
	* gets the first port in this service which matches the portType
	*/
	@:overload @:public public function getMatchingPort(portTypeName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.model.wsdl.WSDLPortImpl;
	
	/**
	* Populates the Map that holds port name as key and {@link WSDLPort} as the value.
	*
	* @param portName Must be non-null
	* @param port     Must be non-null
	* @throws NullPointerException if either opName or ptOp is null
	*/
	@:overload @:public public function put(portName : javax.xml.namespace.QName, port : com.sun.xml.internal.ws.model.wsdl.WSDLPortImpl) : Void;
	
	
}

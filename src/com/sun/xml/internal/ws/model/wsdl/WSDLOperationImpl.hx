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
extern class WSDLOperationImpl extends com.sun.xml.internal.ws.model.wsdl.AbstractExtensibleImpl implements com.sun.xml.internal.ws.api.model.wsdl.WSDLOperation
{
	@:protected private var messages : java.lang.Iterable<com.sun.xml.internal.ws.model.wsdl.WSDLMessageImpl>;
	
	@:overload @:public public function new(xsr : javax.xml.stream.XMLStreamReader, owner : com.sun.xml.internal.ws.model.wsdl.WSDLPortTypeImpl, name : javax.xml.namespace.QName) : Void;
	
	@:overload @:public public function getName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getParameterOrder() : String;
	
	@:overload @:public public function setParameterOrder(parameterOrder : String) : Void;
	
	@:overload @:public public function getInput() : com.sun.xml.internal.ws.model.wsdl.WSDLInputImpl;
	
	@:overload @:public public function setInput(input : com.sun.xml.internal.ws.model.wsdl.WSDLInputImpl) : Void;
	
	@:overload @:public public function getOutput() : com.sun.xml.internal.ws.model.wsdl.WSDLOutputImpl;
	
	@:overload @:public public function isOneWay() : Bool;
	
	@:overload @:public public function setOutput(output : com.sun.xml.internal.ws.model.wsdl.WSDLOutputImpl) : Void;
	
	@:overload @:public public function getFaults() : java.lang.Iterable<com.sun.xml.internal.ws.model.wsdl.WSDLFaultImpl>;
	
	@:overload @:public public function getFault(faultDetailName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.model.wsdl.WSDLFault;
	
	@:overload @:public public function getPortTypeName() : javax.xml.namespace.QName;
	
	@:overload @:public public function addFault(fault : com.sun.xml.internal.ws.model.wsdl.WSDLFaultImpl) : Void;
	
	@:overload @:public public function freez(root : com.sun.xml.internal.ws.model.wsdl.WSDLModelImpl) : Void;
	
	
}

package com.sun.xml.internal.ws.api.model.wsdl;
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
extern interface WSDLOperation extends com.sun.xml.internal.ws.api.model.wsdl.WSDLObject extends com.sun.xml.internal.ws.api.model.wsdl.WSDLExtensible
{
	/**
	* Gets the name of the wsdl:portType/wsdl:operation@name attribute value as local name and wsdl:definitions@targetNamespace
	* as the namespace uri.
	*/
	@:overload public function getName() : javax.xml.namespace.QName;
	
	/**
	* Gets the wsdl:input of this operation
	*/
	@:overload public function getInput() : com.sun.xml.internal.ws.api.model.wsdl.WSDLInput;
	
	/**
	* Gets the wsdl:output of this operation.
	*
	* @return
	*      null if this is an one-way operation.
	*/
	@:overload public function getOutput() : com.sun.xml.internal.ws.api.model.wsdl.WSDLOutput;
	
	/**
	* Returns true if this operation is an one-way operation.
	*/
	@:overload public function isOneWay() : Bool;
	
	/**
	* Gets the {@link WSDLFault} corresponding to wsdl:fault of this operation.
	*/
	@:overload public function getFaults() : java.lang.Iterable<com.sun.xml.internal.ws.api.model.wsdl.WSDLFault>;
	
	/**
	* Gives {@link WSDLFault} for the given soap fault detail value.
	*
	* <pre>
	*
	* Given a wsdl fault:
	*
	* &lt;wsdl:message nae="faultMessage">
	*  &lt;wsdl:part name="fault" element="<b>ns:myException</b>/>
	* &lt;/wsdl:message>
	*
	* &lt;wsdl:portType>
	*  &lt;wsdl:operation ...>
	*      &lt;wsdl:fault name="aFault" message="faultMessage"/>
	*  &lt;/wsdl:operation>
	* &lt;wsdl:portType>
	*
	*
	* For example given a soap 11 soap message:
	*
	* &lt;soapenv:Fault>
	*      ...
	*      &lt;soapenv:detail>
	*          &lt;<b>ns:myException</b>>
	*              ...
	*          &lt;/ns:myException>
	*      &lt;/soapenv:detail>
	*
	* QName faultQName = new QName(ns, "myException");
	* WSDLFault wsdlFault  = getFault(faultQName);
	*
	* The above call will return a WSDLFault that abstracts wsdl:portType/wsdl:operation/wsdl:fault.
	*
	* </pre>
	*
	* @param faultDetailName tag name of the element inside soaenv:Fault/detail/, must be non-null.
	* @return returns null if a wsdl fault corresponding to the detail entry name not found.
	*/
	@:overload public function getFault(faultDetailName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.model.wsdl.WSDLFault;
	
	/**
	* Gives the enclosing wsdl:portType@name attribute value.
	*/
	@:overload public function getPortTypeName() : javax.xml.namespace.QName;
	
	
}

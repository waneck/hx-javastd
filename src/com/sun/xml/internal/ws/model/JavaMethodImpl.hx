package com.sun.xml.internal.ws.model;
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
extern class JavaMethodImpl implements com.sun.xml.internal.ws.api.model.JavaMethod
{
	/**
	* @param owner
	* @param method : Implementation class method
	* @param seiMethod : corresponding SEI Method.
	*                  Is there is no SEI, it should be Implementation class method
	*/
	@:overload @:public public function new(owner : com.sun.xml.internal.ws.model.AbstractSEIModelImpl, method : java.lang.reflect.Method, seiMethod : java.lang.reflect.Method) : Void;
	
	@:overload @:public public function getOwner() : com.sun.xml.internal.ws.api.model.SEIModel;
	
	/**
	* @see {@link JavaMethod}
	*
	* @return Returns the method.
	*/
	@:overload @:public public function getMethod() : java.lang.reflect.Method;
	
	/**
	* @see {@link JavaMethod}
	*
	* @return Returns the SEI method where annotations are present
	*/
	@:overload @:public public function getSEIMethod() : java.lang.reflect.Method;
	
	/**
	* @return Returns the mep.
	*/
	@:overload @:public public function getMEP() : com.sun.xml.internal.ws.api.model.MEP;
	
	/**
	* @return the Binding object
	*/
	@:overload @:public public function getBinding() : com.sun.xml.internal.ws.model.soap.SOAPBindingImpl;
	
	/**
	* Returns the {@link WSDLBoundOperation} Operation associated with {@link this}
	* operation.
	*
	* @return the WSDLBoundOperation for this JavaMethod
	*/
	@:overload @:public public function getOperation() : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation;
	
	@:overload @:public public function setOperationName(name : String) : Void;
	
	@:overload @:public public function getOperationName() : String;
	
	@:overload @:public public function getRequestMessageName() : String;
	
	@:overload @:public public function getResponseMessageName() : String;
	
	/**
	* @return soap:Body's first child name for request message.
	*/
	@:overload @:public public function getRequestPayloadName() : javax.xml.namespace.QName;
	
	/**
	* @return soap:Body's first child name for response message.
	*/
	@:overload @:public public function getResponsePayloadName() : javax.xml.namespace.QName;
	
	/**
	* @return returns unmodifiable list of request parameters
	*/
	@:overload @:public public function getRequestParameters() : java.util.List<com.sun.xml.internal.ws.model.ParameterImpl>;
	
	/**
	* @return returns unmodifiable list of response parameters
	*/
	@:overload @:public public function getResponseParameters() : java.util.List<com.sun.xml.internal.ws.model.ParameterImpl>;
	
	/**
	* @return Returns number of java method parameters - that will be all the
	*         IN, INOUT and OUT holders
	*
	* @deprecated no longer use in the new architecture
	*/
	@:overload @:public public function getInputParametersCount() : Int;
	
	/**
	* @param exceptionClass
	* @return CheckedException corresponding to the exceptionClass. Returns
	*         null if not found.
	*/
	@:overload @:public public function getCheckedException(exceptionClass : Class<Dynamic>) : com.sun.xml.internal.ws.model.CheckedExceptionImpl;
	
	/**
	* @return a list of checked Exceptions thrown by this method
	*/
	@:overload @:public public function getCheckedExceptions() : java.util.List<com.sun.xml.internal.ws.model.CheckedExceptionImpl>;
	
	@:overload @:public public function getInputAction() : String;
	
	@:overload @:public public function getOutputAction() : String;
	
	/**
	* @param detailType
	* @return Gets the CheckedException corresponding to detailType. Returns
	*         null if no CheckedExcpetion with the detailType found.
	*/
	@:overload @:public public function getCheckedException(detailType : com.sun.xml.internal.bind.api.TypeReference) : com.sun.xml.internal.ws.model.CheckedExceptionImpl;
	
	/**
	* Returns if the java method  is async
	* @return if this is an Asynch
	*/
	@:overload @:public public function isAsync() : Bool;
	
	
}

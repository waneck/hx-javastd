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
extern class RuntimeModeler
{
	/**
	*
	*/
	public static var PD_JAXWS_PACKAGE_PD(default, null) : String;
	
	/**
	*
	*/
	public static var JAXWS_PACKAGE_PD(default, null) : String;
	
	public static var RESPONSE(default, null) : String;
	
	public static var RETURN(default, null) : String;
	
	public static var BEAN(default, null) : String;
	
	public static var SERVICE(default, null) : String;
	
	public static var PORT(default, null) : String;
	
	public static var HOLDER_CLASS(default, null) : Class<Dynamic>;
	
	public static var REMOTE_EXCEPTION_CLASS(default, null) : Class<java.rmi.RemoteException>;
	
	public static var RUNTIME_EXCEPTION_CLASS(default, null) : Class<java.lang.RuntimeException>;
	
	public static var EXCEPTION_CLASS(default, null) : Class<java.lang.Exception>;
	
	@:overload public function new(portClass : Class<Dynamic>, serviceName : javax.xml.namespace.QName, bindingId : com.sun.xml.internal.ws.api.BindingID, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : Void;
	
	/**
	*
	* creates an instance of RunTimeModeler given a <code>sei</code> and <code>binding</code>
	* @param portClass The SEI class to be modeled.
	* @param serviceName The ServiceName to use instead of one calculated from the implementation class
	* @param wsdlPort {@link com.sun.xml.internal.ws.api.model.wsdl.WSDLPort}
	* @param features web service features
	*/
	@:overload public function new(portClass : Class<Dynamic>, serviceName : javax.xml.namespace.QName, wsdlPort : com.sun.xml.internal.ws.model.wsdl.WSDLPortImpl, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : Void;
	
	/**
	* sets the classloader to be used when loading classes by the <code>RuntimeModeler</code>.
	* @param classLoader ClassLoader used to load classes
	*/
	@:overload public function setClassLoader(classLoader : java.lang.ClassLoader) : Void;
	
	/**
	* sets the PortName to be used by the <code>RuntimeModeler</code>.
	* @param portName The PortName to be used instead of the PortName
	* retrieved via annotations
	*/
	@:overload public function setPortName(portName : javax.xml.namespace.QName) : Void;
	
	/**
	* builds the runtime model from the <code>portClass</code> using the binding ID <code>bindingId</code>.
	* @return the runtime model for the <code>portClass</code>.
	*/
	@:overload public function buildRuntimeModel() : com.sun.xml.internal.ws.model.AbstractSEIModelImpl;
	
	/**
	* creates a runtime model <code>SOAPBinding</code> from a <code>javax.jws.soap.SOAPBinding</code> object
	* @param soapBinding the <code>javax.jws.soap.SOAPBinding</code> to model
	* @return returns the runtime model SOAPBinding corresponding to <code>soapBinding</code>
	*/
	@:overload private function createBinding(soapBinding : javax.jws.soap.SOAPBinding) : com.sun.xml.internal.ws.model.soap.SOAPBindingImpl;
	
	/**
	* gets the namespace <code>String</code> for a given <code>packageName</code>
	* @param packageName the name of the package used to find a namespace.
	*      can be empty.
	* @return the namespace for the specified <code>packageName</code>
	*/
	@:overload public static function getNamespace(packageName : String) : String;
	
	/**
	* creates the runtime model for a method on the <code>portClass</code>
	* @param method the method to model
	*/
	@:overload private function processMethod(method : java.lang.reflect.Method) : Void;
	
	/**
	* models a document/literal wrapped method
	* @param javaMethod the runtime model <code>JavaMethod</code> instance being created
	* @param methodName the runtime model <code>JavaMethod</code> instance being created
	* @param operationName the runtime model <code>JavaMethod</code> instance being created
	* @param method the <code>method</code> to model
	*/
	@:overload private function processDocWrappedMethod(javaMethod : com.sun.xml.internal.ws.model.JavaMethodImpl, methodName : String, operationName : String, method : java.lang.reflect.Method) : Void;
	
	/**
	* models a rpc/literal method
	* @param javaMethod the runtime model <code>JavaMethod</code> instance being created
	* @param methodName the name of the <code>method</code> being modeled.
	* @param operationName the WSDL operation name for this <code>method</code>
	* @param method the runtime model <code>JavaMethod</code> instance being created
	*/
	@:overload private function processRpcMethod(javaMethod : com.sun.xml.internal.ws.model.JavaMethodImpl, methodName : String, operationName : String, method : java.lang.reflect.Method) : Void;
	
	/**
	* models the exceptions thrown by <code>method</code> and adds them to the <code>javaMethod</code>
	* runtime model object
	* @param javaMethod the runtime model object to add the exception model objects to
	* @param method the <code>method</code> from which to find the exceptions to model
	*/
	@:overload private function processExceptions(javaMethod : com.sun.xml.internal.ws.model.JavaMethodImpl, method : java.lang.reflect.Method) : Void;
	
	/**
	* returns the method that corresponds to "getFaultInfo".  Returns null if this is not an
	* exception generated from a WSDL
	* @param exception the class to search for the "getFaultInfo" method
	* @return the method named "getFaultInfo" if this is an exception generated from WSDL or an
	* exception that contains the <code>WebFault</code> annotation.  Otherwise it returns null
	*/
	@:overload private function getWSDLExceptionFaultInfo(exception : Class<Dynamic>) : java.lang.reflect.Method;
	
	/**
	* models a document/literal bare method
	* @param javaMethod the runtime model <code>JavaMethod</code> instance being created
	* @param operationName the runtime model <code>JavaMethod</code> instance being created
	* @param method the runtime model <code>JavaMethod</code> instance being created
	*/
	@:overload private function processDocBareMethod(javaMethod : com.sun.xml.internal.ws.model.JavaMethodImpl, operationName : String, method : java.lang.reflect.Method) : Void;
	
	/**
	* utility to capitalize the first letter in a string
	* @param name the string to capitalize
	* @return the capitalized string
	*/
	@:overload public static function capitalize(name : String) : String;
	
	/**
	* gets the <code>wsdl:serviceName</code> for a given implementation class
	* @param implClass the implementation class
	* @return the <code>wsdl:serviceName</code> for the <code>implClass</code>
	*/
	@:overload public static function getServiceName(implClass : Class<Dynamic>) : javax.xml.namespace.QName;
	
	/**
	* gets the <code>wsdl:portName</code> for a given implementation class
	* @param implClass the implementation class
	* @param targetNamespace Namespace URI for service name
	* @return the <code>wsdl:portName</code> for the <code>implClass</code>
	*/
	@:overload public static function getPortName(implClass : Class<Dynamic>, targetNamespace : String) : javax.xml.namespace.QName;
	
	/**
	* Gives portType QName from implementatorClass or SEI
	* @param  implOrSeiClass cant be null
	* @return  <code>wsdl:portType@name</code>, null if it could not find the annotated class.
	*/
	@:overload public static function getPortTypeName(implOrSeiClass : Class<Dynamic>) : javax.xml.namespace.QName;
	
	
}

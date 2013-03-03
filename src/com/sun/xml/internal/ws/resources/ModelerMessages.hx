package com.sun.xml.internal.ws.resources;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ModelerMessages
{
	@:overload @:public @:static public static function localizableNESTED_MODELER_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* runtime modeler error: {0}
	*
	*/
	@:overload @:public @:static public static function NESTED_MODELER_ERROR(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_WSFEATURE_NO_FTRCONSTRUCTOR(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Annotation {0} is not recognizable, atleast one constructor of {1} should be marked with @FeatureConstructor
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_WSFEATURE_NO_FTRCONSTRUCTOR(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_WEBMETHOD_MUST_BE_PUBLIC(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* @WebMethod is not allowed on a non-public method {0}
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_WEBMETHOD_MUST_BE_PUBLIC(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_WRAPPER_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Wrapper class {0} is not found. Have you run APT to generate them?
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_WRAPPER_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_MTOM_CONFLICT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Error in  @BindingType: MTOM Configuration in binding identifier {0} conflicts with feature @MTOM {1}
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_MTOM_CONFLICT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_FEATURE_CONFLICT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Feature {0} in implementation conflicts with {1} in WSDL configuration
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_FEATURE_CONFLICT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_INVALID_SOAPBINDING_PARAMETERSTYLE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Incorrect usage of Annotation {0} on {1}, ParameterStyle can only be WRAPPED with RPC Style Web service.
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_INVALID_SOAPBINDING_PARAMETERSTYLE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_WSFEATURE_MORETHANONE_FTRCONSTRUCTOR(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Annotation {0} is illegal, Only one constructor of {1} can be marked as @FeatureConstructor
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_WSFEATURE_MORETHANONE_FTRCONSTRUCTOR(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableNOT_A_VALID_BARE_METHOD(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* SEI {0} has method {1} annotated as BARE but it has more than one parameter bound to body. This is invalid. Please annotate the method with annotation: @SOAPBinding(parameterStyle=SOAPBinding.ParameterStyle.WRAPPED)
	*
	*/
	@:overload @:public @:static public static function NOT_A_VALID_BARE_METHOD(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_NO_PACKAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* A @WebService.targetNamespace must be specified on classes with no package.  Class: {0}
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_NO_PACKAGE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_NO_WEBSERVICE_ANNOTATION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* A WebService annotation is not present on class: {0}
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_NO_WEBSERVICE_ANNOTATION(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_ADDRESSING_RESPONSES_NOSUCHMETHOD(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* JAX-WS 2.1 API is loaded from {0}, But JAX-WS runtime requires JAX-WS 2.2 API. Use the endorsed standards override mechanism to load JAX-WS 2.2 API
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_ADDRESSING_RESPONSES_NOSUCHMETHOD(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_ONEWAY_OPERATION_NO_OUT_PARAMETERS(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* oneway operation should not have out parameters class: {0} method: {1}
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_ONEWAY_OPERATION_NO_OUT_PARAMETERS(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableUNABLE_TO_CREATE_JAXB_CONTEXT() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unable to create JAXBContext
	*
	*/
	@:overload @:public @:static public static function UNABLE_TO_CREATE_JAXB_CONTEXT() : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_NO_OPERATIONS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The web service defined by the class {0} does not contain any valid WebMethods.
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_NO_OPERATIONS(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_ONEWAY_OPERATION_NO_CHECKED_EXCEPTIONS(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Oneway operation should not throw any checked exceptions class: {0} method: {1} throws: {2}
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_ONEWAY_OPERATION_NO_CHECKED_EXCEPTIONS(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_WEBMETHOD_MUST_BE_NONSTATIC(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* @WebMethod is not allowed on a static method {0}
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_WEBMETHOD_MUST_BE_NONSTATIC(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_METHOD_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* method: {0} could not be found on class: {1}
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_METHOD_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_CLASS_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* class: {0} could not be found
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_CLASS_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_SOAPBINDING_CONFLICT() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* SOAPBinding Style {1} for method {2} conflicts with global SOAPBinding Style {3}
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_SOAPBINDING_CONFLICT() : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_CANNOT_GET_SERVICE_NAME_FROM_INTERFACE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The serviceName cannot be retrieved from an interface.  class {0}
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_CANNOT_GET_SERVICE_NAME_FROM_INTERFACE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_ENDPOINT_INTERFACE_NO_WEBSERVICE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The Endpoint Interface: {0} does not have WebService Annotation
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_ENDPOINT_INTERFACE_NO_WEBSERVICE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIMEMODELER_INVALID_SOAPBINDING_ON_METHOD(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid annotation: {0} on Method {1} in Class {2}, A method cannot be annotated with @SOAPBinding with Style "RPC"
	*
	*/
	@:overload @:public @:static public static function RUNTIMEMODELER_INVALID_SOAPBINDING_ON_METHOD(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_PORTNAME_SERVICENAME_NAMESPACE_MISMATCH(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The namespace of the serviceName "{0}" and the namespace of the portName "{1}" must match
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_PORTNAME_SERVICENAME_NAMESPACE_MISMATCH(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_WSFEATURE_ILLEGAL_FTRCONSTRUCTOR(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Annotation {0} is illegal, In {1} @FeatureConstructor value does n't match the constructor parameters
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_WSFEATURE_ILLEGAL_FTRCONSTRUCTOR(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_MODELER_WEBMETHOD_MUST_BE_NONSTATICFINAL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* @WebMethod is not allowed on a static or final method {0}
	*
	*/
	@:overload @:public @:static public static function RUNTIME_MODELER_WEBMETHOD_MUST_BE_NONSTATICFINAL(arg0 : Dynamic) : String;
	
	
}

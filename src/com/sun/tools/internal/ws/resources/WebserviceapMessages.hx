package com.sun.tools.internal.ws.resources;
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
extern class WebserviceapMessages
{
	@:overload @:public @:static public static function localizableWEBSERVICEAP_ENDPOINTINTERFACES_DO_NOT_MATCH(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The endpoint interface {0} does not match the interface {1}.
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_ENDPOINTINTERFACES_DO_NOT_MATCH(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_INVALID_WEBMETHOD_ELEMENT_WITH_EXCLUDE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The @javax.jws.WebMethod.{0} element cannot be specified with the @javax.jws.WebMethod.exclude element. Class: {1} method: {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_INVALID_WEBMETHOD_ELEMENT_WITH_EXCLUDE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_SEI_CANNOT_CONTAIN_CONSTANT_VALUES(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* An service endpoint interface cannot contain constant declaration: Interface: {0} field: {1}.
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_SEI_CANNOT_CONTAIN_CONSTANT_VALUES(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_INVALID_SOAPBINDING_PARAMETERSTYLE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Incorrect usage of Annotation {0} on {1}, ParameterStyle can only be WRAPPED with RPC Style Web service.
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_INVALID_SOAPBINDING_PARAMETERSTYLE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_RPC_LITERAL_PARAMETERS_MUST_HAVE_WEBPARAM(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* All rpc literal parameters must have a WebParam annotation.  Class: {0} method: {1} parameter {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_RPC_LITERAL_PARAMETERS_MUST_HAVE_WEBPARAM(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_METHOD_EXCEPTION_BEAN_NAME_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Exception bean names must be unique and must not clash with other generated classes.  Class: {0} exception {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_METHOD_EXCEPTION_BEAN_NAME_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_WEBSERVICE_AND_WEBSERVICEPROVIDER(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Classes cannot be annotated with both @javax.jws.WebService and @javax.xml.ws.WebServiceProvider.  Class: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_WEBSERVICE_AND_WEBSERVICEPROVIDER(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_WEBSERVICE_NO_DEFAULT_CONSTRUCTOR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Classes annotated with @javax.jws.WebService must have a public default constructor. Class: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_WEBSERVICE_NO_DEFAULT_CONSTRUCTOR(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_DOC_BARE_NO_OUT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Document/literal bare methods with no return type or OUT/INOUT parameters must be annotated as @Oneway. Class: {0}, method: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_DOC_BARE_NO_OUT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_FAILED_TO_PARSE_HANDLERCHAIN_FILE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Failed to parse HandlerChain file. Class: {0}, file: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_FAILED_TO_PARSE_HANDLERCHAIN_FILE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_JAVA_TYPE_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The type: {0} was not found in the mapping
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_JAVA_TYPE_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_ONEWAY_OPERATION_CANNOT_DECLARE_EXCEPTIONS(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The method {1} of class {0} is annotated @Oneway but declares the exception {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_ONEWAY_OPERATION_CANNOT_DECLARE_EXCEPTIONS(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_WEBSERVICE_METHOD_IS_STATIC_OR_FINAL(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Method annotated with @javax.jws.WebMethod must not be static or final. Class: {0} Method: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_WEBSERVICE_METHOD_IS_STATIC_OR_FINAL(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_ONEWAY_OPERATION_CANNOT_HAVE_RETURN_TYPE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The method {1} of class {0} is annotated @Oneway but has a return type.
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_ONEWAY_OPERATION_CANNOT_HAVE_RETURN_TYPE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_WARNING(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* warning: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_WARNING(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_METHOD_RESPONSE_WRAPPER_BEAN_NAME_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Response wrapper bean names must be unique and must not clash with other generated classes.  Class: {0} method {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_METHOD_RESPONSE_WRAPPER_BEAN_NAME_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_ENDPOINTINTERFACE_ON_INTERFACE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Service endpointpoint interface: {0} has cannot have a WebService.endpointInterface annotation: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_ENDPOINTINTERFACE_ON_INTERFACE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_NESTED_MODEL_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* modeler error: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_NESTED_MODEL_ERROR(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_ONEWAY_AND_OUT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* @Oneway methods cannot have out parameters. Class: {0} method {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_ONEWAY_AND_OUT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_RPC_LITERAL_WEBPARAMS_MUST_SPECIFY_NAME(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* All rpc literal WebParams must specify a name.  Class: {0} method {1} paramter {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_RPC_LITERAL_WEBPARAMS_MUST_SPECIFY_NAME(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_INVALID_SEI_ANNOTATION_ELEMENT_EXCLUDE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The @javax.jws.WebMethod({0}) cannot be used on a service endpoint interface. Class: {1} method: {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_INVALID_SEI_ANNOTATION_ELEMENT_EXCLUDE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_CLASS_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Class Not Found: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_CLASS_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_ENDPOINTINTEFACE_PLUS_ELEMENT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The @javax.jws.WebService.{0} element cannot be used in with @javax.jws.WebService.endpointInterface element.
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_ENDPOINTINTEFACE_PLUS_ELEMENT(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_CANNOT_COMBINE_HANDLERCHAIN_SOAPMESSAGEHANDLERS() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* You cannot specify both HanlderChain and SOAPMessageHandlers annotations
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_CANNOT_COMBINE_HANDLERCHAIN_SOAPMESSAGEHANDLERS() : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_WEBSERVICE_CLASS_IS_INNERCLASS_NOT_STATIC(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Inner classes annotated with @javax.jws.WebService must be static. Class: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_WEBSERVICE_CLASS_IS_INNERCLASS_NOT_STATIC(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_NON_IN_PARAMETERS_MUST_BE_HOLDER(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Class: {0}, method: {1}, parameter: {2} is not WebParam.Mode.IN and is not of type javax.xml.ws.Holder.
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_NON_IN_PARAMETERS_MUST_BE_HOLDER(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_INVALID_SEI_ANNOTATION_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The @javax.jws.WebService.{0} element cannot be specified on a service endpoint interface. Class: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_INVALID_SEI_ANNOTATION_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_SUCCEEDED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Success
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_SUCCEEDED() : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_DOC_BARE_AND_NO_ONE_IN(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Document literal bare methods must have one non-header, IN/INOUT parameter.  Class: {0} Method: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_DOC_BARE_AND_NO_ONE_IN(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_WEBSERVICE_METHOD_IS_ABSTRACT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Classes annotated with @javax.jws.WebService must not have abstract methods. Class: {0} Method: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_WEBSERVICE_METHOD_IS_ABSTRACT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_DOCUMENT_LITERAL_BARE_METHOD_RETURN_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Document literal bare methods must have a unique result name return type combination.  Class {0} method: {1}, result name: {2} return type: {3}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_DOCUMENT_LITERAL_BARE_METHOD_RETURN_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_NO_WEBSERVICE_ENDPOINT_FOUND() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* A web service endpoint could not be found
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_NO_WEBSERVICE_ENDPOINT_FOUND() : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_FILE_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* error: file not found: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_FILE_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_INVALID_HANDLERCHAIN_FILE_NOHANDLER_CONFIG(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The handlerchain file {0} is invalid, it does not contain a handler-config element
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_INVALID_HANDLERCHAIN_FILE_NOHANDLER_CONFIG(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_HEADER_PARAMETERS_MUST_HAVE_WEBPARAM_NAME(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* All WebParam annotations on header parameters must specify a name.  Class: {0} method {1} paramter {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_HEADER_PARAMETERS_MUST_HAVE_WEBPARAM_NAME(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_METHOD_RETURN_TYPE_CANNOT_IMPLEMENT_REMOTE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Method return types cannot implement java.rmi.Remote.  Class: {0} method: {1} return type: {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_METHOD_RETURN_TYPE_CANNOT_IMPLEMENT_REMOTE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_ENDPOINTINTEFACE_PLUS_ANNOTATION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The @{0} annotation cannot be used in with @javax.jws.WebService.endpointInterface element.
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_ENDPOINTINTEFACE_PLUS_ANNOTATION(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_HOLDER_PARAMETERS_MUST_NOT_BE_IN_ONLY(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* javax.xml.ws.Holder parameters must not be annotated with the WebParam.Mode.IN property.  Class: {0} method: {1} parameter: {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_HOLDER_PARAMETERS_MUST_NOT_BE_IN_ONLY(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_DOCUMENT_LITERAL_BARE_MUST_HAVE_ONLY_ONE_IN_PARAMETER(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Document literal bare methods must have no more than 1 non-header in parameter. Class: {0} method: {1} number of non-header parameters: {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_DOCUMENT_LITERAL_BARE_MUST_HAVE_ONLY_ONE_IN_PARAMETER(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_DOC_BARE_RETURN_AND_OUT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Document/literal bare methods cannot have a return type and out parameters. Class: {0}, method: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_DOC_BARE_RETURN_AND_OUT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_METHOD_PARAMETER_TYPES_CANNOT_IMPLEMENT_REMOTE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Method parameter types cannot implement java.rmi.Remote.  Class: {0} method: {1} parameter: {2} type: {3}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_METHOD_PARAMETER_TYPES_CANNOT_IMPLEMENT_REMOTE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_COMPILATION_FAILED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* compilation failed, errors should have been reported
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_COMPILATION_FAILED() : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_MODEL_ALREADY_EXISTS() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* model already exists
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_MODEL_ALREADY_EXISTS() : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_COULD_NOT_FIND_TYPEDECL(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Could not get TypeDeclaration for: {0} in apt round: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_COULD_NOT_FIND_TYPEDECL(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_WEBSERVICE_CLASS_NOT_PUBLIC(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Classes annotated with @javax.jws.WebService must be public. Class: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_WEBSERVICE_CLASS_NOT_PUBLIC(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_DOCUMENT_LITERAL_BARE_METHOD_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Document literal bare methods must have unique parameter names.  Class: {0} method: {1} parameter name: {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_DOCUMENT_LITERAL_BARE_METHOD_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_RPC_SOAPBINDING_NOT_ALLOWED_ON_METHOD(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* SOAPBinding.Style.RPC binding annotations are not allowed on methods.  Class: {0} Method: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_RPC_SOAPBINDING_NOT_ALLOWED_ON_METHOD(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_NO_PACKAGE_CLASS_MUST_HAVE_TARGETNAMESPACE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* @javax.jws.Webservice annotated classes that do not belong to a package must have the @javax.jws.Webservice.targetNamespace element.  Class: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_NO_PACKAGE_CLASS_MUST_HAVE_TARGETNAMESPACE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_ENDPOINTINTERFACE_HAS_NO_WEBSERVICE_ANNOTATION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The endpoint interface {0} must have a WebService annotation
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_ENDPOINTINTERFACE_HAS_NO_WEBSERVICE_ANNOTATION(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_INFO(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* info: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_INFO(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_RPC_LITERAL_MUST_NOT_BE_BARE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* RPC literal SOAPBindings must have parameterStyle WRAPPPED. Class: {0}.
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_RPC_LITERAL_MUST_NOT_BE_BARE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_COULD_NOT_FIND_HANDLERCHAIN(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Could not find the handlerchain {0} in the handler file {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_COULD_NOT_FIND_HANDLERCHAIN(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_RPC_ENCODED_NOT_SUPPORTED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The {0} class has a rpc/encoded SOAPBinding.  Rpc/encoded SOAPBindings are not supported in JAXWS 2.0.
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_RPC_ENCODED_NOT_SUPPORTED(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* error: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_ERROR(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_ENDPOINTINTERFACE_CLASS_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The endpointInterface class {0} could not be found
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_ENDPOINTINTERFACE_CLASS_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_METHOD_NOT_IMPLEMENTED(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Methods in an endpointInterface must be implemented in the implementation class.  Interface Class:{0} Implementation Class:{1} Method: {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_METHOD_NOT_IMPLEMENTED(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICE_ENCODED_NOT_SUPPORTED(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The {0} class has invalid SOAPBinding annotation. {1}/encoded SOAPBinding is not supported
	*
	*/
	@:overload @:public @:static public static function WEBSERVICE_ENCODED_NOT_SUPPORTED(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_HANDLERCLASS_NOTSPECIFIED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* A handler in the HandlerChain file: {0} does not specify a handler-class
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_HANDLERCLASS_NOTSPECIFIED(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_FAILED_TO_FIND_HANDLERCHAIN_FILE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Cannot find HandlerChain file. class: {0}, file: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_FAILED_TO_FIND_HANDLERCHAIN_FILE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_DOC_BARE_NO_RETURN_AND_NO_OUT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Document literal bare methods that do not have a return value must have a single OUT/INOUT parameter.  Class: {0} Method: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_DOC_BARE_NO_RETURN_AND_NO_OUT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_WEBSERVICE_CLASS_IS_ABSTRACT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Classes annotated with @javax.jws.WebService must not be abstract. Class: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_WEBSERVICE_CLASS_IS_ABSTRACT(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_INIT_PARAM_FORMAT_ERROR() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* a <init-param> element must have exactly 1 <param-name> and 1 <param-value>
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_INIT_PARAM_FORMAT_ERROR() : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_MIXED_BINDING_STYLE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Class: {0} contains mixed bindings.  SOAPBinding.Style.RPC and SOAPBinding.Style.DOCUMENT cannot be mixed.
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_MIXED_BINDING_STYLE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_METHOD_NOT_ANNOTATED(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The method {0} on class {1} is not annotated.
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_METHOD_NOT_ANNOTATED(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_ONEWAY_OPERATION_CANNOT_HAVE_HOLDERS(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The method {1} of class {0} is annotated @Oneway but contains inout or out paramerters (javax.xml.ws.Holder)
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_ONEWAY_OPERATION_CANNOT_HAVE_HOLDERS(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_DOCUMENT_LITERAL_BARE_CANNOT_HAVE_MORE_THAN_ONE_OUT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Document literal bare methods must have a return value or one out parameter.  Class: {0} Method: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_DOCUMENT_LITERAL_BARE_CANNOT_HAVE_MORE_THAN_ONE_OUT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_INVALID_SEI_ANNOTATION(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The @{0} annotation cannot be used on a service endpoint interface. Class: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_INVALID_SEI_ANNOTATION(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_OPERATION_NAME_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Operation names must be unique.  Class: {0} method: {1} operation name: {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_OPERATION_NAME_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_WEBSERVICE_CLASS_IS_FINAL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Classes annotated with @javax.jws.WebService must not be final. Class: {0}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_WEBSERVICE_CLASS_IS_FINAL(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_DOCUMENT_LITERAL_BARE_MUST_HAVE_ONE_IN_OR_OUT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Document literal bare methods must have at least one of: a return, an in parameter or an out parameter.  Class: {0} Method: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_DOCUMENT_LITERAL_BARE_MUST_HAVE_ONE_IN_OR_OUT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_METHOD_REQUEST_WRAPPER_BEAN_NAME_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Request wrapper bean names must be unique and must not clash with other generated classes.  Class: {0} method {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_METHOD_REQUEST_WRAPPER_BEAN_NAME_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_DOCUMENT_BARE_HOLDER_PARAMETERS_MUST_NOT_BE_INOUT(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* javax.xml.ws.Holder parameters in document bare operations must be WebParam.Mode.INOUT;  Class: {0} method: {1} parameter: {2}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_DOCUMENT_BARE_HOLDER_PARAMETERS_MUST_NOT_BE_INOUT(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWEBSERVICEAP_ONEWAY_AND_NOT_ONE_IN(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Document literal bare methods annotated with @javax.jws.Oneway must have one non-header IN parameter.  Class: {0} Method: {1}
	*
	*/
	@:overload @:public @:static public static function WEBSERVICEAP_ONEWAY_AND_NOT_ONE_IN(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	
}

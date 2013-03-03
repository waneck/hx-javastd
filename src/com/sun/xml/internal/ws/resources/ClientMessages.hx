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
extern class ClientMessages
{
	@:overload @:public @:static public static function localizableFAILED_TO_PARSE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Failed to access the WSDL at: {0}. It failed with:
	*  {1}.
	*
	*/
	@:overload @:public @:static public static function FAILED_TO_PARSE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableINVALID_BINDING_ID(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid binding id: {0}. Must be: {1}
	*
	*/
	@:overload @:public @:static public static function INVALID_BINDING_ID(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableEPR_WITHOUT_ADDRESSING_ON() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* EPR is specified without enabling WS-Addressing support.
	*
	*/
	@:overload @:public @:static public static function EPR_WITHOUT_ADDRESSING_ON() : String;
	
	@:overload @:public @:static public static function localizableINVALID_SERVICE_NO_WSDL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* No wsdl metadata for service: {0}, can't create proxy! Try creating Service by providing a WSDL URL
	*
	*/
	@:overload @:public @:static public static function INVALID_SERVICE_NO_WSDL(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableINVALID_SOAP_ROLE_NONE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Cannot set SOAP 1.2 role "none"
	*
	*/
	@:overload @:public @:static public static function INVALID_SOAP_ROLE_NONE() : String;
	
	@:overload @:public @:static public static function localizableUNDEFINED_BINDING(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Undefined binding: {0}
	*
	*/
	@:overload @:public @:static public static function UNDEFINED_BINDING(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableHTTP_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* HTTP Status-Code 404: Not Found - {0}
	*
	*/
	@:overload @:public @:static public static function HTTP_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableHTTP_CLIENT_CANNOT_CONNECT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* cannot connect to server: {0}
	*
	*/
	@:overload @:public @:static public static function HTTP_CLIENT_CANNOT_CONNECT(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableINVALID_EPR_PORT_NAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Endpoint Name specified in EPR {0}  is not a WSDL port QName, valid Ports are {1}
	*
	*/
	@:overload @:public @:static public static function INVALID_EPR_PORT_NAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableFAILED_TO_PARSE_WITH_MEX(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Failed to access the WSDL at: {0}. It failed with:
	*  {1}.
	* Retrying with MEX gave:
	*  {2}
	*
	*/
	@:overload @:public @:static public static function FAILED_TO_PARSE_WITH_MEX(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableHTTP_STATUS_CODE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The server sent HTTP status code {0}: {1}
	*
	*/
	@:overload @:public @:static public static function HTTP_STATUS_CODE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableINVALID_ADDRESS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid address: {0}
	*
	*/
	@:overload @:public @:static public static function INVALID_ADDRESS(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableUNDEFINED_PORT_TYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Undefined port type: {0}
	*
	*/
	@:overload @:public @:static public static function UNDEFINED_PORT_TYPE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDL_CONTAINS_NO_SERVICE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSDL {0} contains no service definition.
	*
	*/
	@:overload @:public @:static public static function WSDL_CONTAINS_NO_SERVICE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableINVALID_SOAP_ACTION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* A valid SOAPAction should be set in the RequestContext when Addressing is enabled, Use BindingProvider.SOAPACTION_URI_PROPERTY to set it.
	*
	*/
	@:overload @:public @:static public static function INVALID_SOAP_ACTION() : String;
	
	@:overload @:public @:static public static function localizableNON_LOGICAL_HANDLER_SET(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Cannot set {0} on binding. Handler must be a LogicalHandler.
	*
	*/
	@:overload @:public @:static public static function NON_LOGICAL_HANDLER_SET(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableLOCAL_CLIENT_FAILED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* local transport error: {0}
	*
	*/
	@:overload @:public @:static public static function LOCAL_CLIENT_FAILED(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableRUNTIME_WSDLPARSER_INVALID_WSDL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid WSDL {0}, expected {1} found {2} at (line{3})
	*
	*/
	@:overload @:public @:static public static function RUNTIME_WSDLPARSER_INVALID_WSDL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDL_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSDL url {0} is not accessible.
	*
	*/
	@:overload @:public @:static public static function WSDL_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableHTTP_CLIENT_FAILED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* HTTP transport error: {0}
	*
	*/
	@:overload @:public @:static public static function HTTP_CLIENT_FAILED(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableHTTP_CLIENT_CANNOT_CREATE_MESSAGE_FACTORY() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* cannot create message factory
	*
	*/
	@:overload @:public @:static public static function HTTP_CLIENT_CANNOT_CREATE_MESSAGE_FACTORY() : String;
	
	@:overload @:public @:static public static function localizableINVALID_SERVICE_NAME_NULL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0} is not a valid service
	*
	*/
	@:overload @:public @:static public static function INVALID_SERVICE_NAME_NULL(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableINVALID_WSDL_URL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid WSDL URL: {0}
	*
	*/
	@:overload @:public @:static public static function INVALID_WSDL_URL(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableHTTP_CLIENT_UNAUTHORIZED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* request requires HTTP authentication: {0}
	*
	*/
	@:overload @:public @:static public static function HTTP_CLIENT_UNAUTHORIZED(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableINVALID_PORT_NAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0} is not a valid port. Valid ports are: {1}
	*
	*/
	@:overload @:public @:static public static function INVALID_PORT_NAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableINVALID_SERVICE_NAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0} is not a valid service. Valid services are: {1}
	*
	*/
	@:overload @:public @:static public static function INVALID_SERVICE_NAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableUNSUPPORTED_OPERATION(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0} not supported with {1}. Must be: {2}
	*
	*/
	@:overload @:public @:static public static function UNSUPPORTED_OPERATION(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableFAILED_TO_PARSE_EPR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Failed to parse EPR: {0}
	*
	*/
	@:overload @:public @:static public static function FAILED_TO_PARSE_EPR(arg0 : Dynamic) : String;
	
	
}

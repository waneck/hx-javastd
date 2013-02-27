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
extern class DispatchMessages
{
	@:overload public static function localizableINVALID_NULLARG_XMLHTTP_REQUEST_METHOD(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* A XML/HTTP request using MessageContext.HTTP_REQUEST_METHOD equals {0} with a Null invocation Argument is not allowed. Must be: {1}
	*
	*/
	@:overload public static function INVALID_NULLARG_XMLHTTP_REQUEST_METHOD(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_SOAPMESSAGE_DISPATCH_MSGMODE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Can not create Dispatch<SOAPMessage> of {0}. Must be {1}.
	*
	*/
	@:overload public static function INVALID_SOAPMESSAGE_DISPATCH_MSGMODE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_RESPONSE_DESERIALIZATION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Failed to deserialize the response.
	*
	*/
	@:overload public static function INVALID_RESPONSE_DESERIALIZATION() : String;
	
	@:overload public static function localizableINVALID_QUERY_LEADING_CHAR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Leading '?' of MessageContext.QUERY_STRING: {0} is not valid. Remove '?' and run again.
	*
	*/
	@:overload public static function INVALID_QUERY_LEADING_CHAR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_QUERY_STRING(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unable to resolve endpoint address using the supplied query string: {0}.
	*
	*/
	@:overload public static function INVALID_QUERY_STRING(arg0 : Dynamic) : String;
	
	@:overload public static function localizableDUPLICATE_PORT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSDLPort {0} already exists. Can not create a port of the same QName.
	*
	*/
	@:overload public static function DUPLICATE_PORT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_DATASOURCE_DISPATCH_BINDING(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Can not create Dispatch<DataSource> with {0}. Must be: {1}
	*
	*/
	@:overload public static function INVALID_DATASOURCE_DISPATCH_BINDING(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_DATASOURCE_DISPATCH_MSGMODE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Can not create Dispatch<DataSource> of Service.Mode.PAYLOAD{0}. Must be: {1}
	*
	*/
	@:overload public static function INVALID_DATASOURCE_DISPATCH_MSGMODE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_NULLARG_SOAP_MSGMODE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* SOAP/HTTP Binding in {0} is not allowed with a null invocation argument. Must be: {1}
	*
	*/
	@:overload public static function INVALID_NULLARG_SOAP_MSGMODE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_URI(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Endpoint String: {0} is and invalid URI.
	*
	*/
	@:overload public static function INVALID_URI(arg0 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_SOAPMESSAGE_DISPATCH_BINDING(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Can not create Dispatch<SOAPMessage> with {0} Binding. Must be: {1} Binding.
	*
	*/
	@:overload public static function INVALID_SOAPMESSAGE_DISPATCH_BINDING(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_URI_PATH_QUERY(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unable to construct a URI with this path info {0} and this query string {1}.
	*
	*/
	@:overload public static function INVALID_URI_PATH_QUERY(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_RESPONSE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* No response returned.
	*
	*/
	@:overload public static function INVALID_RESPONSE() : String;
	
	@:overload public static function localizableINVALID_URI_RESOLUTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unable to resolve endpoint address using the supplied path: {0}.
	*
	*/
	@:overload public static function INVALID_URI_RESOLUTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_URI_DECODE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unable to decode the resolved endpoint using UTF-8 encoding.
	*
	*/
	@:overload public static function INVALID_URI_DECODE() : String;
	
	
}

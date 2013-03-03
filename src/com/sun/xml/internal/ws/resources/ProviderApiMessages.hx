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
extern class ProviderApiMessages
{
	@:overload @:public @:static public static function localizableNULL_ADDRESS_SERVICE_ENDPOINT() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Address in an EPR cannot be null, when serviceName or portName is null
	*
	*/
	@:overload @:public @:static public static function NULL_ADDRESS_SERVICE_ENDPOINT() : String;
	
	@:overload @:public @:static public static function localizableNO_WSDL_NO_PORT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSDL Metadata not available to create the proxy, either Service instance or ServiceEndpointInterface {0} should have WSDL information
	*
	*/
	@:overload @:public @:static public static function NO_WSDL_NO_PORT(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableNULL_SERVICE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* serviceName can't be null when portName is specified
	*
	*/
	@:overload @:public @:static public static function NULL_SERVICE() : String;
	
	@:overload @:public @:static public static function localizableNULL_ADDRESS() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Address in an EPR cannot be null
	*
	*/
	@:overload @:public @:static public static function NULL_ADDRESS() : String;
	
	@:overload @:public @:static public static function localizableNULL_PORTNAME() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* EPR does n't have EndpointName in the Metadata
	*
	*/
	@:overload @:public @:static public static function NULL_PORTNAME() : String;
	
	@:overload @:public @:static public static function localizableNOTFOUND_SERVICE_IN_WSDL(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Service: {0} not found in WSDL: {1}
	*
	*/
	@:overload @:public @:static public static function NOTFOUND_SERVICE_IN_WSDL(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableNULL_EPR() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* EndpointReference is null
	*
	*/
	@:overload @:public @:static public static function NULL_EPR() : String;
	
	@:overload @:public @:static public static function localizableNULL_WSDL() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* EPR does n't have WSDL Metadata which is needed for the current operation
	*
	*/
	@:overload @:public @:static public static function NULL_WSDL() : String;
	
	@:overload @:public @:static public static function localizableNOTFOUND_PORT_IN_WSDL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Port: {0} not a valid port in Service: {1} in WSDL: {2}
	*
	*/
	@:overload @:public @:static public static function NOTFOUND_PORT_IN_WSDL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableERROR_WSDL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Error in parsing WSDL: {0}
	*
	*/
	@:overload @:public @:static public static function ERROR_WSDL(arg0 : Dynamic) : String;
	
	
}

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
extern class UtilMessages
{
	@:overload @:public @:static public static function localizableUTIL_LOCATION(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* at line {0} of {1}
	*
	*/
	@:overload @:public @:static public static function UTIL_LOCATION(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableUTIL_FAILED_TO_PARSE_HANDLERCHAIN_FILE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Could not parse handler chain file {1} for class {0}
	*
	*/
	@:overload @:public @:static public static function UTIL_FAILED_TO_PARSE_HANDLERCHAIN_FILE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableUTIL_PARSER_WRONG_ELEMENT(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* found element "{1}", expected "{2}" in handler chain configuration (line {0})
	*
	*/
	@:overload @:public @:static public static function UTIL_PARSER_WRONG_ELEMENT(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableUTIL_HANDLER_CLASS_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "Class: {0} could not be found"
	*
	*/
	@:overload @:public @:static public static function UTIL_HANDLER_CLASS_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableUTIL_HANDLER_ENDPOINT_INTERFACE_NO_WEBSERVICE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "The Endpoint Interface: {0} does not have WebService Annotation"
	*
	*/
	@:overload @:public @:static public static function UTIL_HANDLER_ENDPOINT_INTERFACE_NO_WEBSERVICE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableUTIL_HANDLER_NO_WEBSERVICE_ANNOTATION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "A WebService annotation is not present on class: {0}"
	*
	*/
	@:overload @:public @:static public static function UTIL_HANDLER_NO_WEBSERVICE_ANNOTATION(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableUTIL_FAILED_TO_FIND_HANDLERCHAIN_FILE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Could not find handler chain file {1} for class {0}
	*
	*/
	@:overload @:public @:static public static function UTIL_FAILED_TO_FIND_HANDLERCHAIN_FILE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableUTIL_HANDLER_CANNOT_COMBINE_SOAPMESSAGEHANDLERS() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* You must use HanlderChain annotation, not SOAPMessageHandlers
	*
	*/
	@:overload @:public @:static public static function UTIL_HANDLER_CANNOT_COMBINE_SOAPMESSAGEHANDLERS() : String;
	
	
}

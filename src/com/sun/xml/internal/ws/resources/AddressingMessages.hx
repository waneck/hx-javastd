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
extern class AddressingMessages
{
	@:overload public static function localizableNON_ANONYMOUS_RESPONSE_ONEWAY() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring non-anonymous response for one-way message
	*
	*/
	@:overload public static function NON_ANONYMOUS_RESPONSE_ONEWAY() : String;
	
	@:overload public static function localizableNULL_WSA_HEADERS() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* No WS-Addressing headers found processing the server inbound request
	*
	*/
	@:overload public static function NULL_WSA_HEADERS() : String;
	
	@:overload public static function localizableUNKNOWN_WSA_HEADER() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unknown WS-Addressing header
	*
	*/
	@:overload public static function UNKNOWN_WSA_HEADER() : String;
	
	@:overload public static function localizableNULL_ACTION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Populating request Addressing headers and found null Action
	*
	*/
	@:overload public static function NULL_ACTION() : String;
	
	@:overload public static function localizableINVALID_WSAW_ANONYMOUS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid value obtained from wsaw:Anonymous: "{0}"
	*
	*/
	@:overload public static function INVALID_WSAW_ANONYMOUS(arg0 : Dynamic) : String;
	
	@:overload public static function localizableNULL_SOAP_VERSION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unexpected null SOAP version
	*
	*/
	@:overload public static function NULL_SOAP_VERSION() : String;
	
	@:overload public static function localizableWSDL_BOUND_OPERATION_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Cannot find an operation in wsdl:binding for "{0}"
	*
	*/
	@:overload public static function WSDL_BOUND_OPERATION_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableNON_UNIQUE_OPERATION_SIGNATURE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Operations in a port should have unique operation signature to successfuly identify a associated wsdl operation for a message. WSDL operation {0} and {1} have the same operation signature, wsa:Action "{2}" and request body block "{3}", Method dispatching may fail at runtime. Use unique wsa:Action for each operation
	*
	*/
	@:overload public static function NON_UNIQUE_OPERATION_SIGNATURE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : String;
	
	@:overload public static function localizableNON_ANONYMOUS_RESPONSE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Sending 202 and processing non-anonymous response
	*
	*/
	@:overload public static function NON_ANONYMOUS_RESPONSE() : String;
	
	@:overload public static function localizableVALIDATION_SERVER_NULL_ACTION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Validating inbound Addressing headers on server and found null Action
	*
	*/
	@:overload public static function VALIDATION_SERVER_NULL_ACTION() : String;
	
	@:overload public static function localizableFAULT_TO_CANNOT_PARSE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* FaultTo header cannot be parsed
	*
	*/
	@:overload public static function FAULT_TO_CANNOT_PARSE() : String;
	
	@:overload public static function localizableVALIDATION_CLIENT_NULL_ACTION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Validating inbound Addressing headers on client and found null Action
	*
	*/
	@:overload public static function VALIDATION_CLIENT_NULL_ACTION() : String;
	
	@:overload public static function localizableNULL_MESSAGE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Null message found when processing the server inbound request and WS-Addressing is required
	*
	*/
	@:overload public static function NULL_MESSAGE() : String;
	
	@:overload public static function localizableACTION_NOT_SUPPORTED_EXCEPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Action: "{0}" not supported
	*
	*/
	@:overload public static function ACTION_NOT_SUPPORTED_EXCEPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableNON_ANONYMOUS_RESPONSE_NULL_HEADERS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* No response headers found in non-anonymous response from "{0}"
	*
	*/
	@:overload public static function NON_ANONYMOUS_RESPONSE_NULL_HEADERS(arg0 : Dynamic) : String;
	
	@:overload public static function localizableNON_ANONYMOUS_RESPONSE_SENDING(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Sending non-anonymous reply to "{0}"
	*
	*/
	@:overload public static function NON_ANONYMOUS_RESPONSE_SENDING(arg0 : Dynamic) : String;
	
	@:overload public static function localizableREPLY_TO_CANNOT_PARSE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ReplyTo header cannot be parsed
	*
	*/
	@:overload public static function REPLY_TO_CANNOT_PARSE() : String;
	
	@:overload public static function localizableINVALID_ADDRESSING_HEADER_EXCEPTION(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid WS-Addressing header: "{0}",Reason: "{1}"
	*
	*/
	@:overload public static function INVALID_ADDRESSING_HEADER_EXCEPTION(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSAW_ANONYMOUS_PROHIBITED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Operation has "prohibited" value for wsaw:anonymous in the WSDL, Addressing must be disabled and SOAP message need to be hand-crafted
	*
	*/
	@:overload public static function WSAW_ANONYMOUS_PROHIBITED() : String;
	
	@:overload public static function localizableNULL_WSDL_PORT() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Populating request Addressing headers and found null WSDLPort
	*
	*/
	@:overload public static function NULL_WSDL_PORT() : String;
	
	@:overload public static function localizableADDRESSING_SHOULD_BE_ENABLED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Addressing is not enabled
	*
	*/
	@:overload public static function ADDRESSING_SHOULD_BE_ENABLED() : String;
	
	@:overload public static function localizableNULL_ADDRESSING_VERSION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unexpected null Addressing version
	*
	*/
	@:overload public static function NULL_ADDRESSING_VERSION() : String;
	
	@:overload public static function localizableMISSING_HEADER_EXCEPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Missing WS-Addressing header: "{0}"
	*
	*/
	@:overload public static function MISSING_HEADER_EXCEPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableNULL_PACKET() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Populating request Addressing headers and found null Packet
	*
	*/
	@:overload public static function NULL_PACKET() : String;
	
	@:overload public static function localizableWRONG_ADDRESSING_VERSION(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Expected "{0}" version of WS-Addressing but found "{1}"
	*
	*/
	@:overload public static function WRONG_ADDRESSING_VERSION(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableADDRESSING_NOT_ENABLED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Addressing is not enabled, {0} should not be included in the pipeline"
	*
	*/
	@:overload public static function ADDRESSING_NOT_ENABLED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableNON_ANONYMOUS_UNKNOWN_PROTOCOL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unknown protocol: "{0}"
	*
	*/
	@:overload public static function NON_ANONYMOUS_UNKNOWN_PROTOCOL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableNON_ANONYMOUS_RESPONSE_NULL_MESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* No message for non-anonymous response from "{0}"
	*
	*/
	@:overload public static function NON_ANONYMOUS_RESPONSE_NULL_MESSAGE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableNULL_HEADERS() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* No headers found when processing the server inbound request and WS-Addressing is required
	*
	*/
	@:overload public static function NULL_HEADERS() : String;
	
	@:overload public static function localizableNULL_BINDING() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Populating request Addressing headers and found null Binding
	*
	*/
	@:overload public static function NULL_BINDING() : String;
	
	
}

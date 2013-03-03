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
extern class SoapMessages
{
	@:overload @:public @:static public static function localizableSOAP_FAULT_CREATE_ERR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Couldn''t create SOAP Fault due to exception: {0}
	*
	*/
	@:overload @:public @:static public static function SOAP_FAULT_CREATE_ERR(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableSOAP_MSG_FACTORY_CREATE_ERR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Couldn''t create SOAP message factory due to exception: {0}
	*
	*/
	@:overload @:public @:static public static function SOAP_MSG_FACTORY_CREATE_ERR(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableSOAP_MSG_CREATE_ERR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Couldn''t create SOAP message due to exception: {0}
	*
	*/
	@:overload @:public @:static public static function SOAP_MSG_CREATE_ERR(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableSOAP_FACTORY_CREATE_ERR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Couldn''t create SOAP factory due to exception: {0}
	*
	*/
	@:overload @:public @:static public static function SOAP_FACTORY_CREATE_ERR(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableSOAP_PROTOCOL_INVALID_FAULT_CODE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid fault code: {0}
	*
	*/
	@:overload @:public @:static public static function SOAP_PROTOCOL_INVALID_FAULT_CODE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableSOAP_VERSION_MISMATCH_ERR(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Couldn''t create SOAP message. Expecting Envelope in namespace {0}, but got {1}
	*
	*/
	@:overload @:public @:static public static function SOAP_VERSION_MISMATCH_ERR(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	
}

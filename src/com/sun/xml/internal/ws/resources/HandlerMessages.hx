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
extern class HandlerMessages
{
	@:overload @:public @:static public static function localizableHANDLER_MESSAGE_CONTEXT_INVALID_CLASS(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "{0}" is not an allowed value for the property "{1}"
	*
	*/
	@:overload @:public @:static public static function HANDLER_MESSAGE_CONTEXT_INVALID_CLASS(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableCANNOT_EXTEND_HANDLER_DIRECTLY(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Handler {0} must implement LogicalHandler or SOAPHandler.
	*
	*/
	@:overload @:public @:static public static function CANNOT_EXTEND_HANDLER_DIRECTLY(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableHANDLER_NOT_VALID_TYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0} does not implement one of the handler interfaces.
	*
	*/
	@:overload @:public @:static public static function HANDLER_NOT_VALID_TYPE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableCANNOT_INSTANTIATE_HANDLER(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unable to instantiate handler: {0} because: {1}
	*
	*/
	@:overload @:public @:static public static function CANNOT_INSTANTIATE_HANDLER(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableHANDLER_CHAIN_CONTAINS_HANDLER_ONLY(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* A HandlerChain can only contain Handler instances: {0}
	*
	*/
	@:overload @:public @:static public static function HANDLER_CHAIN_CONTAINS_HANDLER_ONLY(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableHANDLER_NESTED_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* handler error: {0}
	*
	*/
	@:overload @:public @:static public static function HANDLER_NESTED_ERROR(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableHANDLER_PREDESTROY_IGNORE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Exception ignored from invoking handler @PreDestroy method: {0}
	*
	*/
	@:overload @:public @:static public static function HANDLER_PREDESTROY_IGNORE(arg0 : Dynamic) : String;
	
	
}

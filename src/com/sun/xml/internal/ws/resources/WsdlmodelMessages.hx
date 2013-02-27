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
extern class WsdlmodelMessages
{
	@:overload public static function localizableWSDL_PORTADDRESS_EPRADDRESS_NOT_MATCH(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* For Port: {0}, service location {1} does not match address {2} in the EndpointReference
	*
	*/
	@:overload public static function WSDL_PORTADDRESS_EPRADDRESS_NOT_MATCH(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableWSDL_IMPORT_SHOULD_BE_WSDL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Import of {0} is violation of BP 1.1 R2001. Proceeding with a warning.
	* R2001 A DESCRIPTION MUST only use the WSDL "import" statement to import another WSDL description.
	*
	*/
	@:overload public static function WSDL_IMPORT_SHOULD_BE_WSDL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMEX_METADATA_SYSTEMID_NULL() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Mex WSDL metadata can not be parsed, the systemId is of the MEX source is null.
	*
	*/
	@:overload public static function MEX_METADATA_SYSTEMID_NULL() : String;
	
	
}

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
extern class XmlmessageMessages
{
	@:overload @:public @:static public static function localizableXML_NULL_HEADERS() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid argument. MimeHeaders=null
	*
	*/
	@:overload @:public @:static public static function XML_NULL_HEADERS() : String;
	
	@:overload @:public @:static public static function localizableXML_SET_PAYLOAD_ERR() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Couldn't set Payload in XMLMessage
	*
	*/
	@:overload @:public @:static public static function XML_SET_PAYLOAD_ERR() : String;
	
	@:overload @:public @:static public static function localizableXML_CONTENT_TYPE_MUSTBE_MULTIPART() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Content-Type needs to be Multipart/Related and with type=text/xml
	*
	*/
	@:overload @:public @:static public static function XML_CONTENT_TYPE_MUSTBE_MULTIPART() : String;
	
	@:overload @:public @:static public static function localizableXML_UNKNOWN_CONTENT_TYPE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unrecognized Content-Type
	*
	*/
	@:overload @:public @:static public static function XML_UNKNOWN_CONTENT_TYPE() : String;
	
	@:overload @:public @:static public static function localizableXML_GET_DS_ERR() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Couldn't get DataSource
	*
	*/
	@:overload @:public @:static public static function XML_GET_DS_ERR() : String;
	
	@:overload @:public @:static public static function localizableXML_CONTENT_TYPE_PARSE_ERR() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Error while parsing MimeHeaders for Content-Type
	*
	*/
	@:overload @:public @:static public static function XML_CONTENT_TYPE_PARSE_ERR() : String;
	
	@:overload @:public @:static public static function localizableXML_GET_SOURCE_ERR() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Couldn't return Source
	*
	*/
	@:overload @:public @:static public static function XML_GET_SOURCE_ERR() : String;
	
	@:overload @:public @:static public static function localizableXML_CANNOT_INTERNALIZE_MESSAGE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Cannot create XMLMessage
	*
	*/
	@:overload @:public @:static public static function XML_CANNOT_INTERNALIZE_MESSAGE() : String;
	
	@:overload @:public @:static public static function localizableXML_NO_CONTENT_TYPE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* MimeHeaders doesn't contain Content-Type header
	*
	*/
	@:overload @:public @:static public static function XML_NO_CONTENT_TYPE() : String;
	
	@:overload @:public @:static public static function localizableXML_ROOT_PART_INVALID_CONTENT_TYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Bad Content-Type for Root Part : {0}
	*
	*/
	@:overload @:public @:static public static function XML_ROOT_PART_INVALID_CONTENT_TYPE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableXML_INVALID_CONTENT_TYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid Content-Type: {0}
	*
	*/
	@:overload @:public @:static public static function XML_INVALID_CONTENT_TYPE(arg0 : Dynamic) : String;
	
	
}

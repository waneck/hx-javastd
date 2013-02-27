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
extern class StreamingMessages
{
	@:overload public static function localizableFASTINFOSET_DECODING_NOT_ACCEPTED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Fast Infoset decoding is not accepted
	*
	*/
	@:overload public static function FASTINFOSET_DECODING_NOT_ACCEPTED() : String;
	
	@:overload public static function localizableSTAX_CANT_CREATE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unable to create StAX reader or writer
	*
	*/
	@:overload public static function STAX_CANT_CREATE() : String;
	
	@:overload public static function localizableSTREAMING_IO_EXCEPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XML parsing error: {0}
	*
	*/
	@:overload public static function STREAMING_IO_EXCEPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSOURCEREADER_INVALID_SOURCE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unable to create reader from source "{0}"
	*
	*/
	@:overload public static function SOURCEREADER_INVALID_SOURCE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableXMLREADER_UNEXPECTED_STATE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unexpected XML reader state. expected: {0} but found: {1}
	*
	*/
	@:overload public static function XMLREADER_UNEXPECTED_STATE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableXMLREADER_IO_EXCEPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XML reader error: {0}
	*
	*/
	@:overload public static function XMLREADER_IO_EXCEPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableFASTINFOSET_NO_IMPLEMENTATION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unable to locate compatible implementation of Fast Infoset in classpath
	*
	*/
	@:overload public static function FASTINFOSET_NO_IMPLEMENTATION() : String;
	
	@:overload public static function localizableXMLWRITER_IO_EXCEPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XML writer error: {0}
	*
	*/
	@:overload public static function XMLWRITER_IO_EXCEPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableXMLREADER_UNEXPECTED_CHARACTER_CONTENT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XML reader error: unexpected character content: "{0}"
	*
	*/
	@:overload public static function XMLREADER_UNEXPECTED_CHARACTER_CONTENT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSTREAMING_PARSE_EXCEPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XML parsing error: {0}
	*
	*/
	@:overload public static function STREAMING_PARSE_EXCEPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableXMLWRITER_NO_PREFIX_FOR_URI(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XML writer error: no prefix for URI: "{0}"
	*
	*/
	@:overload public static function XMLWRITER_NO_PREFIX_FOR_URI(arg0 : Dynamic) : String;
	
	@:overload public static function localizableXMLREADER_NESTED_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XML reader error: {0}
	*
	*/
	@:overload public static function XMLREADER_NESTED_ERROR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSTAXREADER_XMLSTREAMEXCEPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XML stream reader exception: {0}
	*
	*/
	@:overload public static function STAXREADER_XMLSTREAMEXCEPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableXMLWRITER_NESTED_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XML writer error: {0}
	*
	*/
	@:overload public static function XMLWRITER_NESTED_ERROR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableXMLREADER_ILLEGAL_STATE_ENCOUNTERED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XML reader internal error: illegal state ({0})
	*
	*/
	@:overload public static function XMLREADER_ILLEGAL_STATE_ENCOUNTERED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableXMLREADER_UNEXPECTED_STATE_TAG(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unexpected XML tag. expected: {0} but found: {1}
	*
	*/
	@:overload public static function XMLREADER_UNEXPECTED_STATE_TAG(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableXMLREADER_UNEXPECTED_STATE_MESSAGE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unexpected XML reader state. expected: {0} but found: {1}. {2}
	*
	*/
	@:overload public static function XMLREADER_UNEXPECTED_STATE_MESSAGE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableXMLREADER_PARSE_EXCEPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XML parsing error: {0}
	*
	*/
	@:overload public static function XMLREADER_PARSE_EXCEPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableXMLRECORDER_RECORDING_ENDED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* no more recorded elements available
	*
	*/
	@:overload public static function XMLRECORDER_RECORDING_ENDED() : String;
	
	
}

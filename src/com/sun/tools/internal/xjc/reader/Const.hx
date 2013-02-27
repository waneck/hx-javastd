package com.sun.tools.internal.xjc.reader;
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
extern class Const
{
	/** XML namespace URI. */
	public static var XMLNS_URI(default, null) : String;
	
	/** JAXB customization URI. */
	public static var JAXB_NSURI(default, null) : String;
	
	/** XJC vendor extension namespace URI. */
	public static var XJC_EXTENSION_URI(default, null) : String;
	
	/** RELAX NG namespace URI. */
	public static var RELAXNG_URI(default, null) : String;
	
	/** URI to represent DTD. */
	public static var DTD(default, null) : String;
	
	/**
	* Attribute name of the expected media type.
	*
	* @see WellKnownNamespace#XML_MIME_URI
	* @see http://www.w3.org/TR/xml-media-types/
	*/
	public static var EXPECTED_CONTENT_TYPES(default, null) : String;
	
	
}

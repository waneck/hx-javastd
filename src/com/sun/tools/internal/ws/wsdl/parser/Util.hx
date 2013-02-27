package com.sun.tools.internal.ws.wsdl.parser;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Util
{
	/**2
	* Defines various utility methods.
	*
	* @author WS Development Team
	*/
	@:overload public static function getRequiredAttribute(element : org.w3c.dom.Element, name : String) : String;
	
	@:overload public static function verifyTag(element : org.w3c.dom.Element, tag : String) : Void;
	
	@:overload public static function verifyTagNS(element : org.w3c.dom.Element, tag : String, nsURI : String) : Void;
	
	@:overload public static function verifyTagNS(element : org.w3c.dom.Element, name : javax.xml.namespace.QName) : Void;
	
	@:overload public static function isTagName(element : org.w3c.dom.Element, name : javax.xml.namespace.QName) : Bool;
	
	@:overload public static function verifyTagNSRootElement(element : org.w3c.dom.Element, name : javax.xml.namespace.QName) : Void;
	
	@:overload public static function nextElementIgnoringCharacterContent(iter : java.util.Iterator<Dynamic>) : org.w3c.dom.Element;
	
	@:overload public static function nextElement(iter : java.util.Iterator<Dynamic>) : org.w3c.dom.Element;
	
	@:overload public static function processSystemIdWithBase(baseSystemId : String, systemId : String) : String;
	
	@:overload public static function fail(key : String) : Void;
	
	@:overload public static function fail(key : String, arg : String) : Void;
	
	@:overload public static function fail(key : String, arg1 : String, arg2 : String) : Void;
	
	@:overload public static function fail(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	
}

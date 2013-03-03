package com.sun.corba.se.impl.presentation.rmi;
/*
* Copyright (c) 2003, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class IDLNameTranslatorImpl implements com.sun.corba.se.spi.presentation.rmi.IDLNameTranslator
{
	/**
	* Return an IDLNameTranslator for the given interface.
	*
	* @throws IllegalStateException if given class is not a valid
	*         RMI/IIOP Remote Interface
	*/
	@:overload @:public @:static public static function get(interf : Class<Dynamic>) : com.sun.corba.se.spi.presentation.rmi.IDLNameTranslator;
	
	/**
	* Return an IDLNameTranslator for the given interfacex.
	*
	* @throws IllegalStateException if given classes are not  valid
	*         RMI/IIOP Remote Interfaces
	*/
	@:overload @:public @:static public static function get(interfaces : java.NativeArray<Class<Dynamic>>) : com.sun.corba.se.spi.presentation.rmi.IDLNameTranslator;
	
	@:overload @:public @:static public static function getExceptionId(cls : Class<Dynamic>) : String;
	
	@:overload @:public public function getInterfaces() : java.NativeArray<Class<Dynamic>>;
	
	@:overload @:public public function getMethods() : java.NativeArray<java.lang.reflect.Method>;
	
	@:overload @:public public function getMethod(idlName : String) : java.lang.reflect.Method;
	
	@:overload @:public public function getIDLName(method : java.lang.reflect.Method) : String;
	
	/**
	* Returns Unicode mangling as defined in Section 1.3.2.4 of
	* Java2IDL spec.
	*
	* "For Java identifiers that contain illegal OMG IDL identifier
	* characters such as '$' or Unicode characters outside of ISO Latin 1,
	* any such illegal characters are replaced by "U" followed by the
	* 4 hexadecimal characters(in upper case) representing the Unicode
	* value.  So, the Java name a$b is mapped to aU0024b and
	* x\u03bCy is mapped to xU03BCy."
	*/
	@:overload @:public @:static public static function charToUnicodeRepresentation(c : java.StdTypes.Char16) : String;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	
}
/**
* Internal helper class for tracking information related to each
* interface method while we're building the name translation table.
*/
@:native('com$sun$corba$se$impl$presentation$rmi$IDLNameTranslatorImpl$IDLMethodInfo') @:internal extern class IDLNameTranslatorImpl_IDLMethodInfo
{
	@:public public var method : java.lang.reflect.Method;
	
	@:public public var isProperty : Bool;
	
	@:public public var originalName : String;
	
	@:public public var mangledName : String;
	
	
}

package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class CodeSetComponentInfo
{
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	@:overload public function new() : Void;
	
	@:overload public function new(charData : CodeSetComponentInfo_CodeSetComponent, wcharData : CodeSetComponentInfo_CodeSetComponent) : Void;
	
	@:overload public function read(_in : com.sun.corba.se.impl.encoding.MarshalInputStream) : Void;
	
	@:overload public function write(out : com.sun.corba.se.impl.encoding.MarshalOutputStream) : Void;
	
	@:overload public function getCharComponent() : CodeSetComponentInfo_CodeSetComponent;
	
	@:overload public function getWCharComponent() : CodeSetComponentInfo_CodeSetComponent;
	
	/**
	* Our default code set scheme is as follows:
	*
	* char data:
	*
	* Native code set:  ISO 8859-1 (8-bit)
	* Conversion sets:  UTF-8, ISO 646 (7-bit)
	*
	* wchar data:
	*
	* Native code set:  UTF-16
	* Conversion sets:  UCS-2
	*
	* Pre-Merlin/J2EE 1.3 JavaSoft ORBs listed ISO646 for char and
	* UCS-2 for wchar, and provided no conversion sets.  They also
	* didn't do correct negotiation or provide the fallback sets.
	* UCS-2 is still in the conversion list for backwards compatibility.
	*
	* The fallbacks are UTF-8 for char and UTF-16 for wchar.
	*
	* In GIOP 1.1, interoperability with wchar is limited to 2 byte fixed
	* width encodings since its wchars aren't preceded by a length.
	* Thus, I've chosen not to include UTF-8 in the conversion set
	* for wchar data.
	*
	*/
	public static var JAVASOFT_DEFAULT_CODESETS(default, null) : CodeSetComponentInfo;
	
	/**
	* Creates a CodeSetComponent from a String which contains a comma
	* delimited list of OSF Code Set Registry numbers.  An INITIALIZE
	* exception is thrown if any of the numbers are not known by our
	* registry.  Used by corba.ORB init.
	*
	* The first number in the list is taken as the native code set,
	* and the rest is the conversion code set list.
	*
	* The numbers can either be decimal or hex.
	*/
	@:overload public static function createFromString(str : String) : CodeSetComponentInfo_CodeSetComponent;
	
	/**
	* Code sets for local cases without a connection.
	*/
	public static var LOCAL_CODE_SETS(default, null) : CodeSetComponentInfo_CodeSetContext;
	
	
}
/**
* CodeSetComponent is part of an IOR multi-component profile.  Two
* instances constitute a CodeSetComponentInfo (one for char and one
* for wchar data)
*/
@:native('com$sun$corba$se$impl$encoding$CodeSetComponentInfo$CodeSetComponent') extern class CodeSetComponentInfo_CodeSetComponent
{
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function new() : Void;
	
	@:overload public function new(nativeCodeSet : Int, conversionCodeSets : java.NativeArray<Int>) : Void;
	
	@:overload public function read(_in : com.sun.corba.se.impl.encoding.MarshalInputStream) : Void;
	
	@:overload public function write(out : com.sun.corba.se.impl.encoding.MarshalOutputStream) : Void;
	
	@:overload public function toString() : String;
	
	
}
/**
* CodeSetContext goes in a GIOP service context
*/
@:native('com$sun$corba$se$impl$encoding$CodeSetComponentInfo$CodeSetContext') extern class CodeSetComponentInfo_CodeSetContext
{
	@:overload public function new() : Void;
	
	@:overload public function new(charEncoding : Int, wcharEncoding : Int) : Void;
	
	@:overload public function read(_in : com.sun.corba.se.impl.encoding.MarshalInputStream) : Void;
	
	@:overload public function write(out : com.sun.corba.se.impl.encoding.MarshalOutputStream) : Void;
	
	@:overload public function getCharCodeSet() : Int;
	
	@:overload public function getWCharCodeSet() : Int;
	
	@:overload public function toString() : String;
	
	
}

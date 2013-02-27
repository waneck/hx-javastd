package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2001, 2003, Oracle and/or its affiliates. All rights reserved.
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
/**
*
* Information from the OSF code set registry version 1.2g.
*
* Use the Entry corresponding to the desired code set.
*
* Consider rename to CodeSetRegistry since OSF is dead.
*/
extern class OSFCodeSetRegistry
{
	public static var ISO_8859_1_VALUE(default, null) : Int;
	
	public static var UTF_16_VALUE(default, null) : Int;
	
	public static var UTF_8_VALUE(default, null) : Int;
	
	public static var UCS_2_VALUE(default, null) : Int;
	
	public static var ISO_646_VALUE(default, null) : Int;
	
	/**
	* 8-bit encoding required for GIOP 1.0, and used as the char set
	* when nothing else is specified.
	*/
	public static var ISO_8859_1(default, null) : OSFCodeSetRegistry_Entry;
	
	/**
	* Fallback wchar code set.
	*
	* In the resolution of issue 3405b, UTF-16 defaults to big endian, so
	* doesn't have to have a byte order marker.  Unfortunately, this has to be
	* a special case for compatibility.
	*/
	public static var UTF_16(default, null) : OSFCodeSetRegistry_Entry;
	
	/**
	* Fallback char code set.  Also the code set for char data
	* in encapsulations.  However, since CORBA says chars are
	* only one octet, it is really the same as Latin-1.
	*/
	public static var UTF_8(default, null) : OSFCodeSetRegistry_Entry;
	
	/*
	* At least in JDK 1.3, UCS-2 isn't one of the mandatory Java character
	* encodings.  However, our old ORBs require what they call UCS2, even
	* though they didn't necessarily do the correct encoding of it.
	*
	* This is a special case for our legacy ORBs, and put as the last thing
	* in our conversion list for wchar data.
	*
	* If a foreign ORB actually tries to speak UCS2 with us, it probably
	* won't work!  Beware!
	*/
	public static var UCS_2(default, null) : OSFCodeSetRegistry_Entry;
	
	/**
	* This is the encoding older JavaSoft ORBs advertised as their
	* CORBA char code set.  Actually, they took the lower byte of
	* the Java char.  This is a 7-bit encoding, so they
	* were really sending ISO8859-1.
	*/
	public static var ISO_646(default, null) : OSFCodeSetRegistry_Entry;
	
	/**
	* Given an OSF registry value, return the corresponding Entry.
	* Returns null if an Entry for that value is unavailable.
	*/
	@:overload public static function lookupEntry(encodingValue : Int) : OSFCodeSetRegistry_Entry;
	
	
}
/**
* An entry in the OSF registry which allows users
* to find out the equivalent Java character encoding
* name as well as some other facts from the registry.
*/
@:native('com$sun$corba$se$impl$encoding$OSFCodeSetRegistry$Entry') extern class OSFCodeSetRegistry_Entry
{
	/**
	* Returns the Java equivalent name.  If the encoding has
	* an optional byte order marker, this name will map to the
	* Java encoding that includes the marker.
	*/
	@:overload public function getName() : String;
	
	/**
	* Get the OSF registry number for this code set.
	*/
	@:overload public function getNumber() : Int;
	
	/**
	* Is this a fixed or variable width code set?  (In CORBA
	* terms, "non-byte-oriented" or a "byte-oriented"
	* code set, respectively)
	*/
	@:overload public function isFixedWidth() : Bool;
	
	@:overload public function getMaxBytesPerChar() : Int;
	
	/**
	* First checks reference equality since it's expected
	* people will use the pre-defined constant Entries.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Uses the registry number as the hash code.
	*/
	@:overload public function hashCode() : Int;
	
	
}

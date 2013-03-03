package sun.security.x509;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class RDN
{
	/**
	* Constructs an RDN from its printable representation.
	*
	* An RDN may consist of one or multiple Attribute Value Assertions (AVAs),
	* using '+' as a separator.
	* If the '+' should be considered part of an AVA value, it must be
	* preceded by '\'.
	*
	* @param name String form of RDN
	* @throws IOException on parsing error
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Constructs an RDN from its printable representation.
	*
	* An RDN may consist of one or multiple Attribute Value Assertions (AVAs),
	* using '+' as a separator.
	* If the '+' should be considered part of an AVA value, it must be
	* preceded by '\'.
	*
	* @param name String form of RDN
	* @param keyword an additional mapping of keywords to OIDs
	* @throws IOException on parsing error
	*/
	@:overload @:public public function new(name : String, keywordMap : java.util.Map<String, String>) : Void;
	
	@:overload @:public public function new(ava : sun.security.x509.AVA) : Void;
	
	@:overload @:public public function new(avas : java.NativeArray<sun.security.x509.AVA>) : Void;
	
	/**
	* Return an immutable List of the AVAs in this RDN.
	*/
	@:overload @:public public function avas() : java.util.List<sun.security.x509.AVA>;
	
	/**
	* Return the number of AVAs in this RDN.
	*/
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/*
	* Calculates a hash code value for the object.  Objects
	* which are equal will also have the same hashcode.
	*
	* @returns int hashCode value
	*/
	@:overload @:public public function hashCode() : Int;
	
	/*
	* Returns a printable form of this RDN, using RFC 1779 style catenation
	* of attribute/value assertions, and emitting attribute type keywords
	* from RFCs 1779, 2253, and 3280.
	*/
	@:overload @:public public function toString() : String;
	
	/*
	* Returns a printable form of this RDN using the algorithm defined in
	* RFC 1779. Only RFC 1779 attribute type keywords are emitted.
	*/
	@:overload @:public public function toRFC1779String() : String;
	
	/*
	* Returns a printable form of this RDN using the algorithm defined in
	* RFC 1779. RFC 1779 attribute type keywords are emitted, as well
	* as keywords contained in the OID/keyword map.
	*/
	@:overload @:public public function toRFC1779String(oidMap : java.util.Map<String, String>) : String;
	
	/*
	* Returns a printable form of this RDN using the algorithm defined in
	* RFC 2253. Only RFC 2253 attribute type keywords are emitted.
	*/
	@:overload @:public public function toRFC2253String() : String;
	
	/*
	* Returns a printable form of this RDN using the algorithm defined in
	* RFC 2253. RFC 2253 attribute type keywords are emitted, as well as
	* keywords contained in the OID/keyword map.
	*/
	@:overload @:public public function toRFC2253String(oidMap : java.util.Map<String, String>) : String;
	
	/*
	* Returns a printable form of this RDN using the algorithm defined in
	* RFC 2253. Only RFC 2253 attribute type keywords are emitted.
	* If canonical is true, then additional canonicalizations
	* documented in X500Principal.getName are performed.
	*/
	@:overload @:public public function toRFC2253String(canonical : Bool) : String;
	
	
}
@:internal extern class AVAComparator implements java.util.Comparator<sun.security.x509.AVA>
{
	/**
	* AVA's containing a standard keyword are ordered alphabetically,
	* followed by AVA's containing an OID keyword, ordered numerically
	*/
	@:overload @:public public function compare(a1 : sun.security.x509.AVA, a2 : sun.security.x509.AVA) : Int;
	
	
}

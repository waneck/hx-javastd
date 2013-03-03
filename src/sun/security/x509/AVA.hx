package sun.security.x509;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AVA implements sun.security.util.DerEncoder
{
	@:overload @:public public function new(type : sun.security.util.ObjectIdentifier, val : sun.security.util.DerValue) : Void;
	
	/**
	* Get the ObjectIdentifier of this AVA.
	*/
	@:overload @:public public function getObjectIdentifier() : sun.security.util.ObjectIdentifier;
	
	/**
	* Get the value of this AVA as a DerValue.
	*/
	@:overload @:public public function getDerValue() : sun.security.util.DerValue;
	
	/**
	* Get the value of this AVA as a String.
	*
	* @exception RuntimeException if we could not obtain the string form
	*    (should not occur)
	*/
	@:overload @:public public function getValueString() : String;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hashcode for this AVA.
	*
	* @return a hashcode for this AVA.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/*
	* AVAs are encoded as a SEQUENCE of two elements.
	*/
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* DER encode this object onto an output stream.
	* Implements the <code>DerEncoder</code> interface.
	*
	* @param out
	* the output stream on which to write the DER encoding.
	*
	* @exception IOException on encoding error.
	*/
	@:overload @:public public function derEncode(out : java.io.OutputStream) : Void;
	
	/**
	* Returns a printable form of this attribute, using RFC 1779
	* syntax for individual attribute/value assertions.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns a printable form of this attribute, using RFC 1779
	* syntax for individual attribute/value assertions. It only
	* emits standardised keywords.
	*/
	@:overload @:public public function toRFC1779String() : String;
	
	/**
	* Returns a printable form of this attribute, using RFC 1779
	* syntax for individual attribute/value assertions. It
	* emits standardised keywords, as well as keywords contained in the
	* OID/keyword map.
	*/
	@:overload @:public public function toRFC1779String(oidMap : java.util.Map<String, String>) : String;
	
	/**
	* Returns a printable form of this attribute, using RFC 2253
	* syntax for individual attribute/value assertions. It only
	* emits standardised keywords.
	*/
	@:overload @:public public function toRFC2253String() : String;
	
	/**
	* Returns a printable form of this attribute, using RFC 2253
	* syntax for individual attribute/value assertions. It
	* emits standardised keywords, as well as keywords contained in the
	* OID/keyword map.
	*/
	@:overload @:public public function toRFC2253String(oidMap : java.util.Map<String, String>) : String;
	
	@:overload @:public public function toRFC2253CanonicalString() : String;
	
	
}
@:internal extern class AVAKeyword
{
	
}

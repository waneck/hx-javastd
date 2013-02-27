package sun.security.pkcs;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
* A ContentInfo type, as defined in PKCS#7.
*
* @author Benjamin Renaud
*/
extern class ContentInfo
{
	public static var PKCS7_OID : sun.security.util.ObjectIdentifier;
	
	public static var DATA_OID : sun.security.util.ObjectIdentifier;
	
	public static var SIGNED_DATA_OID : sun.security.util.ObjectIdentifier;
	
	public static var ENVELOPED_DATA_OID : sun.security.util.ObjectIdentifier;
	
	public static var SIGNED_AND_ENVELOPED_DATA_OID : sun.security.util.ObjectIdentifier;
	
	public static var DIGESTED_DATA_OID : sun.security.util.ObjectIdentifier;
	
	public static var ENCRYPTED_DATA_OID : sun.security.util.ObjectIdentifier;
	
	public static var OLD_SIGNED_DATA_OID : sun.security.util.ObjectIdentifier;
	
	public static var OLD_DATA_OID : sun.security.util.ObjectIdentifier;
	
	public static var NETSCAPE_CERT_SEQUENCE_OID : sun.security.util.ObjectIdentifier;
	
	public static var TIMESTAMP_TOKEN_INFO_OID : sun.security.util.ObjectIdentifier;
	
	@:overload public function new(contentType : sun.security.util.ObjectIdentifier, content : sun.security.util.DerValue) : Void;
	
	/**
	* Make a contentInfo of type data.
	*/
	@:overload public function new(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Parses a PKCS#7 content info.
	*/
	@:overload public function new(derin : sun.security.util.DerInputStream) : Void;
	
	/**
	* Parses a PKCS#7 content info.
	*
	* <p>This constructor is used only for backwards compatibility with
	* PKCS#7 blocks that were generated using JDK1.1.x.
	*
	* @param derin the ASN.1 encoding of the content info.
	* @param oldStyle flag indicating whether or not the given content info
	* is encoded according to JDK1.1.x.
	*/
	@:overload public function new(derin : sun.security.util.DerInputStream, oldStyle : Bool) : Void;
	
	@:overload public function getContent() : sun.security.util.DerValue;
	
	@:overload public function getContentType() : sun.security.util.ObjectIdentifier;
	
	@:overload public function getData() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Returns a byte array representation of the data held in
	* the content field.
	*/
	@:overload public function getContentBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function toString() : String;
	
	
}

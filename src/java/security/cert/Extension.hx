package java.security.cert;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface Extension
{
	/**
	* Gets the extensions's object identifier.
	*
	* @return the object identifier as a String
	*/
	@:overload public function getId() : String;
	
	/**
	* Gets the extension's criticality setting.
	*
	* @return true if this is a critical extension.
	*/
	@:overload public function isCritical() : Bool;
	
	/**
	* Gets the extensions's DER-encoded value. Note, this is the bytes
	* that are encoded as an OCTET STRING. It does not include the OCTET
	* STRING tag and length.
	*
	* @return a copy of the extension's value, or <code>null</code> if no
	*    extension value is present.
	*/
	@:overload public function getValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Generates the extension's DER encoding and writes it to the output
	* stream.
	*
	* @param out the output stream
	* @exception IOException on encoding or output error.
	* @exception NullPointerException if <code>out</code> is <code>null</code>.
	*/
	@:overload public function encode(out : java.io.OutputStream) : Void;
	
	
}

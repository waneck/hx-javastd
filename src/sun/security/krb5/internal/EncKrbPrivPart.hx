package sun.security.krb5.internal;
/*
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
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class EncKrbPrivPart
{
	/**
	* Implements the ASN.1 EncKrbPrivPart type.
	*
	* <xmp>
	* EncKrbPrivPart  ::= [APPLICATION 28] SEQUENCE {
	*         user-data       [0] OCTET STRING,
	*         timestamp       [1] KerberosTime OPTIONAL,
	*         usec            [2] Microseconds OPTIONAL,
	*         seq-number      [3] UInt32 OPTIONAL,
	*         s-address       [4] HostAddress -- sender's addr --,
	*         r-address       [5] HostAddress OPTIONAL -- recip's addr
	* }
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	*/
	public var userData : java.NativeArray<java.StdTypes.Int8>;
	
	public var timestamp : sun.security.krb5.internal.KerberosTime;
	
	public var usec : Null<Int>;
	
	public var seqNumber : Null<Int>;
	
	public var sAddress : sun.security.krb5.internal.HostAddress;
	
	public var rAddress : sun.security.krb5.internal.HostAddress;
	
	@:overload public function new(new_userData : java.NativeArray<java.StdTypes.Int8>, new_timestamp : sun.security.krb5.internal.KerberosTime, new_usec : Null<Int>, new_seqNumber : Null<Int>, new_sAddress : sun.security.krb5.internal.HostAddress, new_rAddress : sun.security.krb5.internal.HostAddress) : Void;
	
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Encodes an EncKrbPrivPart object.
	* @return byte array of encoded EncKrbPrivPart object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	
}

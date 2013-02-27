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
*
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class APReq
{
	/**
	* Implements the ASN.1 AP-REQ type.
	*
	* <xmp>
	* AP-REQ               ::= [APPLICATION 14] SEQUENCE {
	*      pvno            [0] INTEGER (5),
	*      msg-type        [1] INTEGER (14),
	*      ap-options      [2] APOptions,
	*      ticket          [3] Ticket,
	*      authenticator   [4] EncryptedData -- Authenticator
	* }
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	*/
	public var pvno : Int;
	
	public var msgType : Int;
	
	public var apOptions : sun.security.krb5.internal.APOptions;
	
	public var ticket : sun.security.krb5.internal.Ticket;
	
	public var authenticator : sun.security.krb5.EncryptedData;
	
	@:overload public function new(new_apOptions : sun.security.krb5.internal.APOptions, new_ticket : sun.security.krb5.internal.Ticket, new_authenticator : sun.security.krb5.EncryptedData) : Void;
	
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Encodes an APReq object.
	* @return byte array of encoded APReq object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	
}

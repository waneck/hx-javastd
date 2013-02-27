package sun.security.jgss.krb5;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class WrapToken_v2 extends sun.security.jgss.krb5.MessageToken_v2
{
	/**
	* Constructs a WrapToken from token bytes obtained from the
	* peer.
	* @param context the mechanism context associated with this
	* token
	* @param tokenBytes the bytes of the token
	* @param tokenOffset the offset of the token
	* @param tokenLen the length of the token
	* @param prop the MessageProp into which characteristics of the
	* parsed token will be stored.
	* @throws GSSException if the token is defective
	*/
	@:overload public function new(context : sun.security.jgss.krb5.Krb5Context, tokenBytes : java.NativeArray<java.StdTypes.Int8>, tokenOffset : Int, tokenLen : Int, prop : org.ietf.jgss.MessageProp) : Void;
	
	/**
	* Constructs a WrapToken from token bytes read on the fly from
	* an InputStream.
	* @param context the mechanism context associated with this
	* token
	* @param is the InputStream containing the token bytes
	* @param prop the MessageProp into which characteristics of the
	* parsed token will be stored.
	* @throws GSSException if the token is defective or if there is
	* a problem reading from the InputStream
	*/
	@:overload public function new(context : sun.security.jgss.krb5.Krb5Context, is : java.io.InputStream, prop : org.ietf.jgss.MessageProp) : Void;
	
	/**
	* Obtains the application data that was transmitted in this
	* WrapToken.
	* @return a byte array containing the application data
	* @throws GSSException if an error occurs while decrypting any
	* cipher text and checking for validity
	*/
	@:overload public function getData() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Obtains the application data that was transmitted in this
	* WrapToken, writing it into an application provided output
	* array.
	* @param dataBuf the output buffer into which the data must be
	* written
	* @param dataBufOffset the offset at which to write the data
	* @return the size of the data written
	* @throws GSSException if an error occurs while decrypting any
	* cipher text and checking for validity
	*/
	@:overload public function getData(dataBuf : java.NativeArray<java.StdTypes.Int8>, dataBufOffset : Int) : Int;
	
	/**
	* Writes a WrapToken_v2 object
	*/
	@:overload public function new(context : sun.security.jgss.krb5.Krb5Context, prop : org.ietf.jgss.MessageProp, dataBytes : java.NativeArray<java.StdTypes.Int8>, dataOffset : Int, dataLen : Int) : Void;
	
	@:overload override public function encode(os : java.io.OutputStream) : Void;
	
	@:overload public function encode() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function encode(outToken : java.NativeArray<java.StdTypes.Int8>, offset : Int) : Int;
	
	
}

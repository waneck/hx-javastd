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
@:internal extern class MicToken_v2 extends sun.security.jgss.krb5.MessageToken_v2
{
	/**
	* This class represents the new format of GSS MIC tokens, as specified
	* in RFC 4121
	*
	* MIC tokens = { 16-byte token-header |  HMAC }
	* where HMAC is on { plaintext | 16-byte token-header }
	*
	* @author Seema Malkani
	*/
	@:overload @:public public function new(context : sun.security.jgss.krb5.Krb5Context, tokenBytes : java.NativeArray<java.StdTypes.Int8>, tokenOffset : Int, tokenLen : Int, prop : org.ietf.jgss.MessageProp) : Void;
	
	@:overload @:public public function new(context : sun.security.jgss.krb5.Krb5Context, is : java.io.InputStream, prop : org.ietf.jgss.MessageProp) : Void;
	
	@:overload @:public public function verify(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	@:overload @:public public function verify(data : java.io.InputStream) : Void;
	
	@:overload @:public public function new(context : sun.security.jgss.krb5.Krb5Context, prop : org.ietf.jgss.MessageProp, data : java.NativeArray<java.StdTypes.Int8>, pos : Int, len : Int) : Void;
	
	@:overload @:public public function new(context : sun.security.jgss.krb5.Krb5Context, prop : org.ietf.jgss.MessageProp, data : java.io.InputStream) : Void;
	
	@:overload @:public public function encode() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function encode(outToken : java.NativeArray<java.StdTypes.Int8>, offset : Int) : Int;
	
	@:overload @:public override public function encode(os : java.io.OutputStream) : Void;
	
	
}

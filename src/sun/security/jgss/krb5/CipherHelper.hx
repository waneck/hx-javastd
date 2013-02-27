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
@:internal extern class CipherHelper
{
	
}
/**
* This class provides a truncated inputstream needed by WrapToken. The
* truncated inputstream is passed to CipherInputStream. It prevents
* the CipherInputStream from treating the bytes of the following token
* as part fo the ciphertext for this token.
*/
@:native('sun$security$jgss$krb5$CipherHelper$WrapTokenInputStream') @:internal extern class CipherHelper_WrapTokenInputStream extends java.io.InputStream
{
	@:overload public function new(is : java.io.InputStream, length : Int) : Void;
	
	@:overload @:final override public function read() : Int;
	
	@:overload @:final override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload @:final override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:final override public function skip(n : haxe.Int64) : haxe.Int64;
	
	@:overload @:final override public function available() : Int;
	
	@:overload @:final override public function close() : Void;
	
	
}

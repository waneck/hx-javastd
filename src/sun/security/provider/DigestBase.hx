package sun.security.provider;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DigestBase extends java.security.MessageDigestSpi implements java.lang.Cloneable
{
	@:overload @:protected @:final override private function engineGetDigestLength() : Int;
	
	@:overload @:protected @:final override private function engineUpdate(b : java.StdTypes.Int8) : Void;
	
	@:overload @:protected @:final override private function engineUpdate(b : java.NativeArray<java.StdTypes.Int8>, ofs : Int, len : Int) : Void;
	
	@:overload @:protected @:final override private function engineReset() : Void;
	
	@:overload @:protected @:final override private function engineDigest() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected @:final override private function engineDigest(out : java.NativeArray<java.StdTypes.Int8>, ofs : Int, len : Int) : Int;
	
	/**
	* Clone this digest. Should be implemented as "return new MyDigest(this)".
	* That constructor should first call "super(baseDigest)" and then copy
	* subclass specific data.
	*/
	@:overload @:public @:abstract override public function clone() : Dynamic;
	
	
}

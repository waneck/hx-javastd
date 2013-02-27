package sun.nio.cs.ext;
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
/*
*/
extern class ISO2022_CN_CNS extends sun.nio.cs.ext.ISO2022 implements sun.nio.cs.HistoricallyNamedCharset
{
	@:overload public function new() : Void;
	
	@:overload public function contains(cs : java.nio.charset.Charset) : Bool;
	
	@:overload public function historicalName() : String;
	
	@:overload override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	@:overload override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	
}
@:native('sun$nio$cs$ext$ISO2022_CN_CNS$Encoder') @:internal extern class ISO2022_CN_CNS_Encoder extends sun.nio.cs.ext.ISO2022.ISO2022_Encoder
{
	@:overload override public function new(cs : java.nio.charset.Charset) : Void;
	
	@:overload override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	/*
	* Since ISO2022-CN-CNS possesses a CharsetEncoder
	* without the corresponding CharsetDecoder half the
	* default replacement check needs to be overridden
	* since the parent class version attempts to
	* decode 0x3f (?).
	*/
	@:overload override public function isLegalReplacement(repl : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	
}

package sun.nio.cs;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class CharsetMapping
{
	@:public @:final @:static public static var UNMAPPABLE_DECODING(default, null) : java.StdTypes.Char16;
	
	@:public @:final @:static public static var UNMAPPABLE_ENCODING(default, null) : Int;
	
	@:overload @:public public function decodeSingle(b : Int) : java.StdTypes.Char16;
	
	@:overload @:public public function decodeDouble(b1 : Int, b2 : Int) : java.StdTypes.Char16;
	
	@:overload @:public public function decodeSurrogate(db : Int, cc : java.NativeArray<java.StdTypes.Char16>) : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:public public function decodeComposite(comp : sun.nio.cs.CharsetMapping.CharsetMapping_Entry, cc : java.NativeArray<java.StdTypes.Char16>) : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:public public function encodeChar(ch : java.StdTypes.Char16) : Int;
	
	@:overload @:public public function encodeSurrogate(hi : java.StdTypes.Char16, lo : java.StdTypes.Char16) : Int;
	
	@:overload @:public public function isCompositeBase(comp : sun.nio.cs.CharsetMapping.CharsetMapping_Entry) : Bool;
	
	@:overload @:public public function encodeComposite(comp : sun.nio.cs.CharsetMapping.CharsetMapping_Entry) : Int;
	
	@:overload @:public @:static public static function get(is : java.io.InputStream) : sun.nio.cs.CharsetMapping;
	
	
}
@:native('sun$nio$cs$CharsetMapping$Entry') extern class CharsetMapping_Entry
{
	@:public public var bs : Int;
	
	@:public public var cp : Int;
	
	@:public public var cp2 : Int;
	
	
}

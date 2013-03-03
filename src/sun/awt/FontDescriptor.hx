package sun.awt;
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
extern class FontDescriptor implements java.lang.Cloneable
{
	@:public public var encoder : java.nio.charset.CharsetEncoder;
	
	@:overload @:public public function new(nativeName : String, encoder : java.nio.charset.CharsetEncoder, exclusionRanges : java.NativeArray<Int>) : Void;
	
	@:overload @:public public function getNativeName() : String;
	
	@:overload @:public public function getFontCharsetEncoder() : java.nio.charset.CharsetEncoder;
	
	@:overload @:public public function getFontCharsetName() : String;
	
	@:overload @:public public function getExclusionRanges() : java.NativeArray<Int>;
	
	/**
	* Return true if the character is exclusion character.
	*/
	@:overload @:public public function isExcluded(ch : java.StdTypes.Char16) : Bool;
	
	@:overload @:public public function toString() : String;
	
	@:public public var unicodeEncoder : java.nio.charset.CharsetEncoder;
	
	@:overload @:public public function useUnicode() : Bool;
	
	
}

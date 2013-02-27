package sun.text;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright IBM Corp. 2003 - All Rights Reserved
*
* The original version of this source code and documentation is
* copyrighted and owned by IBM. These materials are provided
* under terms of a License Agreement between IBM and Sun.
* This technology is protected by multiple US and International
* patents. This notice and attribution to IBM may not be removed.
*/
extern class CodePointIterator
{
	public static var DONE(default, null) : Int;
	
	@:overload @:abstract public function setToStart() : Void;
	
	@:overload @:abstract public function setToLimit() : Void;
	
	@:overload @:abstract public function next() : Int;
	
	@:overload @:abstract public function prev() : Int;
	
	@:overload @:abstract public function charIndex() : Int;
	
	@:overload public static function create(text : java.NativeArray<java.StdTypes.Char16>) : CodePointIterator;
	
	@:overload public static function create(text : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int) : CodePointIterator;
	
	@:overload public static function create(text : java.lang.CharSequence) : CodePointIterator;
	
	@:overload public static function create(iter : java.text.CharacterIterator) : CodePointIterator;
	
	
}
@:internal extern class CharArrayCodePointIterator extends CodePointIterator
{
	@:overload public function new(text : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload public function new(text : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int) : Void;
	
	@:overload override public function setToStart() : Void;
	
	@:overload override public function setToLimit() : Void;
	
	@:overload override public function next() : Int;
	
	@:overload override public function prev() : Int;
	
	@:overload override public function charIndex() : Int;
	
	
}
@:internal extern class CharSequenceCodePointIterator extends CodePointIterator
{
	@:overload public function new(text : java.lang.CharSequence) : Void;
	
	@:overload override public function setToStart() : Void;
	
	@:overload override public function setToLimit() : Void;
	
	@:overload override public function next() : Int;
	
	@:overload override public function prev() : Int;
	
	@:overload override public function charIndex() : Int;
	
	
}
@:internal extern class CharacterIteratorCodePointIterator extends CodePointIterator
{
	@:overload public function new(iter : java.text.CharacterIterator) : Void;
	
	@:overload override public function setToStart() : Void;
	
	@:overload override public function setToLimit() : Void;
	
	@:overload override public function next() : Int;
	
	@:overload override public function prev() : Int;
	
	@:overload override public function charIndex() : Int;
	
	
}
package sun.io;
/*
* Copyright (c) 1996, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* Tables and data to convert Unicode to JIS0201
*
* @author  ConverterGenerator tool
* @version >= JDK1.1.6
*/
@:internal extern class CharToByteJIS0201 extends sun.io.CharToByteSingleByte
{
	@:overload @:public override public function getCharacterEncoding() : String;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function getNative(inputChar : java.StdTypes.Char16) : java.StdTypes.Int8;
	
	@:overload @:public override public function canConvert(ch : java.StdTypes.Char16) : Bool;
	
	
}

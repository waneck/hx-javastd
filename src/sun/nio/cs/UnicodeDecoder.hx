package sun.nio.cs;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class UnicodeDecoder extends java.nio.charset.CharsetDecoder
{
	private static var BYTE_ORDER_MARK(default, null) : java.StdTypes.Char16;
	
	private static var REVERSED_MARK(default, null) : java.StdTypes.Char16;
	
	private static var NONE(default, null) : Int;
	
	private static var BIG(default, null) : Int;
	
	private static var LITTLE(default, null) : Int;
	
	@:overload public function new(cs : java.nio.charset.Charset, bo : Int) : Void;
	
	@:overload public function new(cs : java.nio.charset.Charset, bo : Int, defaultBO : Int) : Void;
	
	@:overload override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload override private function implReset() : Void;
	
	
}

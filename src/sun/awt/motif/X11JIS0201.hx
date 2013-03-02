package sun.awt.motif;
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
extern class X11JIS0201 extends java.nio.charset.Charset
{
	@:overload public function new() : Void;
	
	@:overload override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	@:overload override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	@:overload override public function contains(cs : java.nio.charset.Charset) : Bool;
	
	
}
@:native('sun$awt$motif$X11JIS0201$Encoder') @:internal extern class X11JIS0201_Encoder extends sun.nio.cs.ext.JIS_X_0201.JIS_X_0201_Encoder
{
	@:overload override public function new(cs : java.nio.charset.Charset) : Void;
	
	@:overload override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	
}

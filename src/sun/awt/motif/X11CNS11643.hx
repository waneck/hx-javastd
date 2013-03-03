package sun.awt.motif;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class X11CNS11643 extends java.nio.charset.Charset
{
	@:overload @:public public function new(plane : Int, name : String) : Void;
	
	@:overload @:public override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	@:overload @:public override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	@:overload @:public override public function contains(cs : java.nio.charset.Charset) : Bool;
	
	
}
@:native('sun$awt$motif$X11CNS11643$Encoder') @:internal extern class X11CNS11643_Encoder extends sun.nio.cs.ext.EUC_TW.EUC_TW_Encoder
{
	@:overload @:public public function new(cs : java.nio.charset.Charset, plane : Int) : Void;
	
	@:overload @:public override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	@:overload @:public override public function isLegalReplacement(repl : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	@:overload @:protected override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	
}
@:native('sun$awt$motif$X11CNS11643$Decoder') @:internal extern class X11CNS11643_Decoder extends sun.nio.cs.ext.EUC_TW.EUC_TW_Decoder
{
	@:overload @:protected private function new(cs : java.nio.charset.Charset, plane : Int) : Void;
	
	@:overload @:protected override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	
}

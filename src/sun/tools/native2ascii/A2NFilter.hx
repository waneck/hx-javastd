package sun.tools.native2ascii;
/*
* Copyright (c) 2001, 2005, Oracle and/or its affiliates. All rights reserved.
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
* This FilterReader class processes a sequence of characters from
* a source stream containing a mixture of 7-bit ASCII data and
* 'back-tick U' escaped sequences representing characters which have
* the possibility of being encoded in a user specified encoding
* The filter relies on knowing the target encoding and makes a
* determination as to whether a given supplied character in its
* source character stream is encodeable in the target encoding.
* If not, it is remains in its back-tick U escaped form.
*/
@:internal extern class A2NFilter extends java.io.FilterReader
{
	@:overload @:public public function new(_in : java.io.Reader) : Void;
	
	@:overload @:public override public function read(buf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Int;
	
	@:overload @:public override public function read() : Int;
	
	
}

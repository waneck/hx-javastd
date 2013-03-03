package sun.tools.native2ascii;
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
/**
* This FilterWriter class takes an existing Writer and uses
* the 'back-tick U' escape notation to escape characters which are
* encountered within the input character based stream which
* are outside the 7-bit ASCII range. The native platforms linefeed
* character is emitted for each line of processed input
*/
@:internal extern class N2AFilter extends java.io.FilterWriter
{
	@:overload @:public public function new(out : java.io.Writer) : Void;
	
	@:overload @:public public function write(b : java.StdTypes.Char16) : Void;
	
	@:overload @:public override public function write(buf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	
}

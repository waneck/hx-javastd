package com.sun.tools.internal.ws.processor.util;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class IndentingWriter extends java.io.BufferedWriter
{
	@:overload @:public public function new(out : java.io.Writer) : Void;
	
	@:overload @:public public function new(out : java.io.Writer, step : Int) : Void;
	
	@:overload @:public override public function write(c : Int) : Void;
	
	@:overload @:public override public function write(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	@:overload @:public override public function write(s : String, off : Int, len : Int) : Void;
	
	@:overload @:public override public function newLine() : Void;
	
	@:overload @:protected private function checkWrite() : Void;
	
	@:overload @:protected private function indentIn() : Void;
	
	@:overload @:protected private function indentOut() : Void;
	
	@:overload @:public public function pI() : Void;
	
	@:overload @:public public function pO() : Void;
	
	@:overload @:public public function pI(levels : Int) : Void;
	
	@:overload @:public public function pO(levels : Int) : Void;
	
	@:overload @:public public function p(s : String) : Void;
	
	/**
	* Check if encode can handle the chars in this string.
	*
	*/
	@:overload @:protected private function canEncode(s : String) : Bool;
	
	@:overload @:public public function p(s1 : String, s2 : String) : Void;
	
	@:overload @:public public function p(s1 : String, s2 : String, s3 : String) : Void;
	
	@:overload @:public public function p(s1 : String, s2 : String, s3 : String, s4 : String) : Void;
	
	@:overload @:public public function p(s1 : String, s2 : String, s3 : String, s4 : String, s5 : String) : Void;
	
	@:overload @:public public function pln() : Void;
	
	@:overload @:public public function pln(s : String) : Void;
	
	@:overload @:public public function pln(s1 : String, s2 : String) : Void;
	
	@:overload @:public public function pln(s1 : String, s2 : String, s3 : String) : Void;
	
	@:overload @:public public function pln(s1 : String, s2 : String, s3 : String, s4 : String) : Void;
	
	@:overload @:public public function pln(s1 : String, s2 : String, s3 : String, s4 : String, s5 : String) : Void;
	
	@:overload @:public public function plnI(s : String) : Void;
	
	@:overload @:public public function pO(s : String) : Void;
	
	@:overload @:public public function pOln(s : String) : Void;
	
	@:overload @:public public function pOlnI(s : String) : Void;
	
	@:overload @:public public function p(o : Dynamic) : Void;
	
	@:overload @:public public function pln(o : Dynamic) : Void;
	
	@:overload @:public public function plnI(o : Dynamic) : Void;
	
	@:overload @:public public function pO(o : Dynamic) : Void;
	
	@:overload @:public public function pOln(o : Dynamic) : Void;
	
	@:overload @:public public function pOlnI(o : Dynamic) : Void;
	
	@:overload @:public public function pM(s : String) : Void;
	
	@:overload @:public public function pMln(s : String) : Void;
	
	@:overload @:public public function pMlnI(s : String) : Void;
	
	@:overload @:public public function pMO(s : String) : Void;
	
	@:overload @:public public function pMOln(s : String) : Void;
	
	@:overload @:public public function pF(pattern : String, arguments : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:public public function pFln(pattern : String, arguments : java.NativeArray<Dynamic>) : Void;
	
	
}

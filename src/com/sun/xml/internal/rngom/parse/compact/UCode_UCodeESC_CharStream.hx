package com.sun.xml.internal.rngom.parse.compact;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Copyright (C) 2004-2011
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/
/* Generated By:JavaCC: Do not edit this line. UCode_UCodeESC_CharStream.java Version 0.7pre6 */
/* The previous line keeps JavaCC quiet. In fact, the JavaCC generated file
has been edited to fix some bugs. */
extern class UCode_UCodeESC_CharStream
{
	/**
	* An implementation of interface CharStream, where the stream is assumed to
	* contain 16-bit unicode characters.
	*/
	@:public @:static @:final public static var staticFlag(default, null) : Bool;
	
	@:public public var bufpos : Int;
	
	@:overload @:public @:final public function BeginToken() : java.StdTypes.Char16;
	
	@:overload @:public @:final public function readChar() : java.StdTypes.Char16;
	
	/**
	* @deprecated
	* @see #getEndColumn
	*/
	@:overload @:public @:final public function getColumn() : Int;
	
	/**
	* @deprecated
	* @see #getEndLine
	*/
	@:overload @:public @:final public function getLine() : Int;
	
	@:overload @:public @:final public function getEndColumn() : Int;
	
	@:overload @:public @:final public function getEndLine() : Int;
	
	@:overload @:public @:final public function getBeginColumn() : Int;
	
	@:overload @:public @:final public function getBeginLine() : Int;
	
	@:overload @:public @:final public function backup(amount : Int) : Void;
	
	@:overload @:public public function new(dstream : java.io.Reader, startline : Int, startcolumn : Int, buffersize : Int) : Void;
	
	@:overload @:public public function new(dstream : java.io.Reader, startline : Int, startcolumn : Int) : Void;
	
	@:overload @:public public function ReInit(dstream : java.io.Reader, startline : Int, startcolumn : Int, buffersize : Int) : Void;
	
	@:overload @:public public function ReInit(dstream : java.io.Reader, startline : Int, startcolumn : Int) : Void;
	
	@:overload @:public public function new(dstream : java.io.InputStream, startline : Int, startcolumn : Int, buffersize : Int) : Void;
	
	@:overload @:public public function new(dstream : java.io.InputStream, startline : Int, startcolumn : Int) : Void;
	
	@:overload @:public public function ReInit(dstream : java.io.InputStream, startline : Int, startcolumn : Int, buffersize : Int) : Void;
	
	@:overload @:public public function ReInit(dstream : java.io.InputStream, startline : Int, startcolumn : Int) : Void;
	
	@:overload @:public @:final public function GetImage() : String;
	
	@:overload @:public @:final public function GetSuffix(len : Int) : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:public public function Done() : Void;
	
	/**
	* Method to adjust line and column numbers for the start of a token.<BR>
	*/
	@:overload @:public public function adjustBeginLineColumn(newLine : Int, newCol : Int) : Void;
	
	
}

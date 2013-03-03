package sun.rmi.rmic;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
/*****************************************************************************/
/*                    Copyright (c) IBM Corporation 1998                     */
/*                                                                           */
/* (C) Copyright IBM Corp. 1998                                              */
/*                                                                           */
/*****************************************************************************/
extern class IndentingWriter extends java.io.BufferedWriter
{
	/**
	* Create a new IndentingWriter that writes indented text to the
	* given Writer.  Use the default indent step of four spaces.
	*/
	@:overload @:public public function new(out : java.io.Writer) : Void;
	
	/**
	* Create a new IndentingWriter that writes indented text to the
	* given Writer and uses the supplied indent step.
	*/
	@:overload @:public public function new(out : java.io.Writer, step : Int) : Void;
	
	/**
	* Create a new IndentingWriter that writes indented text to the
	* given Writer and uses the supplied indent step and tab size.
	*/
	@:overload @:public public function new(out : java.io.Writer, step : Int, tabSize : Int) : Void;
	
	/**
	* Write a single character.
	*/
	@:overload @:public override public function write(c : Int) : Void;
	
	/**
	* Write a portion of an array of characters.
	*/
	@:overload @:public override public function write(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	/**
	* Write a portion of a String.
	*/
	@:overload @:public override public function write(s : String, off : Int, len : Int) : Void;
	
	/**
	* Write a line separator.  The next character written will be
	* preceded by an indent.
	*/
	@:overload @:public override public function newLine() : Void;
	
	/**
	* Check if an indent needs to be written before writing the next
	* character.
	*
	* The indent generation is optimized (and made consistent with
	* certain coding conventions) by condensing groups of eight spaces
	* into tab characters.
	*/
	@:overload @:protected private function checkWrite() : Void;
	
	/**
	* Increase the current indent by the indent step.
	*/
	@:overload @:protected private function indentIn() : Void;
	
	/**
	* Decrease the current indent by the indent step.
	*/
	@:overload @:protected private function indentOut() : Void;
	
	/**
	* Indent in.
	*/
	@:overload @:public public function pI() : Void;
	
	/**
	* Indent out.
	*/
	@:overload @:public public function pO() : Void;
	
	/**
	* Write string.
	*/
	@:overload @:public public function p(s : String) : Void;
	
	/**
	* End current line.
	*/
	@:overload @:public public function pln() : Void;
	
	/**
	* Write string; end current line.
	*/
	@:overload @:public public function pln(s : String) : Void;
	
	/**
	* Write string; end current line; indent in.
	*/
	@:overload @:public public function plnI(s : String) : Void;
	
	/**
	* Indent out; write string.
	*/
	@:overload @:public public function pO(s : String) : Void;
	
	/**
	* Indent out; write string; end current line.
	*/
	@:overload @:public public function pOln(s : String) : Void;
	
	/**
	* Indent out; write string; end current line; indent in.
	*
	* This method is useful for generating lines of code that both
	* end and begin nested blocks, like "} else {".
	*/
	@:overload @:public public function pOlnI(s : String) : Void;
	
	/**
	* Write Object.
	*/
	@:overload @:public public function p(o : Dynamic) : Void;
	
	/**
	* Write Object; end current line.
	*/
	@:overload @:public public function pln(o : Dynamic) : Void;
	
	/**
	* Write Object; end current line; indent in.
	*/
	@:overload @:public public function plnI(o : Dynamic) : Void;
	
	/**
	* Indent out; write Object.
	*/
	@:overload @:public public function pO(o : Dynamic) : Void;
	
	/**
	* Indent out; write Object; end current line.
	*/
	@:overload @:public public function pOln(o : Dynamic) : Void;
	
	/**
	* Indent out; write Object; end current line; indent in.
	*
	* This method is useful for generating lines of code that both
	* end and begin nested blocks, like "} else {".
	*/
	@:overload @:public public function pOlnI(o : Dynamic) : Void;
	
	
}

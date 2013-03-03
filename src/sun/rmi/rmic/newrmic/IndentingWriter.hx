package sun.rmi.rmic.newrmic;
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
extern class IndentingWriter extends java.io.BufferedWriter
{
	/**
	* Creates a new IndentingWriter that writes indented text to the
	* given Writer.  Use the default indent step of four spaces.
	**/
	@:overload @:public public function new(out : java.io.Writer) : Void;
	
	/**
	* Creates a new IndentingWriter that writes indented text to the
	* given Writer and uses the supplied indent step.
	**/
	@:overload @:public public function new(out : java.io.Writer, indentStep : Int) : Void;
	
	/**
	* Creates a new IndentingWriter that writes indented text to the
	* given Writer and uses the supplied indent step and tab size.
	**/
	@:overload @:public public function new(out : java.io.Writer, indentStep : Int, tabSize : Int) : Void;
	
	/**
	* Writes a single character.
	**/
	@:overload @:public override public function write(c : Int) : Void;
	
	/**
	* Writes a portion of an array of characters.
	**/
	@:overload @:public override public function write(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	/**
	* Writes a portion of a String.
	**/
	@:overload @:public override public function write(s : String, off : Int, len : Int) : Void;
	
	/**
	* Writes a line separator.  The next character written will be
	* preceded by an indent.
	**/
	@:overload @:public override public function newLine() : Void;
	
	/**
	* Checks if an indent needs to be written before writing the next
	* character.
	*
	* The indent generation is optimized (and made consistent with
	* certain coding conventions) by condensing groups of eight
	* spaces into tab characters.
	**/
	@:overload @:protected private function checkWrite() : Void;
	
	/**
	* Increases the current indent by the indent step.
	**/
	@:overload @:protected private function indentIn() : Void;
	
	/**
	* Decreases the current indent by the indent step.
	**/
	@:overload @:protected private function indentOut() : Void;
	
	/**
	* Indents in.
	**/
	@:overload @:public public function pI() : Void;
	
	/**
	* Indents out.
	**/
	@:overload @:public public function pO() : Void;
	
	/**
	* Writes string.
	**/
	@:overload @:public public function p(s : String) : Void;
	
	/**
	* Ends current line.
	**/
	@:overload @:public public function pln() : Void;
	
	/**
	* Writes string; ends current line.
	**/
	@:overload @:public public function pln(s : String) : Void;
	
	/**
	* Writes string; ends current line; indents in.
	**/
	@:overload @:public public function plnI(s : String) : Void;
	
	/**
	* Indents out; writes string.
	**/
	@:overload @:public public function pO(s : String) : Void;
	
	/**
	* Indents out; writes string; ends current line.
	**/
	@:overload @:public public function pOln(s : String) : Void;
	
	/**
	* Indents out; writes string; ends current line; indents in.
	*
	* This method is useful for generating lines of code that both
	* end and begin nested blocks, like "} else {".
	**/
	@:overload @:public public function pOlnI(s : String) : Void;
	
	/**
	* Writes object.
	**/
	@:overload @:public public function p(o : Dynamic) : Void;
	
	/**
	* Writes object; ends current line.
	**/
	@:overload @:public public function pln(o : Dynamic) : Void;
	
	/**
	* Writes object; ends current line; indents in.
	**/
	@:overload @:public public function plnI(o : Dynamic) : Void;
	
	/**
	* Indents out; writes object.
	**/
	@:overload @:public public function pO(o : Dynamic) : Void;
	
	/**
	* Indents out; writes object; ends current line.
	**/
	@:overload @:public public function pOln(o : Dynamic) : Void;
	
	/**
	* Indents out; writes object; ends current line; indents in.
	*
	* This method is useful for generating lines of code that both
	* end and begin nested blocks, like "} else {".
	**/
	@:overload @:public public function pOlnI(o : Dynamic) : Void;
	
	
}

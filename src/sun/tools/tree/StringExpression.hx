package sun.tools.tree;
/*
* Copyright (c) 1994, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class StringExpression extends sun.tools.tree.ConstantExpression
{
	/**
	* Constructor
	*/
	@:overload public function new(where : haxe.Int64, value : String) : Void;
	
	@:overload override public function equals(s : String) : Bool;
	
	@:overload override public function isNonNull() : Bool;
	
	/**
	* Code
	*/
	@:overload override public function codeValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	/**
	* Get the value
	*/
	@:overload override public function getValue() : Dynamic;
	
	/**
	* Hashcode
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Equality
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Print
	*/
	@:overload override public function print(out : java.io.PrintStream) : Void;
	
	
}
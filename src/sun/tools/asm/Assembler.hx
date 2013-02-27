package sun.tools.asm;
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
extern class Assembler implements sun.tools.java.Constants
{
	/**
	* Add an instruction
	*/
	@:overload public function add(inst : sun.tools.asm.Instruction) : Void;
	
	@:overload public function add(where : haxe.Int64, opc : Int) : Void;
	
	@:overload public function add(where : haxe.Int64, opc : Int, obj : Dynamic) : Void;
	
	@:overload public function add(where : haxe.Int64, opc : Int, obj : Dynamic, flagCondInverted : Bool) : Void;
	
	@:overload public function add(flagNoCovered : Bool, where : haxe.Int64, opc : Int, obj : Dynamic) : Void;
	
	@:overload public function add(where : haxe.Int64, opc : Int, flagNoCovered : Bool) : Void;
	
	/**
	* Optimize the byte codes
	*/
	@:overload public function optimize(env : sun.tools.java.Environment) : Void;
	
	/**
	* Collect all constants into the constant table
	*/
	@:overload public function collect(env : sun.tools.java.Environment, field : sun.tools.java.MemberDefinition, tab : sun.tools.asm.ConstantPool) : Void;
	
	/**
	* Generate code
	*/
	@:overload public function write(env : sun.tools.java.Environment, out : java.io.DataOutputStream, field : sun.tools.java.MemberDefinition, tab : sun.tools.asm.ConstantPool) : Void;
	
	/**
	* Write the coverage table
	*/
	@:overload public function writeCoverageTable(env : sun.tools.java.Environment, c : sun.tools.java.ClassDefinition, out : java.io.DataOutputStream, tab : sun.tools.asm.ConstantPool, whereField : haxe.Int64) : Void;
	
	/*
	*  Increase count of methods for native methods
	*/
	@:overload public function addNativeToJcovTab(env : sun.tools.java.Environment, c : sun.tools.java.ClassDefinition) : Void;
	
	/*
	*  generate coverage data
	*/
	@:overload public function GenVecJCov(env : sun.tools.java.Environment, c : sun.tools.java.ClassDefinition, Time : haxe.Int64) : Void;
	
	/*
	* generate file of coverage data
	*/
	@:overload public function GenJCov(env : sun.tools.java.Environment) : Void;
	
	/**
	* Write the linenumber table
	*/
	@:overload public function writeLineNumberTable(env : sun.tools.java.Environment, out : java.io.DataOutputStream, tab : sun.tools.asm.ConstantPool) : Void;
	
	/**
	* Write the local variable table. The necessary constants have already been
	* added to the constant table by the collect() method. The flowFields method
	* is used to determine which variables are alive at each pc.
	*/
	@:overload public function writeLocalVariableTable(env : sun.tools.java.Environment, field : sun.tools.java.MemberDefinition, out : java.io.DataOutputStream, tab : sun.tools.asm.ConstantPool) : Void;
	
	/**
	* Return true if empty
	*/
	@:overload public function empty() : Bool;
	
	/**
	* Print the byte codes
	*/
	@:overload public function listing(out : java.io.PrintStream) : Void;
	
	
}

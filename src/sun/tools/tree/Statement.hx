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
extern class Statement extends sun.tools.tree.Node
{
	/**
	* WARNING: The contents of this source file are not part of any
	* supported API.  Code that depends on them does so at its own risk:
	* they are subject to change or removal without notice.
	*/
	public static var DEAD_END(default, null) : sun.tools.tree.Vset;
	
	/**
	* An empty statement.  Its costInline is infinite.
	*/
	public static var empty(default, null) : Statement;
	
	/**
	* The largest possible interesting inline cost value.
	*/
	public static var MAXINLINECOST(default, null) : Int;
	
	/**
	* Insert a bit of code at the front of a statement.
	* Side-effect s2, if it is a CompoundStatement.
	*/
	@:overload public static function insertStatement(s1 : Statement, s2 : Statement) : Statement;
	
	/**
	* Set the label of a statement
	*/
	@:overload public function setLabel(env : sun.tools.java.Environment, e : sun.tools.tree.Expression) : Void;
	
	/**
	* Check a statement
	*/
	@:overload public function checkMethod(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
	/**
	* Make sure the labels on this statement do not duplicate the
	* labels on any enclosing statement.  Provided as a convenience
	* for subclasses.
	*/
	@:overload private function checkLabel(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Void;
	
	/**
	* Inline
	*/
	//@:overload public function _inline(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Statement;
	
	/**
	* Eliminate this statement, which is only possible if it has no label.
	*/
	@:overload public function eliminate(env : sun.tools.java.Environment, s : Statement) : Statement;
	
	/**
	* Code
	*/
	@:overload public function code(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	/*
	* Return true if the statement has the given label
	*/
	@:overload public function hasLabel(lbl : sun.tools.java.Identifier) : Bool;
	
	/**
	* Check if the first thing is a constructor invocation
	*/
	@:overload public function firstConstructor() : sun.tools.tree.Expression;
	
	/**
	* Create a copy of the statement for method inlining
	*/
	@:overload public function copyInline(ctx : sun.tools.tree.Context, valNeeded : Bool) : Statement;
	
	@:overload public function costInline(thresh : Int, env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Int;
	
	@:overload public function print(out : java.io.PrintStream, indent : Int) : Void;
	
	@:overload override public function print(out : java.io.PrintStream) : Void;
	
	
}

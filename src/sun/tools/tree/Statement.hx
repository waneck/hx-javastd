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
	@:public @:static @:final public static var DEAD_END(default, null) : sun.tools.tree.Vset;
	
	/**
	* An empty statement.  Its costInline is infinite.
	*/
	@:public @:static @:final public static var empty(default, null) : sun.tools.tree.Statement;
	
	/**
	* The largest possible interesting inline cost value.
	*/
	@:public @:static @:final public static var MAXINLINECOST(default, null) : Int;
	
	/**
	* Insert a bit of code at the front of a statement.
	* Side-effect s2, if it is a CompoundStatement.
	*/
	@:overload @:public @:static public static function insertStatement(s1 : sun.tools.tree.Statement, s2 : sun.tools.tree.Statement) : sun.tools.tree.Statement;
	
	/**
	* Set the label of a statement
	*/
	@:overload @:public public function setLabel(env : sun.tools.java.Environment, e : sun.tools.tree.Expression) : Void;
	
	/**
	* Check a statement
	*/
	@:overload @:public public function checkMethod(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
	/**
	* Make sure the labels on this statement do not duplicate the
	* labels on any enclosing statement.  Provided as a convenience
	* for subclasses.
	*/
	@:overload @:protected private function checkLabel(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Void;
	
	/**
	* Inline
	*/
	//@:overload @:public public function _inline(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Statement;
	
	/**
	* Eliminate this statement, which is only possible if it has no label.
	*/
	@:overload @:public public function eliminate(env : sun.tools.java.Environment, s : sun.tools.tree.Statement) : sun.tools.tree.Statement;
	
	/**
	* Code
	*/
	@:overload @:public public function code(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	/*
	* Return true if the statement has the given label
	*/
	@:overload @:public public function hasLabel(lbl : sun.tools.java.Identifier) : Bool;
	
	/**
	* Check if the first thing is a constructor invocation
	*/
	@:overload @:public public function firstConstructor() : sun.tools.tree.Expression;
	
	/**
	* Create a copy of the statement for method inlining
	*/
	@:overload @:public public function copyInline(ctx : sun.tools.tree.Context, valNeeded : Bool) : sun.tools.tree.Statement;
	
	@:overload @:public public function costInline(thresh : Int, env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Int;
	
	@:overload @:public public function print(out : java.io.PrintStream, indent : Int) : Void;
	
	@:overload @:public override public function print(out : java.io.PrintStream) : Void;
	
	
}

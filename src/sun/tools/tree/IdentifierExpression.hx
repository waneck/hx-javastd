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
extern class IdentifierExpression extends sun.tools.tree.Expression
{
	/**
	* Constructor
	*/
	@:overload public function new(where : haxe.Int64, id : sun.tools.java.Identifier) : Void;
	
	@:overload public function new(id : sun.tools.java.IdentifierToken) : Void;
	
	@:overload public function new(where : haxe.Int64, field : sun.tools.java.MemberDefinition) : Void;
	
	@:overload override public function getImplementation() : sun.tools.tree.Expression;
	
	/**
	* Check if the expression is equal to a value
	*/
	@:overload override public function equals(id : sun.tools.java.Identifier) : Bool;
	
	/**
	* Check expression
	*/
	@:overload override public function checkValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
	/**
	* Check the expression if it appears on the LHS of an assignment
	*/
	@:overload override public function checkLHS(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
	/**
	* Check the expression if it appears on the LHS of an op= expression
	*/
	@:overload override public function checkAssignOp(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>, outside : sun.tools.tree.Expression) : sun.tools.tree.Vset;
	
	/**
	* Return an accessor if one is needed for assignments to this expression.
	*/
	@:overload override public function getAssigner(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.FieldUpdater;
	
	/**
	* Return an updater if one is needed for assignments to this expression.
	*/
	@:overload override public function getUpdater(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.FieldUpdater;
	
	/**
	* Check if the present name is part of a scoping prefix.
	*/
	@:overload override public function checkAmbigName(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>, loc : sun.tools.tree.UnaryExpression) : sun.tools.tree.Vset;
	
	/**
	* Check if constant:  Will it inline away?
	*/
	@:overload override public function isConstant() : Bool;
	
	/**
	* Inline
	*/
	//@:overload override public function _inline(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	@:overload override public function inlineValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	@:overload override public function inlineLHS(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	@:overload override public function copyInline(ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	@:overload override public function costInline(thresh : Int, env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Int;
	
	@:overload override public function codeValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	/**
	* Print
	*/
	@:overload override public function print(out : java.io.PrintStream) : Void;
	
	
}
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
extern class NewInstanceExpression extends sun.tools.tree.NaryExpression
{
	/**
	* Constructor
	*/
	@:overload public function new(where : haxe.Int64, right : sun.tools.tree.Expression, args : java.NativeArray<sun.tools.tree.Expression>) : Void;
	
	@:overload public function new(where : haxe.Int64, right : sun.tools.tree.Expression, args : java.NativeArray<sun.tools.tree.Expression>, outerArg : sun.tools.tree.Expression, body : sun.tools.java.ClassDefinition) : Void;
	
	/**
	* From the "new" in an expression of the form outer.new InnerCls(...),
	* return the "outer" expression, or null if there is none.
	*/
	@:overload public function getOuterArg() : sun.tools.tree.Expression;
	
	@:overload public function order() : sun.tools.tree.Expression;
	
	/**
	* Check expression type
	*/
	@:overload public function checkValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
	/**
	* Given a list of arguments for a constructor,
	* return a possibly modified list which includes the hidden
	* argument which initializes the uplevel self pointer.
	* @arg def the class which perhaps contains an outer link.
	* @arg outerArg if non-null, an explicit location in which to construct.
	*/
	@:overload public static function insertOuterLink(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, where : haxe.Int64, def : sun.tools.java.ClassDefinition, outerArg : sun.tools.tree.Expression, args : java.NativeArray<sun.tools.tree.Expression>) : java.NativeArray<sun.tools.tree.Expression>;
	
	/**
	* Check void expression
	*/
	@:overload public function check(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
	@:overload public function copyInline(ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	//@:overload public function _inline(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	@:overload public function inlineValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	@:overload public function costInline(thresh : Int, env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Int;
	
	/**
	* Code
	*/
	@:overload public function code(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	@:overload public function codeValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	
}

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
extern class BinaryLogicalExpression extends sun.tools.tree.BinaryExpression
{
	/**
	* constructor
	*/
	@:overload public function new(op : Int, where : haxe.Int64, left : sun.tools.tree.Expression, right : sun.tools.tree.Expression) : Void;
	
	/**
	* Check a binary expression
	*/
	@:overload override public function checkValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
	/*
	* Every subclass of this class must define a genuine implementation
	* of this method.  It cannot inherit the method of Expression.
	*/
	@:overload @:abstract override public function checkCondition(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>, cvars : sun.tools.tree.ConditionVars) : Void;
	
	/**
	* Inline
	*/
	//@:overload override public function _inline(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	
}

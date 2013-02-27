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
extern class ExprExpression extends sun.tools.tree.UnaryExpression
{
	/**
	* Constructor
	*/
	@:overload public function new(where : haxe.Int64, right : sun.tools.tree.Expression) : Void;
	
	/**
	* Check a condition.  We must pass it on to our unparenthesised form.
	*/
	@:overload override public function checkCondition(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>, cvars : sun.tools.tree.ConditionVars) : Void;
	
	/**
	* Check the expression if it appears as an lvalue.
	* We just pass it on to our unparenthesized subexpression.
	* (Part of fix for 4090372)
	*/
	@:overload override public function checkAssignOp(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>, outside : sun.tools.tree.Expression) : sun.tools.tree.Vset;
	
	/**
	* Delegate to our subexpression.
	* (Part of fix for 4090372)
	*/
	@:overload override public function getUpdater(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.FieldUpdater;
	
	@:overload override public function isNull() : Bool;
	
	@:overload override public function isNonNull() : Bool;
	
	@:overload override public function getValue() : Dynamic;
	
	/**
	* Delegate to our subexpression.
	* See the comment in AddExpression#inlineValueSB() for
	* information about this method.
	*/
	@:overload override private function inlineValueSB(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, buffer : java.lang.StringBuffer) : java.lang.StringBuffer;
	
	
}

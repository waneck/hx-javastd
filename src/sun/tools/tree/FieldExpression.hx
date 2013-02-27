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
extern class FieldExpression extends sun.tools.tree.UnaryExpression
{
	/**
	* constructor
	*/
	@:overload public function new(where : haxe.Int64, right : sun.tools.tree.Expression, id : sun.tools.java.Identifier) : Void;
	
	@:overload public function new(where : haxe.Int64, right : sun.tools.tree.Expression, field : sun.tools.java.MemberDefinition) : Void;
	
	@:overload override public function getImplementation() : sun.tools.tree.Expression;
	
	/**
	* Convert an '.' expression to a qualified identifier
	*/
	@:overload public static function toIdentifier(e : sun.tools.tree.Expression) : sun.tools.java.Identifier;
	
	/**
	* Check if the present name is part of a scoping prefix.
	*/
	@:overload override public function checkAmbigName(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>, loc : sun.tools.tree.UnaryExpression) : sun.tools.tree.Vset;
	
	/**
	* Check the expression
	*/
	@:overload override public function checkValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
	/**
	* Return a <code>FieldUpdater</code> object to be used in updating the
	* value of the location denoted by <code>this</code>, which must be an
	* expression suitable for the left-hand side of an assignment.
	* This is used for implementing assignments to private fields for which
	* an access method is required.  Returns null if no access method is
	* needed, in which case the assignment is handled in the usual way, by
	* direct access.  Only simple assignment expressions are handled here
	* Assignment operators and pre/post increment/decrement operators are
	* are handled by 'getUpdater' below.
	* <p>
	* Must be called after 'checkValue', else 'right' will be invalid.
	*/
	@:overload override public function getAssigner(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.FieldUpdater;
	
	/**
	* Return a <code>FieldUpdater</code> object to be used in updating the
	* value of the location denoted by <code>this</code>, which must be an
	* expression suitable for the left-hand side of an assignment.  This is
	* used for implementing the assignment operators and the increment and
	* decrement operators on private fields that are accessed from another
	* class, e.g, uplevel from an inner class. Returns null if no access
	* method is needed.
	* <p>
	* Must be called after 'checkValue', else 'right' will be invalid.
	*/
	@:overload override public function getUpdater(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.FieldUpdater;
	
	/**
	* Check the expression if it appears on the LHS of an assignment
	*/
	@:overload override public function checkLHS(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
	/**
	* Check the expression if it appears on the LHS of an op= expression
	*/
	@:overload override public function checkAssignOp(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>, outside : sun.tools.tree.Expression) : sun.tools.tree.Vset;
	
	/**
	* There is a simple assignment being made to the given final field.
	* The field was named either by a simple name or by an almost-simple
	* expression of the form "this.v".
	* Check if this is a legal assignment.
	* <p>
	* Blank final variables can be set in initializers or constructor
	* bodies.  In all cases there must be definite single assignment.
	* (All instance and instance variable initializers and each
	* constructor body are treated as if concatenated for the purposes
	* of this check.  Assignment to "this.x" is treated as a definite
	* assignment to the simple name "x" which names the instance variable.)
	*/
	@:overload public static function checkFinalAssign(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, where : haxe.Int64, field : sun.tools.java.MemberDefinition) : sun.tools.tree.Vset;
	
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
	
	/**
	* The cost of inlining this expression
	*/
	@:overload override public function costInline(thresh : Int, env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Int;
	
	@:overload override public function codeValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	/**
	* Print
	*/
	@:overload override public function print(out : java.io.PrintStream) : Void;
	
	
}

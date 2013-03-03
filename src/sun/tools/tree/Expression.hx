package sun.tools.tree;
/*
* Copyright (c) 1994, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Expression extends sun.tools.tree.Node
{
	/**
	* Type checking may assign a more complex implementation
	* to an innocuous-looking expression (like an identifier).
	* Return that implementation, or the original expression itself
	* if there is no special implementation.
	* <p>
	* This appears at present to be dead code, and is not called
	* from within javac.  Access to the implementation generally
	* occurs within the same class, and thus uses the underlying
	* field directly.
	*/
	@:overload @:public public function getImplementation() : sun.tools.tree.Expression;
	
	@:overload @:public public function getType() : sun.tools.java.Type;
	
	/**
	* Order the expression based on precedence
	*/
	@:overload @:public public function order() : sun.tools.tree.Expression;
	
	/**
	* Return true if constant, according to JLS 15.27.
	* A constant expression must inline away to a literal constant.
	*/
	@:overload @:public public function isConstant() : Bool;
	
	/**
	* Return the constant value.
	*/
	@:overload @:public public function getValue() : Dynamic;
	
	/**
	* Check if the expression is known to be equal to a given value.
	* Returns false for any expression other than a literal constant,
	* thus should be called only after simplification (inlining) has
	* been performed.
	*/
	@:overload @:public public function equals(i : Int) : Bool;
	
	@:overload @:public public function equals(b : Bool) : Bool;
	
	@:overload @:public public function equals(id : sun.tools.java.Identifier) : Bool;
	
	@:overload @:public public function equals(s : String) : Bool;
	
	/**
	* Check if the expression must be a null reference.
	*/
	@:overload @:public public function isNull() : Bool;
	
	/**
	* Check if the expression cannot be a null reference.
	*/
	@:overload @:public public function isNonNull() : Bool;
	
	/**
	* Check if the expression is equal to its default static value
	*/
	@:overload @:public public function equalsDefault() : Bool;
	
	/**
	* See if this expression fits in the given type.
	* This is useful because some larger numbers fit into
	* smaller types.
	* <p>
	* If it is an "int" constant expression, inline it, if necessary,
	* to examine its numerical value.  See JLS 5.2 and 15.24.
	*/
	@:overload @:public public function fitsType(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, t : sun.tools.java.Type) : Bool;
	
	/** @deprecated (for backward compatibility) */
	@:overload @:public public function fitsType(env : sun.tools.java.Environment, t : sun.tools.java.Type) : Bool;
	
	/**
	* Check an expression
	*/
	@:overload @:public public function checkValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
	@:overload @:public public function checkInitializer(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, t : sun.tools.java.Type, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
	@:overload @:public public function check(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
	@:overload @:public public function checkLHS(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.Vset;
	
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
	* Called during the checking phase.
	*/
	@:overload @:public public function getAssigner(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.FieldUpdater;
	
	/**
	* Return a <code>FieldUpdater</code> object to be used in updating the value of the
	* location denoted by <code>this</code>, which must be an expression suitable for the
	* left-hand side of an assignment.  This is used for implementing the assignment
	* operators and the increment/decrement operators on private fields that require an
	* access method, e.g., uplevel from an inner class.  Returns null if no access method
	* is needed.
	* <p>
	* Called during the checking phase.
	*/
	@:overload @:public public function getUpdater(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.FieldUpdater;
	
	@:overload @:public public function checkAssignOp(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>, outside : sun.tools.tree.Expression) : sun.tools.tree.Vset;
	
	/**
	* Check something that might be an AmbiguousName (refman 6.5.2).
	* A string of dot-separated identifiers might be, in order of preference:
	* <nl>
	* <li> a variable name followed by fields or types
	* <li> a type name followed by fields or types
	* <li> a package name followed a type and then fields or types
	* </nl>
	* If a type name is found, it rewrites itself as a <tt>TypeExpression</tt>.
	* If a node decides it can only be a package prefix, it sets its
	* type to <tt>Type.tPackage</tt>.  The caller must detect this
	* and act appropriately to verify the full package name.
	* @arg loc the expression containing the ambiguous expression
	*/
	@:overload @:public public function checkAmbigName(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>, loc : sun.tools.tree.UnaryExpression) : sun.tools.tree.Vset;
	
	/**
	* Check a condition.  Return a ConditionVars(), which indicates when
	* which variables are set if the condition is true, and which are set if
	* the condition is false.
	*/
	@:overload @:public public function checkCondition(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>) : sun.tools.tree.ConditionVars;
	
	/*
	* Check a condition.
	*
	* cvars is modified so that
	*    cvar.vsTrue indicates variables with a known value if result = true
	*    cvars.vsFalse indicates variables with a known value if !result
	*
	* The default action is to simply call checkValue on the expression, and
	* to see both vsTrue and vsFalse to the result.
	*/
	@:overload @:public public function checkCondition(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, exp : java.util.Hashtable<Dynamic, Dynamic>, cvars : sun.tools.tree.ConditionVars) : Void;
	
	/**
	* Inline.
	*
	* Recursively simplify each child of an expression node, destructively
	* replacing the child with the simplified result.  Also attempts to
	* simplify the current node 'this', and returns the simplified result.
	*
	* The name 'inline' is somthing of a misnomer, as these methods are
	* responsible for compile-time expression simplification in general.
	* The 'eval' and 'simplify' methods apply to a single expression node
	* only -- it is 'inline' and 'inlineValue' that drive the simplification
	* of entire expressions.
	*/
	//@:overload @:public public function _inline(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	@:overload @:public public function inlineValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	/**
	* Attempt to evaluate this expression.  If this expression
	* yields a value, append it to the StringBuffer `buffer'.
	* If this expression cannot be evaluated at this time (for
	* example if it contains a division by zero, a non-constant
	* subexpression, or a subexpression which "refuses" to evaluate)
	* then return `null' to indicate failure.
	*
	* It is anticipated that this method will be called to evaluate
	* concatenations of compile-time constant strings.  The call
	* originates from AddExpression#inlineValue().
	*
	* See AddExpression#inlineValueSB() for detailed comments.
	*/
	@:overload @:protected private function inlineValueSB(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, buffer : java.lang.StringBuffer) : java.lang.StringBuffer;
	
	@:overload @:public public function inlineLHS(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	/**
	* The cost of inlining this expression.
	* This cost controls the inlining of methods, and does not determine
	* the compile-time simplifications performed by 'inline' and friends.
	*/
	@:overload @:public public function costInline(thresh : Int, env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Int;
	
	@:overload @:public public function codeValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	@:overload @:public public function code(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	/**
	* Check if the first thing is a constructor invocation
	*/
	@:overload @:public public function firstConstructor() : sun.tools.tree.Expression;
	
	/**
	* Create a copy of the expression for method inlining
	*/
	@:overload @:public public function copyInline(ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	/**
	* Print
	*/
	@:overload @:public override public function print(out : java.io.PrintStream) : Void;
	
	
}

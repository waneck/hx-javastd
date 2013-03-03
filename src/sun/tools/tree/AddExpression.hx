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
extern class AddExpression extends sun.tools.tree.BinaryArithmeticExpression
{
	/**
	* constructor
	*/
	@:overload @:public public function new(where : haxe.Int64, left : sun.tools.tree.Expression, right : sun.tools.tree.Expression) : Void;
	
	@:overload @:public override public function isNonNull() : Bool;
	
	/**
	* Inline the value of an AddExpression.  If this AddExpression
	* represents a concatenation of compile-time constant strings,
	* dispatch to the special method inlineValueSB, which handles
	* the inlining more efficiently.
	*/
	@:overload @:public override public function inlineValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
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
	* This method does not use associativity to good effect in
	* folding string concatenations.  This is room for improvement.
	*
	* -------------
	*
	* A bit of history: this method was added because an
	* expression like...
	*
	*     "a" + "b" + "c" + "d"
	*
	* ...was evaluated at compile-time as...
	*
	*     (new StringBuffer((new StringBuffer("a")).append("b").toString())).
	*      append((new StringBuffer("c")).append("d").toString()).toString()
	*
	* Alex Garthwaite, in profiling the memory allocation of the
	* compiler, noticed this and suggested that the method inlineValueSB()
	* be added to evaluate constant string concatenations in a more
	* efficient manner.  The compiler now builds the string in a
	* top-down fashion, by accumulating the result in a StringBuffer
	* which is allocated once and passed in as a parameter.  The new
	* evaluation scheme is equivalent to...
	*
	*     (new StringBuffer("a")).append("b").append("c").append("d")
	*                 .toString()
	*
	* ...which is more efficient.  Since then, the code has been modified
	* to fix certain problems.  Now, for example, it can return `null'
	* when it encounters a concatenation which it is not able to
	* evaluate.
	*
	* See also Expression#inlineValueSB() and ExprExpression#inlineValueSB().
	*/
	@:overload @:protected override private function inlineValueSB(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, buffer : java.lang.StringBuffer) : java.lang.StringBuffer;
	
	/**
	* The cost of inlining this expression
	*/
	@:overload @:public override public function costInline(thresh : Int, env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Int;
	
	@:overload @:public override public function codeValue(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler) : Void;
	
	
}

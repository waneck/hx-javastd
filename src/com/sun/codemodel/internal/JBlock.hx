package com.sun.codemodel.internal;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JBlock implements com.sun.codemodel.internal.JGenerable implements com.sun.codemodel.internal.JStatement
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(bracesRequired : Bool, indentRequired : Bool) : Void;
	
	/**
	* Returns a read-only view of {@link JStatement}s and {@link JDeclaration}
	* in this block.
	*/
	@:overload @:public public function getContents() : java.util.List<Dynamic>;
	
	/**
	* Gets the current position to which new statements will be inserted.
	*
	* For example if the value is 0, newly created instructions will be
	* inserted at the very beginning of the block.
	*
	* @see #pos(int)
	*/
	@:overload @:public public function pos() : Int;
	
	/**
	* Sets the current position.
	*
	* @return
	*      the old value of the current position.
	* @throws IllegalArgumentException
	*      if the new position value is illegal.
	*
	* @see #pos()
	*/
	@:overload @:public public function pos(newPos : Int) : Int;
	
	/**
	* Returns true if this block is empty and does not contain
	* any statement.
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	/**
	* Adds a local variable declaration to this block
	*
	* @param type
	*        JType of the variable
	*
	* @param name
	*        Name of the variable
	*
	* @return Newly generated JVar
	*/
	@:overload @:public public function decl(type : com.sun.codemodel.internal.JType, name : String) : com.sun.codemodel.internal.JVar;
	
	/**
	* Adds a local variable declaration to this block
	*
	* @param type
	*        JType of the variable
	*
	* @param name
	*        Name of the variable
	*
	* @param init
	*        Initialization expression for this variable.  May be null.
	*
	* @return Newly generated JVar
	*/
	@:overload @:public public function decl(type : com.sun.codemodel.internal.JType, name : String, init : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JVar;
	
	/**
	* Adds a local variable declaration to this block
	*
	* @param mods
	*        Modifiers for the variable
	*
	* @param type
	*        JType of the variable
	*
	* @param name
	*        Name of the variable
	*
	* @param init
	*        Initialization expression for this variable.  May be null.
	*
	* @return Newly generated JVar
	*/
	@:overload @:public public function decl(mods : Int, type : com.sun.codemodel.internal.JType, name : String, init : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JVar;
	
	/**
	* Creates an assignment statement and adds it to this block.
	*
	* @param lhs
	*        Assignable variable or field for left hand side of expression
	*
	* @param exp
	*        Right hand side expression
	*/
	@:overload @:public public function assign(lhs : com.sun.codemodel.internal.JAssignmentTarget, exp : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JBlock;
	
	@:overload @:public public function assignPlus(lhs : com.sun.codemodel.internal.JAssignmentTarget, exp : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JBlock;
	
	/**
	* Creates an invocation statement and adds it to this block.
	*
	* @param expr
	*        JExpression evaluating to the class or object upon which
	*        the named method will be invoked
	*
	* @param method
	*        Name of method to invoke
	*
	* @return Newly generated JInvocation
	*/
	@:overload @:public public function invoke(expr : com.sun.codemodel.internal.JExpression, method : String) : com.sun.codemodel.internal.JInvocation;
	
	/**
	* Creates an invocation statement and adds it to this block.
	*
	* @param expr
	*        JExpression evaluating to the class or object upon which
	*        the method will be invoked
	*
	* @param method
	*        JMethod to invoke
	*
	* @return Newly generated JInvocation
	*/
	@:overload @:public public function invoke(expr : com.sun.codemodel.internal.JExpression, method : com.sun.codemodel.internal.JMethod) : com.sun.codemodel.internal.JInvocation;
	
	/**
	* Creates a static invocation statement.
	*/
	@:overload @:public public function staticInvoke(type : com.sun.codemodel.internal.JClass, method : String) : com.sun.codemodel.internal.JInvocation;
	
	/**
	* Creates an invocation statement and adds it to this block.
	*
	* @param method
	*        Name of method to invoke
	*
	* @return Newly generated JInvocation
	*/
	@:overload @:public public function invoke(method : String) : com.sun.codemodel.internal.JInvocation;
	
	/**
	* Creates an invocation statement and adds it to this block.
	*
	* @param method
	*        JMethod to invoke
	*
	* @return Newly generated JInvocation
	*/
	@:overload @:public public function invoke(method : com.sun.codemodel.internal.JMethod) : com.sun.codemodel.internal.JInvocation;
	
	/**
	* Adds a statement to this block
	*
	* @param s
	*        JStatement to be added
	*
	* @return This block
	*/
	@:overload @:public public function add(s : com.sun.codemodel.internal.JStatement) : com.sun.codemodel.internal.JBlock;
	
	/**
	* Create an If statement and add it to this block
	*
	* @param expr
	*        JExpression to be tested to determine branching
	*
	* @return Newly generated conditional statement
	*/
	@:overload @:public public function _if(expr : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JConditional;
	
	/**
	* Create a For statement and add it to this block
	*
	* @return Newly generated For statement
	*/
	@:overload @:public public function _for() : com.sun.codemodel.internal.JForLoop;
	
	/**
	* Create a While statement and add it to this block
	*
	* @return Newly generated While statement
	*/
	@:overload @:public public function _while(test : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JWhileLoop;
	
	/**
	* Create a switch/case statement and add it to this block
	*/
	@:overload @:public public function _switch(test : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JSwitch;
	
	/**
	* Create a Do statement and add it to this block
	*
	* @return Newly generated Do statement
	*/
	@:overload @:public public function _do(test : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JDoLoop;
	
	/**
	* Create a Try statement and add it to this block
	*
	* @return Newly generated Try statement
	*/
	@:overload @:public public function _try() : com.sun.codemodel.internal.JTryBlock;
	
	/**
	* Create a return statement and add it to this block
	*/
	@:overload @:public public function _return() : Void;
	
	/**
	* Create a return statement and add it to this block
	*/
	@:overload @:public public function _return(exp : com.sun.codemodel.internal.JExpression) : Void;
	
	/**
	* Create a throw statement and add it to this block
	*/
	@:overload @:public public function _throw(exp : com.sun.codemodel.internal.JExpression) : Void;
	
	/**
	* Create a break statement and add it to this block
	*/
	@:overload @:public public function _break() : Void;
	
	@:overload @:public public function _break(label : com.sun.codemodel.internal.JLabel) : Void;
	
	/**
	* Create a label, which can be referenced from
	* <code>continue</code> and <code>break</code> statements.
	*/
	@:overload @:public public function label(name : String) : com.sun.codemodel.internal.JLabel;
	
	/**
	* Create a continue statement and add it to this block
	*/
	@:overload @:public public function _continue(label : com.sun.codemodel.internal.JLabel) : Void;
	
	@:overload @:public public function _continue() : Void;
	
	/**
	* Create a sub-block and add it to this block
	*/
	@:overload @:public public function block() : com.sun.codemodel.internal.JBlock;
	
	/**
	* Creates a "literal" statement directly.
	*
	* <p>
	* Specified string is printed as-is.
	* This is useful as a short-cut.
	*
	* <p>
	* For example, you can invoke this method as:
	* <code>directStatement("a=b+c;")</code>.
	*/
	@:overload @:public public function directStatement(source : String) : com.sun.codemodel.internal.JStatement;
	
	@:overload @:public public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	/**
	* Creates an enhanced For statement based on j2se 1.5 JLS
	* and add it to this block
	*
	* @return Newly generated enhanced For statement per j2se 1.5
	* specification
	*/
	@:overload @:public public function forEach(varType : com.sun.codemodel.internal.JType, name : String, collection : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JForEach;
	
	@:overload @:public public function state(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}

package com.sun.tools.javadoc;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ConstructorDocImpl extends com.sun.tools.javadoc.ExecutableMemberDocImpl implements com.sun.javadoc.ConstructorDoc
{
	/**
	* constructor.
	*/
	@:overload @:public public function new(env : com.sun.tools.javadoc.DocEnv, sym : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol) : Void;
	
	/**
	* constructor.
	*/
	@:overload @:public public function new(env : com.sun.tools.javadoc.DocEnv, sym : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol, docComment : String, tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	/**
	* Return true if it is a constructor, which it is.
	*
	* @return true
	*/
	@:overload @:public override public function isConstructor() : Bool;
	
	/**
	* Get the name.
	*
	* @return the name of the member qualified by class (but not package)
	*/
	@:overload @:public override public function name() : String;
	
	/**
	* Get the name.
	*
	* @return the qualified name of the member.
	*/
	@:overload @:public override public function qualifiedName() : String;
	
	/**
	* Returns a string representation of this constructor.  Includes the
	* qualified signature and any type parameters.
	* Type parameters precede the class name, as they do in the syntax
	* for invoking constructors with explicit type parameters using "new".
	* (This is unlike the syntax for invoking methods with explicit type
	* parameters.)
	*/
	@:overload @:public override public function toString() : String;
	
	
}

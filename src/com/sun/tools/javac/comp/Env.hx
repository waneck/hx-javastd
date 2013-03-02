package com.sun.tools.javac.comp;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Env<A> implements java.lang.Iterable<com.sun.tools.javac.comp.Env<A>>
{
	/** The next enclosing environment.
	*/
	public var next : com.sun.tools.javac.comp.Env<A>;
	
	/** The environment enclosing the current class.
	*/
	public var outer : com.sun.tools.javac.comp.Env<A>;
	
	/** The tree with which this environment is associated.
	*/
	public var tree : com.sun.tools.javac.tree.JCTree;
	
	/** The enclosing toplevel tree.
	*/
	public var toplevel : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit;
	
	/** The next enclosing class definition.
	*/
	public var enclClass : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl;
	
	/** The next enclosing method definition.
	*/
	public var enclMethod : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl;
	
	/** A generic field for further information.
	*/
	public var info : A;
	
	/** Is this an environment for evaluating a base clause?
	*/
	public var baseClause : Bool;
	
	/** Create an outermost environment for a given (toplevel)tree,
	*  with a given info field.
	*/
	@:overload public function new(tree : com.sun.tools.javac.tree.JCTree, info : A) : Void;
	
	/** Duplicate this environment, updating with given tree and info,
	*  and copying all other fields.
	*/
	@:overload public function dup(tree : com.sun.tools.javac.tree.JCTree, info : A) : com.sun.tools.javac.comp.Env<A>;
	
	/** Duplicate this environment into a given Environment,
	*  using its tree and info, and copying all other fields.
	*/
	@:overload public function dupto(that : com.sun.tools.javac.comp.Env<A>) : com.sun.tools.javac.comp.Env<A>;
	
	/** Duplicate this environment, updating with given tree,
	*  and copying all other fields.
	*/
	@:overload public function dup(tree : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.comp.Env<A>;
	
	/** Return closest enclosing environment which points to a tree with given tag.
	*/
	@:overload public function enclosing(tag : Int) : com.sun.tools.javac.comp.Env<A>;
	
	@:overload public function toString() : String;
	
	@:overload public function iterator() : java.util.Iterator<com.sun.tools.javac.comp.Env<A>>;
	
	
}

package com.sun.tools.javac.comp;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
/** This class enters symbols for all encountered definitions into
*  the symbol table. The pass consists of two phases, organized as
*  follows:
*
*  <p>In the first phase, all class symbols are intered into their
*  enclosing scope, descending recursively down the tree for classes
*  which are members of other classes. The class symbols are given a
*  MemberEnter object as completer.
*
*  <p>In the second phase classes are completed using
*  MemberEnter.complete().  Completion might occur on demand, but
*  any classes that are not completed that way will be eventually
*  completed by processing the `uncompleted' queue.  Completion
*  entails (1) determination of a class's parameters, supertype and
*  interfaces, as well as (2) entering all symbols defined in the
*  class into its scope, with the exception of class symbols which
*  have been entered in phase 1.  (2) depends on (1) having been
*  completed for a class and all its superclasses and enclosing
*  classes. That's why, after doing (1), we put classes in a
*  `halfcompleted' queue. Only when we have performed (1) for a class
*  and all it's superclasses and enclosing classes, we proceed to
*  (2).
*
*  <p>Whereas the first phase is organized as a sweep through all
*  compiled syntax trees, the second phase is demand. Members of a
*  class are entered when the contents of a class are first
*  accessed. This is accomplished by installing completer objects in
*  class symbols for compiled classes which invoke the member-enter
*  phase for the corresponding class tree.
*
*  <p>Classes migrate from one phase to the next via queues:
*
*  <pre>
*  class enter -> (Enter.uncompleted)         --> member enter (1)
*              -> (MemberEnter.halfcompleted) --> member enter (2)
*              -> (Todo)                      --> attribute
*                                              (only for toplevel classes)
*  </pre>
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Enter extends com.sun.tools.javac.tree.JCTree.JCTree_Visitor
{
	private static var enterKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.comp.Enter>;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.comp.Enter;
	
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Accessor for typeEnvs
	*/
	@:overload public function getEnv(sym : TypeSymbol) : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	@:overload public function getClassEnv(sym : TypeSymbol) : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	/** Create a fresh environment for class bodies.
	*  This will create a fresh scope for local symbols of a class, referred
	*  to by the environments info.scope field.
	*  This scope will contain
	*    - symbols for this and super
	*    - symbols for any type parameters
	*  In addition, it serves as an anchor for scopes of methods and initializers
	*  which are nested in this scope via Scope.dup().
	*  This scope should not be confused with the members scope of a class.
	*
	*  @param tree     The class definition.
	*  @param env      The environment current outside of the class definition.
	*/
	@:overload public function classEnv(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	@:overload public function getTopLevelEnv(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit) : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	/** Visitor argument: the current environment.
	*/
	private var env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	@:overload override public function visitTopLevel(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit) : Void;
	
	@:overload override public function visitClassDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : Void;
	
	/** Complain about a duplicate class. */
	@:overload private function duplicateClass(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, c : ClassSymbol) : Void;
	
	/** Class enter visitor method for type parameters.
	*  Enter a symbol for type parameter in local scope, after checking that it
	*  is unique.
	*/
	@:overload override public function visitTypeParameter(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter) : Void;
	
	/** Default class enter visitor method: do nothing.
	*/
	@:overload override public function visitTree(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	/** Main method: enter all classes in a list of toplevel trees.
	*  @param trees      The list of trees to be processed.
	*/
	@:overload public function main(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit>) : Void;
	
	/** Main method: enter one class from a list of toplevel trees and
	*  place the rest on uncompleted for later processing.
	*  @param trees      The list of trees to be processed.
	*  @param c          The class symbol to be processed.
	*/
	@:overload public function complete(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit>, c : ClassSymbol) : Void;
	
	
}

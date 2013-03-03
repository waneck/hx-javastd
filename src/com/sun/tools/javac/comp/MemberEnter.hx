package com.sun.tools.javac.comp;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class MemberEnter extends com.sun.tools.javac.tree.JCTree.JCTree_Visitor implements Completer
{
	/** This is the second phase of Enter, in which classes are completed
	*  by entering their members into the class scope using
	*  MemberEnter.complete().  See Enter for an overview.
	*
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	@:protected @:static @:final private static var memberEnterKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.comp.MemberEnter>;
	
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.comp.MemberEnter;
	
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Visitor argument: the current environment
	*/
	@:protected private var env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	/** Enter field and method definitions and process import
	*  clauses, catching any completion failure exceptions.
	*/
	@:overload @:protected private function memberEnter(tree : com.sun.tools.javac.tree.JCTree, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : Void;
	
	@:overload @:public override public function visitTopLevel(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit) : Void;
	
	@:overload @:public override public function visitImport(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCImport) : Void;
	
	@:overload @:public override public function visitMethodDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl) : Void;
	
	@:overload @:public override public function visitVarDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl) : Void;
	
	/** Default member enter visitor method: do nothing
	*/
	@:overload @:public override public function visitTree(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	@:overload @:public override public function visitErroneous(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCErroneous) : Void;
	
	@:overload @:public public function getMethodEnv(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	@:overload @:public public function getInitEnv(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	/** Complete entering a class.
	*  @param sym         The symbol of the class to be completed.
	*/
	@:overload @:public public function complete(sym : com.sun.tools.javac.code.Symbol) : Void;
	
	
}
@:native('com$sun$tools$javac$comp$MemberEnter$Synthesizer') @:internal extern class MemberEnter_Synthesizer extends com.sun.tools.javac.tree.JCTree.JCTree_Visitor
{
	@:overload @:public override public function visitTree(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	@:overload @:public override public function visitIdent(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent) : Void;
	
	@:overload @:public override public function visitSelect(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess) : Void;
	
	@:overload @:public override public function visitTypeApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeApply) : Void;
	
	
}

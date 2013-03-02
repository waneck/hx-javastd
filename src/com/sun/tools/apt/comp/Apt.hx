package com.sun.tools.apt.comp;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
//// import com.sun.mirror.apt.AnnotationProcessorFactory;
extern class Apt extends com.sun.tools.javac.util.ListBuffer<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>
{
	@:overload public function getSourceFileNames() : java.util.Set<String>;
	
	@:overload public function getClassFileNames() : java.util.Set<String>;
	
	/** The context key for the todo list. */
	private static var aptKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.apt.comp.Apt>;
	
	/** Get the Apt instance for this context. */
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.apt.comp.Apt;
	
	/** Create a new apt list. */
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload public function main(treeList : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit>, classes : com.sun.tools.javac.util.ListBuffer<ClassSymbol>, origOptions : java.util.Map<String, String>, aptCL : java.lang.ClassLoader, providedFactory : com.sun.mirror.apt.AnnotationProcessorFactory, productiveFactories : java.util.Set<Class<com.sun.mirror.apt.AnnotationProcessorFactory>>) : Void;
	
	
}
/**
* Used to scan javac trees to build data structures needed for
* bootstrapping the apt environment.  In particular:
*
* <ul>
*
* <li> Generate list of canonical names of annotation types that
* appear in source files given on the command line
*
* <li> Collect list of javac symbols representing source files
* given on the command line
*
* </ul>
*/
@:native('com$sun$tools$apt$comp$Apt$AptTreeScanner') @:internal extern class Apt_AptTreeScanner extends com.sun.tools.javac.tree.TreeScanner
{
	@:overload public function getAnnotationSet() : java.util.Set<String>;
	
	@:overload public function new() : Void;
	
	@:overload public function visitTopLevel(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit) : Void;
	
	@:overload public function visitBlock(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : Void;
	
	@:overload public function visitClassDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : Void;
	
	@:overload public function visitMethodDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl) : Void;
	
	@:overload public function visitVarDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl) : Void;
	
	@:overload public function visitAnnotation(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation) : Void;
	
	
}

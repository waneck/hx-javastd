package com.sun.tools.javac.api;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JavacTrees extends com.sun.source.util.Trees
{
	@:overload public static function instance(task : javax.tools.JavaCompiler.JavaCompiler_CompilationTask) : JavacTrees;
	
	@:overload public static function instance(env : javax.annotation.processing.ProcessingEnvironment) : JavacTrees;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : JavacTrees;
	
	@:overload public function updateContext(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload override public function getSourcePositions() : com.sun.source.util.SourcePositions;
	
	@:overload override public function getTree(element : javax.lang.model.element.TypeElement) : JCClassDecl;
	
	@:overload override public function getTree(method : javax.lang.model.element.ExecutableElement) : JCMethodDecl;
	
	@:overload override public function getTree(element : javax.lang.model.element.Element) : com.sun.tools.javac.tree.JCTree;
	
	@:overload override public function getTree(e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror) : com.sun.tools.javac.tree.JCTree;
	
	@:overload override public function getTree(e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror, v : javax.lang.model.element.AnnotationValue) : com.sun.tools.javac.tree.JCTree;
	
	@:overload override public function getPath(unit : com.sun.source.tree.CompilationUnitTree, node : com.sun.source.tree.Tree) : com.sun.source.util.TreePath;
	
	@:overload override public function getPath(e : javax.lang.model.element.Element) : com.sun.source.util.TreePath;
	
	@:overload override public function getPath(e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror) : com.sun.source.util.TreePath;
	
	@:overload override public function getPath(e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror, v : javax.lang.model.element.AnnotationValue) : com.sun.source.util.TreePath;
	
	@:overload override public function getElement(path : com.sun.source.util.TreePath) : javax.lang.model.element.Element;
	
	@:overload override public function getTypeMirror(path : com.sun.source.util.TreePath) : javax.lang.model.type.TypeMirror;
	
	@:overload override public function getScope(path : com.sun.source.util.TreePath) : com.sun.tools.javac.api.JavacScope;
	
	@:overload override public function getDocComment(path : com.sun.source.util.TreePath) : String;
	
	@:overload override public function isAccessible(scope : com.sun.source.tree.Scope, type : javax.lang.model.element.TypeElement) : Bool;
	
	@:overload override public function isAccessible(scope : com.sun.source.tree.Scope, member : javax.lang.model.element.Element, type : javax.lang.model.type.DeclaredType) : Bool;
	
	/**
	* Gets the original type from the ErrorType object.
	* @param errorType The errorType for which we want to get the original type.
	* @returns TypeMirror corresponding to the original type, replaced by the ErrorType.
	*          noType (type.tag == NONE) is returned if there is no original type.
	*/
	@:overload override public function getOriginalType(errorType : javax.lang.model.type.ErrorType) : javax.lang.model.type.TypeMirror;
	
	/**
	* Prints a message of the specified kind at the location of the
	* tree within the provided compilation unit
	*
	* @param kind the kind of message
	* @param msg  the message, or an empty string if none
	* @param t    the tree to use as a position hint
	* @param root the compilation unit that contains tree
	*/
	@:overload override public function printMessage(kind : javax.tools.Diagnostic.Diagnostic_Kind, msg : java.lang.CharSequence, t : com.sun.source.tree.Tree, root : com.sun.source.tree.CompilationUnitTree) : Void;
	
	@:overload override public function getLub(tree : com.sun.source.tree.CatchTree) : javax.lang.model.type.TypeMirror;
	
	
}
/**
* Makes a copy of a tree, noting the value resulting from copying a particular leaf.
**/
@:native('com$sun$tools$javac$api$JavacTrees$Copier') @:internal extern class JavacTrees_Copier extends com.sun.tools.javac.tree.TreeCopier<com.sun.tools.javac.tree.JCTree>
{
	@:overload public function copy<T : com.sun.tools.javac.tree.JCTree>(t : T, leaf : com.sun.tools.javac.tree.JCTree) : T;
	
	
}

package com.sun.source.util;
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
extern class Trees
{
	/**
	* Gets a Trees object for a given CompilationTask.
	* @param task the compilation task for which to get the Trees object
	* @throws IllegalArgumentException if the task does not support the Trees API.
	*/
	@:overload public static function instance(task : javax.tools.JavaCompiler.JavaCompiler_CompilationTask) : com.sun.source.util.Trees;
	
	/**
	* Gets a Trees object for a given ProcessingEnvironment.
	* @param env the processing environment for which to get the Trees object
	* @throws IllegalArgumentException if the env does not support the Trees API.
	*/
	@:overload public static function instance(env : javax.annotation.processing.ProcessingEnvironment) : com.sun.source.util.Trees;
	
	/**
	* Gets a utility object for obtaining source positions.
	*/
	@:overload @:abstract public function getSourcePositions() : com.sun.source.util.SourcePositions;
	
	/**
	* Gets the Tree node for a given Element.
	* Returns null if the node can not be found.
	*/
	@:overload @:abstract public function getTree(element : javax.lang.model.element.Element) : com.sun.source.tree.Tree;
	
	/**
	* Gets the ClassTree node for a given TypeElement.
	* Returns null if the node can not be found.
	*/
	@:overload @:abstract public function getTree(element : javax.lang.model.element.TypeElement) : com.sun.source.tree.ClassTree;
	
	/**
	* Gets the MethodTree node for a given ExecutableElement.
	* Returns null if the node can not be found.
	*/
	@:overload @:abstract public function getTree(method : javax.lang.model.element.ExecutableElement) : com.sun.source.tree.MethodTree;
	
	/**
	* Gets the Tree node for an AnnotationMirror on a given Element.
	* Returns null if the node can not be found.
	*/
	@:overload @:abstract public function getTree(e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror) : com.sun.source.tree.Tree;
	
	/**
	* Gets the Tree node for an AnnotationValue for an AnnotationMirror on a given Element.
	* Returns null if the node can not be found.
	*/
	@:overload @:abstract public function getTree(e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror, v : javax.lang.model.element.AnnotationValue) : com.sun.source.tree.Tree;
	
	/**
	* Gets the path to tree node within the specified compilation unit.
	*/
	@:overload @:abstract public function getPath(unit : com.sun.source.tree.CompilationUnitTree, node : com.sun.source.tree.Tree) : com.sun.source.util.TreePath;
	
	/**
	* Gets the TreePath node for a given Element.
	* Returns null if the node can not be found.
	*/
	@:overload @:abstract public function getPath(e : javax.lang.model.element.Element) : com.sun.source.util.TreePath;
	
	/**
	* Gets the TreePath node for an AnnotationMirror on a given Element.
	* Returns null if the node can not be found.
	*/
	@:overload @:abstract public function getPath(e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror) : com.sun.source.util.TreePath;
	
	/**
	* Gets the TreePath node for an AnnotationValue for an AnnotationMirror on a given Element.
	* Returns null if the node can not be found.
	*/
	@:overload @:abstract public function getPath(e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror, v : javax.lang.model.element.AnnotationValue) : com.sun.source.util.TreePath;
	
	/**
	* Gets the Element for the Tree node identified by a given TreePath.
	* Returns null if the element is not available.
	* @throws IllegalArgumentException is the TreePath does not identify
	* a Tree node that might have an associated Element.
	*/
	@:overload @:abstract public function getElement(path : com.sun.source.util.TreePath) : javax.lang.model.element.Element;
	
	/**
	* Gets the TypeMirror for the Tree node identified by a given TreePath.
	* Returns null if the TypeMirror is not available.
	* @throws IllegalArgumentException is the TreePath does not identify
	* a Tree node that might have an associated TypeMirror.
	*/
	@:overload @:abstract public function getTypeMirror(path : com.sun.source.util.TreePath) : javax.lang.model.type.TypeMirror;
	
	/**
	* Gets the Scope for the Tree node identified by a given TreePath.
	* Returns null if the Scope is not available.
	*/
	@:overload @:abstract public function getScope(path : com.sun.source.util.TreePath) : com.sun.source.tree.Scope;
	
	/**
	* Gets the doc comment, if any, for the Tree node identified by a given TreePath.
	* Returns null if no doc comment was found.
	*/
	@:overload @:abstract public function getDocComment(path : com.sun.source.util.TreePath) : String;
	
	/**
	* Checks whether a given type is accessible in a given scope.
	* @param scope the scope to be checked
	* @param type the type to be checked
	* @return true if {@code type} is accessible
	*/
	@:overload @:abstract public function isAccessible(scope : com.sun.source.tree.Scope, type : javax.lang.model.element.TypeElement) : Bool;
	
	/**
	* Checks whether the given element is accessible as a member of the given
	* type in a given scope.
	* @param scope the scope to be checked
	* @param member the member to be checked
	* @param type the type for which to check if the member is accessible
	* @return true if {@code member} is accessible in {@code type}
	*/
	@:overload @:abstract public function isAccessible(scope : com.sun.source.tree.Scope, member : javax.lang.model.element.Element, type : javax.lang.model.type.DeclaredType) : Bool;
	
	/**
	* Gets the original type from the ErrorType object.
	* @param errorType The errorType for which we want to get the original type.
	* @return javax.lang.model.type.TypeMirror corresponding to the original type, replaced by the ErrorType.
	*/
	@:overload @:abstract public function getOriginalType(errorType : javax.lang.model.type.ErrorType) : javax.lang.model.type.TypeMirror;
	
	/**
	* Prints a message of the specified kind at the location of the
	* tree within the provided compilation unit
	*
	* @param kind the kind of message
	* @param msg  the message, or an empty string if none
	* @param t    the tree to use as a position hint
	* @param root the compilation unit that contains tree
	*/
	@:overload @:abstract public function printMessage(kind : javax.tools.Diagnostic.Diagnostic_Kind, msg : java.lang.CharSequence, t : com.sun.source.tree.Tree, root : com.sun.source.tree.CompilationUnitTree) : Void;
	
	/**
	* Gets the lub of an exception parameter declared in a catch clause.
	* @param tree the tree for the catch clause
	* @return The lub of the exception parameter
	*/
	@:overload @:abstract public function getLub(tree : com.sun.source.tree.CatchTree) : javax.lang.model.type.TypeMirror;
	
	
}

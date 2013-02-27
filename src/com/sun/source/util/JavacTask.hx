package com.sun.source.util;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class JavacTask implements javax.tools.JavaCompiler.JavaCompiler_CompilationTask
{
	/**
	* Parse the specified files returning a list of abstract syntax trees.
	*
	* @return a list of abstract syntax trees
	* @throws IOException if an unhandled I/O error occurred in the compiler.
	*/
	@:overload @:abstract public function parse() : java.lang.Iterable<com.sun.source.tree.CompilationUnitTree>;
	
	/**
	* Complete all analysis.
	*
	* @return a list of elements that were analyzed
	* @throws IOException if an unhandled I/O error occurred in the compiler.
	*/
	@:overload @:abstract public function analyze() : java.lang.Iterable<javax.lang.model.element.Element>;
	
	/**
	* Generate code.
	*
	* @return a list of files that were generated
	* @throws IOException if an unhandled I/O error occurred in the compiler.
	*/
	@:overload @:abstract public function generate() : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	/**
	* The specified listener will receive events describing the progress of
	* this compilation task.
	*/
	@:overload @:abstract public function setTaskListener(taskListener : com.sun.source.util.TaskListener) : Void;
	
	/**
	* Get a type mirror of the tree node determined by the specified path.
	*/
	@:overload @:abstract public function getTypeMirror(path : java.lang.Iterable<com.sun.source.tree.Tree>) : javax.lang.model.type.TypeMirror;
	
	/**
	* Get a utility object for dealing with program elements.
	*/
	@:overload @:abstract public function getElements() : javax.lang.model.util.Elements;
	
	/**
	* Get a utility object for dealing with type mirrors.
	*/
	@:overload @:abstract public function getTypes() : javax.lang.model.util.Types;
	
	/**
	* Performs this compilation task.  The compilation may only
	* be performed once.  Subsequent calls to this method throw
	* IllegalStateException.
	*
	* @return true if and only all the files compiled without errors;
	* false otherwise
	*
	* @throws RuntimeException if an unrecoverable error occurred
	* in a user-supplied component.  The
	* {@linkplain Throwable#getCause() cause} will be the error
	* in user code.
	* @throws IllegalStateException if called more than once
	*/
	@:overload public function call() : Null<Bool>;
	
	/**
	* Sets processors (for annotation processing).  This will
	* bypass the normal discovery mechanism.
	*
	* @param processors processors (for annotation processing)
	* @throws IllegalStateException if the task has started
	*/
	@:overload public function setProcessors(processors : java.lang.Iterable<javax.annotation.processing.Processor>) : Void;
	
	/**
	* Set the locale to be applied when formatting diagnostics and
	* other localized data.
	*
	* @param locale the locale to apply; {@code null} means apply no
	* locale
	* @throws IllegalStateException if the task has started
	*/
	@:overload public function setLocale(locale : java.util.Locale) : Void;
	
	
}

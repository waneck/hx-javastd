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
extern class JavacTaskImpl extends com.sun.source.util.JavacTask
{
	@:overload @:public override public function call() : Null<Bool>;
	
	@:overload @:public override public function setProcessors(processors : java.lang.Iterable<javax.annotation.processing.Processor>) : Void;
	
	@:overload @:public override public function setLocale(locale : java.util.Locale) : Void;
	
	/**
	* Construct a JavaFileObject from the given file.
	*
	* <p><b>TODO: this method is useless here</b></p>
	*
	* @param file a file
	* @return a JavaFileObject from the standard file manager.
	*/
	@:overload @:public public function asJavaFileObject(file : java.io.File) : javax.tools.JavaFileObject;
	
	@:overload @:public override public function setTaskListener(taskListener : com.sun.source.util.TaskListener) : Void;
	
	/**
	* Parse the specified files returning a list of abstract syntax trees.
	*
	* @throws java.io.IOException TODO
	* @return a list of abstract syntax trees
	*/
	@:overload @:public override public function parse() : java.lang.Iterable<com.sun.source.tree.CompilationUnitTree>;
	
	/**
	* Translate all the abstract syntax trees to elements.
	*
	* @throws IOException TODO
	* @return a list of elements corresponding to the top level
	* classes in the abstract syntax trees
	*/
	@:overload @:public public function enter() : java.lang.Iterable<javax.lang.model.element.TypeElement>;
	
	/**
	* Translate the given abstract syntax trees to elements.
	*
	* @param trees a list of abstract syntax trees.
	* @throws java.io.IOException TODO
	* @return a list of elements corresponding to the top level
	* classes in the abstract syntax trees
	*/
	@:overload @:public public function enter(trees : java.lang.Iterable<com.sun.source.tree.CompilationUnitTree>) : java.lang.Iterable<javax.lang.model.element.TypeElement>;
	
	/**
	* Complete all analysis.
	* @throws IOException TODO
	*/
	@:overload @:public override public function analyze() : java.lang.Iterable<javax.lang.model.element.Element>;
	
	/**
	* Complete all analysis on the given classes.
	* This can be used to ensure that all compile time errors are reported.
	* The classes must have previously been returned from {@link #enter}.
	* If null is specified, all outstanding classes will be analyzed.
	*
	* @param classes a list of class elements
	*/
	@:overload @:public public function analyze(classes : java.lang.Iterable<javax.lang.model.element.TypeElement>) : java.lang.Iterable<javax.lang.model.element.Element>;
	
	/**
	* Generate code.
	* @throws IOException TODO
	*/
	@:overload @:public override public function generate() : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	/**
	* Generate code corresponding to the given classes.
	* The classes must have previously been returned from {@link #enter}.
	* If there are classes outstanding to be analyzed, that will be done before
	* any classes are generated.
	* If null is specified, code will be generated for all outstanding classes.
	*
	* @param classes a list of class elements
	*/
	@:overload @:public public function generate(classes : java.lang.Iterable<javax.lang.model.element.TypeElement>) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	@:overload @:public override public function getTypeMirror(path : java.lang.Iterable<com.sun.source.tree.Tree>) : javax.lang.model.type.TypeMirror;
	
	@:overload @:public override public function getElements() : com.sun.tools.javac.model.JavacElements;
	
	@:overload @:public override public function getTypes() : com.sun.tools.javac.model.JavacTypes;
	
	@:overload @:public public function pathFor(unit : com.sun.source.tree.CompilationUnitTree, node : com.sun.source.tree.Tree) : java.lang.Iterable<com.sun.source.tree.Tree>;
	
	/**
	* For internal use only.  This method will be
	* removed without warning.
	*/
	@:overload @:public public function getContext() : com.sun.tools.javac.util.Context;
	
	/**
	* For internal use only.  This method will be
	* removed without warning.
	*/
	@:overload @:public public function updateContext(newContext : com.sun.tools.javac.util.Context) : Void;
	
	/**
	* For internal use only.  This method will be
	* removed without warning.
	*/
	@:overload @:public public function parseType(expr : String, scope : javax.lang.model.element.TypeElement) : com.sun.tools.javac.code.Type;
	
	
}
@:native('com$sun$tools$javac$api$JavacTaskImpl$Filter') @:internal extern class JavacTaskImpl_Filter
{
	
}

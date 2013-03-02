package com.sun.tools.apt.main;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AptJavaCompiler extends com.sun.tools.javac.main.JavaCompiler
{
	/** The context key for the compiler. */
	private static var compilerKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.apt.main.AptJavaCompiler>;
	
	/** Get the JavaCompiler instance for this context. */
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.apt.main.AptJavaCompiler;
	
	@:overload public function getSourceFileNames() : java.util.Set<String>;
	
	/** List of names of generated class files.
	*/
	@:overload public function getClassFileNames() : java.util.Set<String>;
	
	@:overload public function getAggregateGenFiles() : java.util.Set<java.io.File>;
	
	/** Construct a new compiler from a shared context.
	*/
	@:overload public function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Emit class files. This switch is always set, except for the first
	*  phase of retrofitting, where signatures are parsed.
	*/
	public var classOutput : Bool;
	
	/** The internal printing annotation processor should be used.
	*/
	public var print : Bool;
	
	/** Compilation should not be done after annotation processing.
	*/
	public var nocompile : Bool;
	
	/** Are class files being treated as declarations
	*/
	public var classesAsDecls : Bool;
	
	/** Try to open input stream with given name.
	*  Report an error if this fails.
	*  @param filename   The file name of the input stream to be opened.
	*/
	@:overload public function readSource(filename : javax.tools.JavaFileObject) : java.lang.CharSequence;
	
	/** Parse contents of input stream.
	*  @param filename     The name of the file from which input stream comes.
	*  @param input        The input stream to be parsed.
	*/
	@:overload private function parse(filename : javax.tools.JavaFileObject, content : java.lang.CharSequence) : JCCompilationUnit;
	
	@:overload private function keepComments() : Bool;
	
	/** Main method: compile a list of files, return all compiled classes
	*  @param filenames     The names of all files to be compiled.
	*/
	@:overload public function compile(filenames : com.sun.tools.javac.util.List<String>, origOptions : java.util.Map<String, String>, aptCL : java.lang.ClassLoader, providedFactory : com.sun.mirror.apt.AnnotationProcessorFactory, productiveFactories : java.util.Set<Class<com.sun.mirror.apt.AnnotationProcessorFactory>>, aggregateGenFiles : java.util.Set<java.io.File>) : com.sun.tools.javac.util.List<ClassSymbol>;
	
	
}

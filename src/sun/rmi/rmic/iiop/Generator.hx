package sun.rmi.rmic.iiop;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class Generator implements sun.rmi.rmic.Generator implements sun.rmi.rmic.iiop.Constants
{
	/**
	* Generator provides a small framework from which IIOP-specific
	* generators can inherit.  Common logic is implemented here which uses
	* both abstract methods as well as concrete methods which subclasses may
	* want to override. The following methods must be present in any subclass:
	* <pre>
	*      Default constructor
	*              CompoundType getTopType(BatchEnvironment env, ClassDefinition cdef);
	*      int parseArgs(String argv[], int currentIndex);
	*      boolean requireNewInstance();
	*              OutputType[] getOutputTypesFor(CompoundType topType,
	*                                     HashSet alreadyChecked);
	*              String getFileNameExtensionFor(OutputType outputType);
	*              void writeOutputFor (   OutputType outputType,
	*                              HashSet alreadyChecked,
	*                                                              IndentingWriter writer) throws IOException;
	* </pre>
	* @author      Bryan Atsatt
	*/
	private var alwaysGenerate : Bool;
	
	private var env : sun.rmi.rmic.iiop.BatchEnvironment;
	
	private var contextStack : sun.rmi.rmic.iiop.ContextStack;
	
	private var idl : Bool;
	
	/**
	* Examine and consume command line arguments.
	* @param argv The command line arguments. Ignore null
	* and unknown arguments. Set each consumed argument to null.
	* @param error Report any errors using the main.error() methods.
	* @return true if no errors, false otherwise.
	*/
	@:overload public function parseArgs(argv : java.NativeArray<String>, main : sun.rmi.rmic.Main) : Bool;
	
	/**
	* Return true if non-conforming types should be parsed.
	* @param stack The context stack.
	*/
	@:overload @:abstract private function parseNonConforming(stack : sun.rmi.rmic.iiop.ContextStack) : Bool;
	
	/**
	* Create and return a top-level type.
	* @param cdef The top-level class definition.
	* @param stack The context stack.
	* @return The compound type or null if is non-conforming.
	*/
	@:overload @:abstract private function getTopType(cdef : sun.tools.java.ClassDefinition, stack : sun.rmi.rmic.iiop.ContextStack) : sun.rmi.rmic.iiop.CompoundType;
	
	/**
	* Return an array containing all the file names and types that need to be
	* generated for the given top-level type.  The file names must NOT have an
	* extension (e.g. ".java").
	* @param topType The type returned by getTopType().
	* @param alreadyChecked A set of Types which have already been checked.
	*  Intended to be passed to Type.collectMatching(filter,alreadyChecked).
	*/
	@:overload @:abstract private function getOutputTypesFor(topType : sun.rmi.rmic.iiop.CompoundType, alreadyChecked : java.util.HashSet<Dynamic>) : java.NativeArray<Generator_OutputType>;
	
	/**
	* Return the file name extension for the given file name (e.g. ".java").
	* All files generated with the ".java" extension will be compiled. To
	* change this behavior for ".java" files, override the compileJavaSourceFile
	* method to return false.
	* @param outputType One of the items returned by getOutputTypesFor(...)
	*/
	@:overload @:abstract private function getFileNameExtensionFor(outputType : Generator_OutputType) : String;
	
	/**
	* Write the output for the given OutputFileName into the output stream.
	* @param name One of the items returned by getOutputTypesFor(...)
	* @param alreadyChecked A set of Types which have already been checked.
	*  Intended to be passed to Type.collectMatching(filter,alreadyChecked).
	* @param writer The output stream.
	*/
	@:overload @:abstract private function writeOutputFor(outputType : Generator_OutputType, alreadyChecked : java.util.HashSet<Dynamic>, writer : sun.rmi.rmic.IndentingWriter) : Void;
	
	/**
	* Return true if a new instance should be created for each
	* class on the command line. Subclasses which return true
	* should override newInstance() to return an appropriately
	* constructed instance.
	*/
	@:overload @:abstract private function requireNewInstance() : Bool;
	
	/**
	* Return true if the specified file needs generation.
	*/
	@:overload public function requiresGeneration(target : java.io.File, theType : sun.rmi.rmic.iiop.Type) : Bool;
	
	/**
	* Create and return a new instance of self. Subclasses
	* which need to do something other than default construction
	* must override this method.
	*/
	@:overload private function newInstance() : Generator;
	
	/**
	* Default constructor for subclasses to use.
	*/
	@:overload private function new() : Void;
	
	/**
	* Generate output. Any source files created which need compilation should
	* be added to the compiler environment using the addGeneratedFile(File)
	* method.
	*
	* @param env       The compiler environment
	* @param cdef      The definition for the implementation class or interface from
	*              which to generate output
	* @param destDir   The directory for the root of the package hierarchy
	*                          for generated files. May be null.
	*/
	@:overload public function generate(env : sun.rmi.rmic.BatchEnvironment, cdef : sun.tools.java.ClassDefinition, destDir : java.io.File) : Void;
	
	/**
	* Create and return a new instance of self. Subclasses
	* which need to do something other than default construction
	* must override this method.
	*/
	@:overload private function generateOutputFiles(topType : sun.rmi.rmic.iiop.CompoundType, env : sun.rmi.rmic.iiop.BatchEnvironment, destDir : java.io.File) : Void;
	
	/**
	* Return the File object that should be used as the output file
	* for the given OutputType.
	* @param outputType The type to create a file for.
	* @param destinationDir The directory to use as the root of the
	* package heirarchy.  May be null, in which case the current
	* classpath is searched to find the directory in which to create
	* the output file.  If that search fails (most likely because the
	* package directory lives in a zip or jar file rather than the
	* file system), the current user directory is used.
	*/
	@:overload private function getFileFor(outputType : Generator_OutputType, destinationDir : java.io.File) : java.io.File;
	
	/**
	* Return an identifier to use for output.
	* @param outputType the type for which output is to be generated.
	* @return the new identifier. This implementation returns the input parameter.
	*/
	@:overload private function getOutputId(outputType : Generator_OutputType) : sun.tools.java.Identifier;
	
	/**
	* Return true if the given file should be compiled.
	* @param outputType One of the items returned by getOutputTypesFor(...) for
	*   which getFileNameExtensionFor(OutputType) returned ".java".
	*/
	@:overload private function compileJavaSourceFile(outputType : Generator_OutputType) : Bool;
	
	
}
@:native('sun$rmi$rmic$iiop$Generator$OutputType') extern class Generator_OutputType
{
	@:overload public function new(name : String, type : sun.rmi.rmic.iiop.Type) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function getType() : sun.rmi.rmic.iiop.Type;
	
	
}

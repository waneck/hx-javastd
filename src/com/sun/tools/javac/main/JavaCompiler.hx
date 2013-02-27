package com.sun.tools.javac.main;
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
extern class JavaCompiler implements com.sun.tools.javac.jvm.ClassReader.ClassReader_SourceCompleter
{
	/** The context key for the compiler. */
	private static var compilerKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<JavaCompiler>;
	
	/** Get the JavaCompiler instance for this context. */
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : JavaCompiler;
	
	/** The current version number as a string.
	*/
	@:overload public static function version() : String;
	
	/** The current full version number as a string.
	*/
	@:overload public static function fullVersion() : String;
	
	/** The log to be used for error reporting.
	*/
	public var log : com.sun.tools.javac.util.Log;
	
	/** The tree factory module.
	*/
	private var make : com.sun.tools.javac.tree.TreeMaker;
	
	/** The class reader.
	*/
	private var reader : com.sun.tools.javac.jvm.ClassReader;
	
	/** The class writer.
	*/
	private var writer : com.sun.tools.javac.jvm.ClassWriter;
	
	/** The module for the symbol table entry phases.
	*/
	private var enter : com.sun.tools.javac.comp.Enter;
	
	/** The symbol table.
	*/
	private var syms : com.sun.tools.javac.code.Symtab;
	
	/** The language version.
	*/
	private var source : com.sun.tools.javac.code.Source;
	
	/** The module for code generation.
	*/
	private var gen : com.sun.tools.javac.jvm.Gen;
	
	/** The name table.
	*/
	private var names : com.sun.tools.javac.util.Names;
	
	/** The attributor.
	*/
	private var attr : com.sun.tools.javac.comp.Attr;
	
	/** The attributor.
	*/
	private var chk : com.sun.tools.javac.comp.Check;
	
	/** The type eraser.
	*/
	private var transTypes : com.sun.tools.javac.comp.TransTypes;
	
	/** The syntactic sugar desweetener.
	*/
	private var lower : com.sun.tools.javac.comp.Lower;
	
	/** The annotation annotator.
	*/
	private var annotate : com.sun.tools.javac.comp.Annotate;
	
	/** Force a completion failure on this name
	*/
	private var completionFailureName(default, null) : com.sun.tools.javac.util.Name;
	
	/** Type utilities.
	*/
	private var types : com.sun.tools.javac.code.Types;
	
	/** Access to file objects.
	*/
	private var fileManager : javax.tools.JavaFileManager;
	
	/** Factory for parsers.
	*/
	private var parserFactory : com.sun.tools.javac.parser.ParserFactory;
	
	/** Optional listener for progress events
	*/
	private var taskListener : com.sun.source.util.TaskListener;
	
	/**
	* Annotation processing may require and provide a new instance
	* of the compiler to be used for the analyze and generate phases.
	*/
	private var delegateCompiler : JavaCompiler;
	
	/**
	* Command line options.
	*/
	private var options : com.sun.tools.javac.util.Options;
	
	private var context : com.sun.tools.javac.util.Context;
	
	/**
	* Flag set if any annotation processing occurred.
	**/
	private var annotationProcessingOccurred : Bool;
	
	/**
	* Flag set if any implicit source files read.
	**/
	private var implicitSourceFilesRead : Bool;
	
	/** Construct a new compiler using a shared context.
	*/
	@:overload public function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Verbose output.
	*/
	public var verbose : Bool;
	
	/** Emit plain Java source files rather than class files.
	*/
	public var sourceOutput : Bool;
	
	/** Emit stub source files rather than class files.
	*/
	public var stubOutput : Bool;
	
	/** Generate attributed parse tree only.
	*/
	public var attrParseOnly : Bool;
	
	/** Debug switch: Emit Java sources after inner class flattening.
	*/
	public var printFlat : Bool;
	
	/** The encoding to be used for source input.
	*/
	public var encoding : String;
	
	/** Generate code with the LineNumberTable attribute for debugging
	*/
	public var lineDebugInfo : Bool;
	
	/** Switch: should we store the ending positions?
	*/
	public var genEndPos : Bool;
	
	/** Switch: should we debug ignored exceptions
	*/
	private var devVerbose : Bool;
	
	/** Switch: should we (annotation) process packages as well
	*/
	private var processPcks : Bool;
	
	/** Switch: treat warnings as errors
	*/
	private var werror : Bool;
	
	/**
	* The policy for the order in which to perform the compilation
	*/
	private var compilePolicy : JavaCompiler_CompilePolicy;
	
	/**
	* The policy for what to do with implicitly read source files
	*/
	private var implicitSourcePolicy : JavaCompiler_ImplicitSourcePolicy;
	
	/**
	* Report activity related to compilePolicy
	*/
	public var verboseCompilePolicy : Bool;
	
	/**
	* Policy of how far to continue processing. null means until first
	* error.
	*/
	public var shouldStopPolicy : JavaCompiler_CompileState;
	
	/** A queue of all as yet unattributed classes.
	*/
	public var todo : com.sun.tools.javac.comp.Todo;
	
	/** The set of currently compiled inputfiles, needed to ensure
	*  we don't accidentally overwrite an input file when -s is set.
	*  initialized by `compile'.
	*/
	private var inputFiles : java.util.Set<javax.tools.JavaFileObject>;
	
	@:overload private function shouldStop(cs : JavaCompiler_CompileState) : Bool;
	
	/** The number of errors reported so far.
	*/
	@:overload public function errorCount() : Int;
	
	@:overload @:final private function stopIfError<T>(cs : JavaCompiler_CompileState, queue : java.util.Queue<T>) : java.util.Queue<T>;
	
	@:overload @:final private function stopIfError<T>(cs : JavaCompiler_CompileState, list : com.sun.tools.javac.util.List<T>) : com.sun.tools.javac.util.List<T>;
	
	/** The number of warnings reported so far.
	*/
	@:overload public function warningCount() : Int;
	
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
	
	/** Parse contents of file.
	*  @param filename     The name of the file to be parsed.
	*/
	@:overload public function parse(filename : String) : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit;
	
	/** Parse contents of file.
	*  @param filename     The name of the file to be parsed.
	*/
	@:overload public function parse(filename : javax.tools.JavaFileObject) : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit;
	
	/** Resolve an identifier which may be the binary name of a class or
	* the Java name of a class or package.
	* @param name      The name to resolve
	*/
	@:overload public function resolveBinaryNameOrIdent(name : String) : com.sun.tools.javac.code.Symbol;
	
	/** Resolve an identifier.
	* @param name      The identifier to resolve
	*/
	@:overload public function resolveIdent(name : String) : com.sun.tools.javac.code.Symbol;
	
	/** Complete compiling a source file that has been accessed
	*  by the class file reader.
	*  @param c          The class the source file of which needs to be compiled.
	*  @param filename   The name of the source file.
	*  @param f          An input stream that reads the source file.
	*/
	@:overload public function complete(c : ClassSymbol) : Void;
	
	public var elapsed_msec : haxe.Int64;
	
	@:overload public function compile(sourceFileObject : com.sun.tools.javac.util.List<javax.tools.JavaFileObject>) : Void;
	
	/**
	* Main method: compile a list of files, return all compiled classes
	*
	* @param sourceFileObjects file objects to be compiled
	* @param classnames class names to process for annotations
	* @param processors user provided annotation processors to bypass
	* discovery, {@code null} means that no processors were provided
	*/
	@:overload public function compile(sourceFileObjects : com.sun.tools.javac.util.List<javax.tools.JavaFileObject>, classnames : com.sun.tools.javac.util.List<String>, processors : java.lang.Iterable<javax.annotation.processing.Processor>) : Void;
	
	/**
	* Parses a list of files.
	*/
	@:overload public function parseFiles(fileObjects : java.lang.Iterable<javax.tools.JavaFileObject>) : com.sun.tools.javac.util.List<JCCompilationUnit>;
	
	/**
	* Enter the symbols found in a list of parse trees.
	* As a side-effect, this puts elements on the "todo" list.
	* Also stores a list of all top level classes in rootClasses.
	*/
	@:overload public function enterTrees(roots : com.sun.tools.javac.util.List<JCCompilationUnit>) : com.sun.tools.javac.util.List<JCCompilationUnit>;
	
	/**
	* Check if we should process annotations.
	* If so, and if no scanner is yet registered, then set up the DocCommentScanner
	* to catch doc comments, and set keepComments so the parser records them in
	* the compilation unit.
	*
	* @param processors user provided annotation processors to bypass
	* discovery, {@code null} means that no processors were provided
	*/
	@:overload public function initProcessAnnotations(processors : java.lang.Iterable<javax.annotation.processing.Processor>) : Void;
	
	@:overload public function processAnnotations(roots : com.sun.tools.javac.util.List<JCCompilationUnit>) : JavaCompiler;
	
	/**
	* Process any anotations found in the specifed compilation units.
	* @param roots a list of compilation units
	* @return an instance of the compiler in which to complete the compilation
	*/
	@:overload public function processAnnotations(roots : com.sun.tools.javac.util.List<JCCompilationUnit>, classnames : com.sun.tools.javac.util.List<String>) : JavaCompiler;
	
	/**
	* Attribute a list of parse trees, such as found on the "todo" list.
	* Note that attributing classes may cause additional files to be
	* parsed and entered via the SourceCompleter.
	* Attribution of the entries in the list does not stop if any errors occur.
	* @returns a list of environments for attributd classes.
	*/
	@:overload public function attribute(envs : java.util.Queue<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>) : java.util.Queue<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>;
	
	/**
	* Attribute a parse tree.
	* @returns the attributed parse tree
	*/
	@:overload public function attribute(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	/**
	* Perform dataflow checks on attributed parse trees.
	* These include checks for definite assignment and unreachable statements.
	* If any errors occur, an empty list will be returned.
	* @returns the list of attributed parse trees
	*/
	@:overload public function flow(envs : java.util.Queue<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>) : java.util.Queue<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>;
	
	/**
	* Perform dataflow checks on an attributed parse tree.
	*/
	@:overload public function flow(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : java.util.Queue<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>;
	
	/**
	* Perform dataflow checks on an attributed parse tree.
	*/
	@:overload private function flow(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, results : java.util.Queue<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>) : Void;
	
	/**
	* Prepare attributed parse trees, in conjunction with their attribution contexts,
	* for source or code generation.
	* If any errors occur, an empty list will be returned.
	* @returns a list containing the classes to be generated
	*/
	@:overload public function desugar(envs : java.util.Queue<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>) : java.util.Queue<com.sun.tools.javac.util.Pair<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, JCClassDecl>>;
	
	/**
	* Prepare attributed parse trees, in conjunction with their attribution contexts,
	* for source or code generation. If the file was not listed on the command line,
	* the current implicitSourcePolicy is taken into account.
	* The preparation stops as soon as an error is found.
	*/
	@:overload private function desugar(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, results : java.util.Queue<com.sun.tools.javac.util.Pair<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, JCClassDecl>>) : Void;
	
	/** Generates the source or class file for a list of classes.
	* The decision to generate a source file or a class file is
	* based upon the compiler's options.
	* Generation stops if an error occurs while writing files.
	*/
	@:overload public function generate(queue : java.util.Queue<com.sun.tools.javac.util.Pair<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, JCClassDecl>>) : Void;
	
	@:overload public function generate(queue : java.util.Queue<com.sun.tools.javac.util.Pair<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, JCClassDecl>>, results : java.util.Queue<javax.tools.JavaFileObject>) : Void;
	
	@:overload public function reportDeferredDiagnostics() : Void;
	
	/** Close the compiler, flushing the logs
	*/
	@:overload public function close() : Void;
	
	@:overload public function close(disposeNames : Bool) : Void;
	
	@:overload private function printNote(lines : String) : Void;
	
	/** Print numbers of errors and warnings.
	*/
	@:overload private function printCount(kind : String, count : Int) : Void;
	
	@:overload public function initRound(prev : JavaCompiler) : Void;
	
	@:overload public static function enableLogging() : Void;
	
	
}
/**
* Control how the compiler's latter phases (attr, flow, desugar, generate)
* are connected. Each individual file is processed by each phase in turn,
* but with different compile policies, you can control the order in which
* each class is processed through its next phase.
*
* <p>Generally speaking, the compiler will "fail fast" in the face of
* errors, although not aggressively so. flow, desugar, etc become no-ops
* once any errors have occurred. No attempt is currently made to determine
* if it might be safe to process a class through its next phase because
* it does not depend on any unrelated errors that might have occurred.
*/
@:native('com$sun$tools$javac$main$JavaCompiler$CompilePolicy') privateextern enum JavaCompiler_CompilePolicy
{
	/**
	* Just attribute the parse trees.
	*/
	ATTR_ONLY;
	/**
	* Just attribute and do flow analysis on the parse trees.
	* This should catch most user errors.
	*/
	CHECK_ONLY;
	/**
	* Attribute everything, then do flow analysis for everything,
	* then desugar everything, and only then generate output.
	* This means no output will be generated if there are any
	* errors in any classes.
	*/
	SIMPLE;
	/**
	* Groups the classes for each source file together, then process
	* each group in a manner equivalent to the {@code SIMPLE} policy.
	* This means no output will be generated if there are any
	* errors in any of the classes in a source file.
	*/
	BY_FILE;
	/**
	* Completely process each entry on the todo list in turn.
	* -- this is the same for 1.5.
	* Means output might be generated for some classes in a compilation unit
	* and not others.
	*/
	BY_TODO;
	
}

@:native('com$sun$tools$javac$main$JavaCompiler$ImplicitSourcePolicy') privateextern enum JavaCompiler_ImplicitSourcePolicy
{
	/** Don't generate or process implicitly read source files. */
	NONE;
	/** Generate classes for implicitly read source files. */
	CLASS;
	/** Like CLASS, but generate warnings if annotation processing occurs */
	UNSET;
	
}

/** Ordered list of compiler phases for each compilation unit. */
@:native('com$sun$tools$javac$main$JavaCompiler$CompileState') extern enum JavaCompiler_CompileState
{
	PARSE;
	ENTER;
	PROCESS;
	ATTR;
	FLOW;
	TRANSTYPES;
	LOWER;
	GENERATE;
	
}

/** Partial map to record which compiler phases have been executed
* for each compilation unit. Used for ATTR and FLOW phases.
*/
@:native('com$sun$tools$javac$main$JavaCompiler$CompileStates') extern class JavaCompiler_CompileStates extends java.util.HashMap<com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, JavaCompiler_CompileState>
{
	
}

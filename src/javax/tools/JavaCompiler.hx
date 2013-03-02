package javax.tools;
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
extern interface JavaCompiler extends javax.tools.Tool extends javax.tools.OptionChecker
{
	/**
	* Creates a future for a compilation task with the given
	* components and arguments.  The compilation might not have
	* completed as described in the CompilationTask interface.
	*
	* <p>If a file manager is provided, it must be able to handle all
	* locations defined in {@link StandardLocation}.
	*
	* <p>Note that annotation processing can process both the
	* compilation units of source code to be compiled, passed with
	* the {@code compilationUnits} parameter, as well as class
	* files, whose names are passed with the {@code classes}
	* parameter.
	*
	* @param out a Writer for additional output from the compiler;
	* use {@code System.err} if {@code null}
	* @param fileManager a file manager; if {@code null} use the
	* compiler's standard filemanager
	* @param diagnosticListener a diagnostic listener; if {@code
	* null} use the compiler's default method for reporting
	* diagnostics
	* @param options compiler options, {@code null} means no options
	* @param classes names of classes to be processed by annotation
	* processing, {@code null} means no class names
	* @param compilationUnits the compilation units to compile, {@code
	* null} means no compilation units
	* @return an object representing the compilation
	* @throws RuntimeException if an unrecoverable error
	* occurred in a user supplied component.  The
	* {@linkplain Throwable#getCause() cause} will be the error in
	* user code.
	* @throws IllegalArgumentException if any of the given
	* compilation units are of other kind than
	* {@linkplain JavaFileObject.Kind#SOURCE source}
	*/
	@:overload public function getTask(out : java.io.Writer, fileManager : javax.tools.JavaFileManager, diagnosticListener : javax.tools.DiagnosticListener<javax.tools.JavaFileObject>, options : java.lang.Iterable<String>, classes : java.lang.Iterable<String>, compilationUnits : java.lang.Iterable<javax.tools.JavaFileObject>) : javax.tools.JavaCompiler.JavaCompiler_CompilationTask;
	
	/**
	* Gets a new instance of the standard file manager implementation
	* for this tool.  The file manager will use the given diagnostic
	* listener for producing any non-fatal diagnostics.  Fatal errors
	* will be signalled with the appropriate exceptions.
	*
	* <p>The standard file manager will be automatically reopened if
	* it is accessed after calls to {@code flush} or {@code close}.
	* The standard file manager must be usable with other tools.
	*
	* @param diagnosticListener a diagnostic listener for non-fatal
	* diagnostics; if {@code null} use the compiler's default method
	* for reporting diagnostics
	* @param locale the locale to apply when formatting diagnostics;
	* {@code null} means the {@linkplain Locale#getDefault() default locale}.
	* @param charset the character set used for decoding bytes; if
	* {@code null} use the platform default
	* @return the standard file manager
	*/
	@:overload public function getStandardFileManager(diagnosticListener : javax.tools.DiagnosticListener<javax.tools.JavaFileObject>, locale : java.util.Locale, charset : java.nio.charset.Charset) : javax.tools.StandardJavaFileManager;
	
	
}
/**
* Interface representing a future for a compilation task.  The
* compilation task has not yet started.  To start the task, call
* the {@linkplain #call call} method.
*
* <p>Before calling the call method, additional aspects of the
* task can be configured, for example, by calling the
* {@linkplain #setProcessors setProcessors} method.
*/
@:native('javax$tools$JavaCompiler$CompilationTask') @:internal extern interface JavaCompiler_CompilationTask extends java.util.concurrent.Callable<Null<Bool>>
{
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
	
	
}

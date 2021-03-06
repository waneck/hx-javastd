package com.sun.tools.javah;
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
////javax.tools;
extern interface NativeHeaderTool extends javax.tools.Tool extends javax.tools.OptionChecker
{
	/**
	* Creates a future for a native header task with the given
	* components and arguments.  The task might not have
	* completed as described in the NativeHeaderTask interface.
	*
	* <p>If a file manager is provided, it must be able to handle all
	* locations defined in {@link StandardLocation}.
	*
	* @param out a Writer for additional output from the task;
	* use {@code System.err} if {@code null}
	* @param fileManager a file manager; if {@code null} use the
	* task's standard filemanager
	* @param diagnosticListener a diagnostic listener; if {@code
	* null} use the compiler's default method for reporting
	* diagnostics
	* @param options task options, {@code null} means no options
	* @param classes class names for which native headers should be generated
	* @return an object representing the task to be done
	* @throws RuntimeException if an unrecoverable error
	* occurred in a user supplied component.  The
	* {@linkplain Throwable#getCause() cause} will be the error in
	* user code.
	* @throws IllegalArgumentException if any of the given
	* compilation units are of other kind than
	* {@linkplain JavaFileObject.Kind#SOURCE source}
	*/
	@:overload public function getTask(out : java.io.Writer, fileManager : javax.tools.JavaFileManager, diagnosticListener : javax.tools.DiagnosticListener<javax.tools.JavaFileObject>, options : java.lang.Iterable<String>, classes : java.lang.Iterable<String>) : com.sun.tools.javah.NativeHeaderTool.NativeHeaderTool_NativeHeaderTask;
	
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
	* diagnostics; if {@code null} use the tool's default method
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
* Interface representing a future for a native header task.  The
* task has not yet started.  To start the task, call
* the {@linkplain #call call} method.
*
* <p>Before calling the call method, additional aspects of the
* task can be configured, for example, by calling the
* {@linkplain #setLocale setLocale} method.
*/
@:native('com$sun$tools$javah$NativeHeaderTool$NativeHeaderTask') @:internal extern interface NativeHeaderTool_NativeHeaderTask extends java.util.concurrent.Callable<Null<Bool>>
{
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
	* Performs this native header task.  The task may only
	* be performed once.  Subsequent calls to this method throw
	* IllegalStateException.
	*
	* @return true if and only all the files were processed without errors;
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

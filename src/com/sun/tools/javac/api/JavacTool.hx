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
extern class JavacTool implements javax.tools.JavaCompiler
{
	/**
	* Constructor used by service provider mechanism.  The correct way to
	* obtain an instance of this class is using create or the service provider
	* mechanism.
	* @see javax.tools.JavaCompilerTool
	* @see javax.tools.ToolProvider
	* @see #create
	*/
	@:overload public function new() : Void;
	
	/**
	* Static factory method for creating new instances of this tool.
	* @return new instance of this tool
	*/
	@:overload public static function create() : JavacTool;
	
	@:overload public function setOption(name : String, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload public function setExtendedOption(name : String, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload public function getStandardFileManager(diagnosticListener : javax.tools.DiagnosticListener<javax.tools.JavaFileObject>, locale : java.util.Locale, charset : java.nio.charset.Charset) : com.sun.tools.javac.file.JavacFileManager;
	
	@:overload public function getTask(out : java.io.Writer, fileManager : javax.tools.JavaFileManager, diagnosticListener : javax.tools.DiagnosticListener<javax.tools.JavaFileObject>, options : java.lang.Iterable<String>, classes : java.lang.Iterable<String>, compilationUnits : java.lang.Iterable<javax.tools.JavaFileObject>) : com.sun.source.util.JavacTask;
	
	@:overload public function run(_in : java.io.InputStream, out : java.io.OutputStream, err : java.io.OutputStream, arguments : java.NativeArray<String>) : Int;
	
	@:overload public function getSourceVersions() : java.util.Set<javax.lang.model.SourceVersion>;
	
	@:overload public function isSupportedOption(option : String) : Int;
	
	
}

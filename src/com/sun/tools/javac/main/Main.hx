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
/** This class provides a commandline interface to the GJC compiler.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Main
{
	/**
	* Construct a compiler instance.
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Construct a compiler instance.
	*/
	@:overload public function new(name : String, out : java.io.PrintWriter) : Void;
	
	/** The list of source files to process
	*/
	public var filenames : java.util.Set<java.io.File>;
	
	/** List of class files names passed on the command line
	*/
	public var classnames : com.sun.tools.javac.util.ListBuffer<String>;
	
	@:overload public function getOption(flag : String) : com.sun.tools.javac.main.JavacOption.JavacOption_Option;
	
	@:overload public function setOptions(options : com.sun.tools.javac.util.Options) : Void;
	
	@:overload public function setAPIMode(apiMode : Bool) : Void;
	
	/** Process command line arguments: store all command line options
	*  in `options' table and return all source filenames.
	*  @param flags    The array of command line arguments.
	*/
	@:overload public function processArgs(flags : java.NativeArray<String>) : java.util.Collection<java.io.File>;
	
	@:overload public function processArgs(flags : java.NativeArray<String>, classNames : java.NativeArray<String>) : java.util.Collection<java.io.File>;
	
	/** Programmatic interface for main function.
	* @param args    The command line parameters.
	*/
	@:overload public function compile(args : java.NativeArray<String>) : Int;
	
	@:overload public function compile(args : java.NativeArray<String>, context : com.sun.tools.javac.util.Context) : Int;
	
	/** Programmatic interface for main function.
	* @param args    The command line parameters.
	*/
	@:overload public function compile(args : java.NativeArray<String>, context : com.sun.tools.javac.util.Context, fileObjects : com.sun.tools.javac.util.List<javax.tools.JavaFileObject>, processors : java.lang.Iterable<javax.annotation.processing.Processor>) : Int;
	
	@:overload public function compile(args : java.NativeArray<String>, classNames : java.NativeArray<String>, context : com.sun.tools.javac.util.Context, fileObjects : com.sun.tools.javac.util.List<javax.tools.JavaFileObject>, processors : java.lang.Iterable<javax.annotation.processing.Processor>) : Int;
	
	/** Find a localized string in the resource bundle.
	*  @param key     The key for the localized string.
	*/
	@:overload public static function getLocalizedString(key : String, args : java.NativeArray<Dynamic>) : String;
	
	@:overload public static function useRawMessages(enable : Bool) : Void;
	
	
}

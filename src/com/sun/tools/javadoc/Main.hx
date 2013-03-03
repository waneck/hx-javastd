package com.sun.tools.javadoc;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Main
{
	/**
	* Command line interface.
	* @param args   The command line parameters.
	*/
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	/**
	* Programmatic interface.
	* @param args   The command line parameters.
	* @return The return code.
	*/
	@:overload @:public @:static public static function execute(args : java.NativeArray<String>) : Int;
	
	/**
	* Programmatic interface.
	* @param args   The command line parameters.
	* @param docletParentClassLoader The parent class loader used when
	*  creating the doclet classloader. If null, the class loader used
	*  to instantiate doclets will be created without specifying a parent
	*  class loader.
	* @return The return code.
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function execute(docletParentClassLoader : java.lang.ClassLoader, args : java.NativeArray<String>) : Int;
	
	/**
	* Programmatic interface.
	* @param programName  Name of the program (for error messages).
	* @param args   The command line parameters.
	* @return The return code.
	*/
	@:overload @:public @:static public static function execute(programName : String, args : java.NativeArray<String>) : Int;
	
	/**
	* Programmatic interface.
	* @param programName  Name of the program (for error messages).
	* @param args   The command line parameters.
	* @param docletParentClassLoader The parent class loader used when
	*  creating the doclet classloader. If null, the class loader used
	*  to instantiate doclets will be created without specifying a parent
	*  class loader.
	* @return The return code.
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function execute(programName : String, docletParentClassLoader : java.lang.ClassLoader, args : java.NativeArray<String>) : Int;
	
	/**
	* Programmatic interface.
	* @param programName  Name of the program (for error messages).
	* @param defaultDocletClassName  Fully qualified class name.
	* @param args   The command line parameters.
	* @return The return code.
	*/
	@:overload @:public @:static public static function execute(programName : String, defaultDocletClassName : String, args : java.NativeArray<String>) : Int;
	
	/**
	* Programmatic interface.
	* @param programName  Name of the program (for error messages).
	* @param defaultDocletClassName  Fully qualified class name.
	* @param docletParentClassLoader The parent class loader used when
	*  creating the doclet classloader. If null, the class loader used
	*  to instantiate doclets will be created without specifying a parent
	*  class loader.
	* @param args   The command line parameters.
	* @return The return code.
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function execute(programName : String, defaultDocletClassName : String, docletParentClassLoader : java.lang.ClassLoader, args : java.NativeArray<String>) : Int;
	
	/**
	* Programmatic interface.
	* @param programName  Name of the program (for error messages).
	* @param errWriter    PrintWriter to receive error messages.
	* @param warnWriter    PrintWriter to receive error messages.
	* @param noticeWriter    PrintWriter to receive error messages.
	* @param defaultDocletClassName  Fully qualified class name.
	* @param args   The command line parameters.
	* @return The return code.
	*/
	@:overload @:public @:static public static function execute(programName : String, errWriter : java.io.PrintWriter, warnWriter : java.io.PrintWriter, noticeWriter : java.io.PrintWriter, defaultDocletClassName : String, args : java.NativeArray<String>) : Int;
	
	/**
	* Programmatic interface.
	* @param programName  Name of the program (for error messages).
	* @param errWriter    PrintWriter to receive error messages.
	* @param warnWriter    PrintWriter to receive error messages.
	* @param noticeWriter    PrintWriter to receive error messages.
	* @param defaultDocletClassName  Fully qualified class name.
	* @param docletParentClassLoader The parent class loader used when
	*  creating the doclet classloader. If null, the class loader used
	*  to instantiate doclets will be created without specifying a parent
	*  class loader.
	* @param args   The command line parameters.
	* @return The return code.
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function execute(programName : String, errWriter : java.io.PrintWriter, warnWriter : java.io.PrintWriter, noticeWriter : java.io.PrintWriter, defaultDocletClassName : String, docletParentClassLoader : java.lang.ClassLoader, args : java.NativeArray<String>) : Int;
	
	
}

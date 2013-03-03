package com.sun.tools.internal.ws.wscompile;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Options
{
	/**
	* -verbose
	*/
	@:public public var verbose : Bool;
	
	/**
	* - quite
	*/
	@:public public var quiet : Bool;
	
	/**
	* -keep
	*/
	@:public public var keep : Bool;
	
	/**
	* -d
	*/
	@:public public var destDir : java.io.File;
	
	/**
	* -s
	*/
	@:public public var sourceDir : java.io.File;
	
	@:public public var classpath : String;
	
	/**
	* -Xnocompile
	*/
	@:public public var nocompile : Bool;
	
	@:public public var target : com.sun.tools.internal.ws.wscompile.Options.Options_Target;
	
	/**
	* strictly follow the compatibility rules specified in JAXWS spec
	*/
	@:public @:static @:final public static var STRICT(default, null) : Int;
	
	/**
	* loosely follow the compatibility rules and allow the use of vendor
	* binding extensions
	*/
	@:public @:static @:final public static var EXTENSION(default, null) : Int;
	
	/**
	* this switch determines how carefully the compiler will follow
	* the compatibility rules in the spec. Either <code>STRICT</code>
	* or <code>EXTENSION</code>.
	*/
	@:public public var compatibilityMode : Int;
	
	@:overload @:public public function isExtensionMode() : Bool;
	
	/**
	* Target direcoty when producing files.
	*/
	@:public public var targetDir : java.io.File;
	
	@:public public var debug : Bool;
	
	/**
	* -Xdebug - gives complete stack trace
	*/
	@:public public var debugMode : Bool;
	
	/**
	* Remember info on  generated source file generated so that it
	* can be removed later, if appropriate.
	*/
	@:overload @:public public function addGeneratedFile(file : java.io.File) : Void;
	
	/**
	* Remove generated files
	*/
	@:overload @:public public function removeGeneratedFiles() : Void;
	
	/**
	* Return all the generated files and its types.
	*/
	@:overload @:public public function getGeneratedFiles() : java.lang.Iterable<java.io.File>;
	
	/**
	* Delete all the generated source files made during the execution
	* of this environment (those that have been registered with the
	* "addGeneratedFile" method).
	*/
	@:overload @:public public function deleteGeneratedFiles() : Void;
	
	/**
	* Parses arguments and fill fields of this object.
	*
	* @exception BadCommandLineException
	*      thrown when there's a problem in the command-line arguments
	*/
	@:overload @:public public function parseArguments(args : java.NativeArray<String>) : Void;
	
	/**
	* Adds a file from the argume
	*
	* @param arg a file, could be a wsdl or xsd or a Class
	*/
	@:overload @:protected private function addFile(arg : String) : Void;
	
	/**
	* Parses an option <code>args[i]</code> and return
	* the number of tokens consumed.
	*
	* @return
	*      0 if the argument is not understood. Returning 0
	*      will let the caller report an error.
	* @exception BadCommandLineException
	*      If the callee wants to provide a custom message for an error.
	*/
	@:overload @:protected private function parseArguments(args : java.NativeArray<String>, i : Int) : Int;
	
	/**
	* Obtains an operand and reports an error if it's not there.
	*/
	@:overload @:public public function requireArgument(optionName : String, args : java.NativeArray<String>, i : Int) : String;
	
	/**
	* Get a URLClassLoader from using the classpath
	*/
	@:overload @:public public function getClassLoader() : java.lang.ClassLoader;
	
	/**
	* Utility method for converting a search path string to an array
	* of directory and JAR file URLs.
	*
	* @param path the search path string
	* @return the resulting array of directory and JAR file URLs
	*/
	@:overload @:public @:static public static function pathToURLs(path : String) : java.NativeArray<java.net.URL>;
	
	/**
	* Returns the directory or JAR file URL corresponding to the specified
	* local file name.
	*
	* @param file the File object
	* @return the resulting directory or JAR file URL, or null if unknown
	*/
	@:overload @:public @:static public static function fileToURL(file : java.io.File) : java.net.URL;
	
	
}
@:native('com$sun$tools$internal$ws$wscompile$Options$Target') extern enum Options_Target
{
	V2_0;
	V2_1;
	V2_2;
	
}

/**
* Used to signal that we've finished processing.
*/
@:native('com$sun$tools$internal$ws$wscompile$Options$WeAreDone') extern class Options_WeAreDone extends com.sun.tools.internal.ws.wscompile.BadCommandLineException
{
	
}

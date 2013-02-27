package com.sun.tools.javadoc;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class RootDocImpl extends com.sun.tools.javadoc.DocImpl implements com.sun.javadoc.RootDoc
{
	/**
	* Constructor used when reading source files.
	*
	* @param env the documentation environment, state for this javadoc run
	* @param classes list of classes specified on the commandline
	* @param packages list of package names specified on the commandline
	* @param options list of options
	*/
	@:overload public function new(env : com.sun.tools.javadoc.DocEnv, classes : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl>, packages : com.sun.tools.javac.util.List<String>, options : com.sun.tools.javac.util.List<java.NativeArray<String>>) : Void;
	
	/**
	* Constructor used when reading class files.
	*
	* @param env the documentation environment, state for this javadoc run
	* @param classes list of class names specified on the commandline
	* @param options list of options
	*/
	@:overload public function new(env : com.sun.tools.javadoc.DocEnv, classes : com.sun.tools.javac.util.List<String>, options : com.sun.tools.javac.util.List<java.NativeArray<String>>) : Void;
	
	/**
	* Command line options.
	*
	* <pre>
	* For example, given:
	*     javadoc -foo this that -bar other ...
	*
	* This method will return:
	*      options()[0][0] = "-foo"
	*      options()[0][1] = "this"
	*      options()[0][2] = "that"
	*      options()[1][0] = "-bar"
	*      options()[1][1] = "other"
	* </pre>
	*
	* @return an array of arrays of String.
	*/
	@:overload public function options() : java.NativeArray<java.NativeArray<String>>;
	
	/**
	* Packages specified on the command line.
	*/
	@:overload public function specifiedPackages() : java.NativeArray<com.sun.javadoc.PackageDoc>;
	
	/**
	* Classes and interfaces specified on the command line.
	*/
	@:overload public function specifiedClasses() : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return all classes and interfaces (including those inside
	* packages) to be documented.
	*/
	@:overload public function classes() : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return a ClassDoc for the specified class/interface name
	*
	* @param qualifiedName qualified class name
	*                        (i.e. includes package name).
	*
	* @return a ClassDocImpl holding the specified class, null if
	* this class is not referenced.
	*/
	@:overload public function classNamed(qualifiedName : String) : com.sun.javadoc.ClassDoc;
	
	/**
	* Return a PackageDoc for the specified package name
	*
	* @param name package name
	*
	* @return a PackageDoc holding the specified package, null if
	* this package is not referenced.
	*/
	@:overload public function packageNamed(name : String) : com.sun.javadoc.PackageDoc;
	
	/**
	* Return the name of this Doc item.
	*
	* @return the string <code>"*RootDocImpl*"</code>.
	*/
	@:overload override public function name() : String;
	
	/**
	* Return the name of this Doc item.
	*
	* @return the string <code>"*RootDocImpl*"</code>.
	*/
	@:overload override public function qualifiedName() : String;
	
	/**
	* Return true if this Doc is include in the active set.
	* RootDocImpl isn't even a program entity so it is always false.
	*/
	@:overload override public function isIncluded() : Bool;
	
	/**
	* Print error message, increment error count.
	*
	* @param msg message to print
	*/
	@:overload public function printError(msg : String) : Void;
	
	/**
	* Print error message, increment error count.
	*
	* @param msg message to print
	*/
	@:overload public function printError(pos : com.sun.javadoc.SourcePosition, msg : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param msg message to print
	*/
	@:overload public function printWarning(msg : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param msg message to print
	*/
	@:overload public function printWarning(pos : com.sun.javadoc.SourcePosition, msg : String) : Void;
	
	/**
	* Print a message.
	*
	* @param msg message to print
	*/
	@:overload public function printNotice(msg : String) : Void;
	
	/**
	* Print a message.
	*
	* @param msg message to print
	*/
	@:overload public function printNotice(pos : com.sun.javadoc.SourcePosition, msg : String) : Void;
	
	/**
	* Do lazy initialization of "documentation" string.
	*/
	@:overload override private function documentation() : String;
	
	/**
	* Return the source position of the entity, or null if
	* no position is available.
	*/
	@:overload override public function position() : com.sun.javadoc.SourcePosition;
	
	/**
	* Return the locale provided by the user or the default locale value.
	*/
	@:overload public function getLocale() : java.util.Locale;
	
	
}

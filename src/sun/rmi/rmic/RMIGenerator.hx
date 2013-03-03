package sun.rmi.rmic;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
/*****************************************************************************/
/*                    Copyright (c) IBM Corporation 1998                     */
/*                                                                           */
/* (C) Copyright IBM Corp. 1998                                              */
/*                                                                           */
/*****************************************************************************/
extern class RMIGenerator implements sun.rmi.rmic.RMIConstants implements sun.rmi.rmic.Generator
{
	/**
	* Default constructor for Main to use.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Examine and consume command line arguments.
	* @param argv The command line arguments. Ignore null
	* and unknown arguments. Set each consumed argument to null.
	* @param error Report any errors using the main.error() methods.
	* @return true if no errors, false otherwise.
	*/
	@:overload @:public public function parseArgs(argv : java.NativeArray<String>, main : sun.rmi.rmic.Main) : Bool;
	
	/**
	* Generate the source files for the stub and/or skeleton classes
	* needed by RMI for the given remote implementation class.
	*
	* @param env       compiler environment
	* @param cdef      definition of remote implementation class
	*                  to generate stubs and/or skeletons for
	* @param destDir   directory for the root of the package hierarchy
	*                  for generated files
	*/
	@:overload @:public public function generate(env : sun.rmi.rmic.BatchEnvironment, cdef : sun.tools.java.ClassDefinition, destDir : java.io.File) : Void;
	
	/**
	* Return the File object that should be used as the source file
	* for the given Java class, using the supplied destination
	* directory for the top of the package hierarchy.
	*/
	@:overload @:protected @:static private static function sourceFileForClass(className : sun.tools.java.Identifier, outputClassName : sun.tools.java.Identifier, destDir : java.io.File, env : sun.rmi.rmic.BatchEnvironment) : java.io.File;
	
	
}

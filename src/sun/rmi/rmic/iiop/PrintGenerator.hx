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
extern class PrintGenerator implements sun.rmi.rmic.Generator implements sun.rmi.rmic.iiop.Constants
{
	/**
	* Default constructor for Main to use.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Examine and consume command line arguments.
	* @param argv The command line arguments. Ignore null
	* @param error Report any errors using the main.error() methods.
	* @return true if no errors, false otherwise.
	*/
	@:overload @:public public function parseArgs(argv : java.NativeArray<String>, main : sun.rmi.rmic.Main) : Bool;
	
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
	@:overload @:public public function generate(env : sun.rmi.rmic.BatchEnvironment, cdef : sun.tools.java.ClassDefinition, destDir : java.io.File) : Void;
	
	
}

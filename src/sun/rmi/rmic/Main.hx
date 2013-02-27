package sun.rmi.rmic;
/*
* Copyright (c) 1996, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class Main implements sun.rmi.rmic.Constants
{
	/**
	* Constructor.
	*/
	@:overload public function new(out : java.io.OutputStream, program : String) : Void;
	
	/**
	* Output a message.
	*/
	@:overload public function output(msg : String) : Void;
	
	/**
	* Top level error message.  This method is called when the
	* environment could not be set up yet.
	*/
	@:overload public function error(msg : String) : Void;
	
	@:overload public function error(msg : String, arg1 : String) : Void;
	
	@:overload public function error(msg : String, arg1 : String, arg2 : String) : Void;
	
	/**
	* Usage
	*/
	@:overload public function usage() : Void;
	
	/**
	* Run the compiler
	*/
	@:overload @:synchronized public function compile(argv : java.NativeArray<String>) : Bool;
	
	/**
	* Get the destination directory.
	*/
	@:overload public function getDestinationDir() : java.io.File;
	
	/**
	* Parse the arguments for compile.
	*/
	@:overload public function parseArgs(argv : java.NativeArray<String>) : Bool;
	
	/**
	* If this argument is for a generator, instantiate it, call
	* parseArgs(...) and add generator to generators vector.
	* Returns false on error.
	*/
	@:overload private function checkGeneratorArg(argv : java.NativeArray<String>, currentIndex : Int) : Bool;
	
	/**
	* Instantiate and add a generator to the generators array.
	*/
	@:overload private function addGenerator(arg : String) : sun.rmi.rmic.Generator;
	
	/**
	* Grab a resource string and parse it into an array of strings. Assumes
	* comma separated list.
	* @param name The resource name.
	* @param mustExist If true, throws error if resource does not exist. If
	* false and resource does not exist, returns zero element array.
	*/
	@:overload private function getArray(name : String, mustExist : Bool) : java.NativeArray<String>;
	
	/**
	* Get the correct type of BatchEnvironment
	*/
	@:overload public function getEnv() : sun.rmi.rmic.BatchEnvironment;
	
	/**
	* Do the compile with the switches and files already supplied
	*/
	@:overload public function doCompile() : Bool;
	
	/*
	* Compile all classes that need to be compiled.
	*/
	@:overload public function compileAllClasses(env : sun.rmi.rmic.BatchEnvironment) : Void;
	
	/*
	* Compile a single class.
	*/
	@:overload public function compileClass(c : sun.tools.java.ClassDeclaration, buf : java.io.ByteArrayOutputStream, env : sun.rmi.rmic.BatchEnvironment) : Bool;
	
	/**
	* Main program
	*/
	@:overload public static function main(argv : java.NativeArray<String>) : Void;
	
	/**
	* Return the string value of a named resource in the rmic.properties
	* resource bundle.  If the resource is not found, null is returned.
	*/
	@:overload public static function getString(key : String) : String;
	
	@:overload public static function getText(key : String) : String;
	
	@:overload public static function getText(key : String, num : Int) : String;
	
	@:overload public static function getText(key : String, arg0 : String) : String;
	
	@:overload public static function getText(key : String, arg0 : String, arg1 : String) : String;
	
	@:overload public static function getText(key : String, arg0 : String, arg1 : String, arg2 : String) : String;
	
	
}

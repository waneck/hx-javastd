package sun.rmi.rmic.newrmic;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
	* Command line entry point.
	**/
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	/**
	* Creates a Main instance that writes output to the specified
	* stream.  The specified program name is used in error messages.
	**/
	@:overload @:public public function new(out : java.io.OutputStream, program : String) : Void;
	
	/**
	* Compiles a batch of input classes, as given by the specified
	* command line arguments.  Protocol-specific generators are
	* determined by the choice options on the command line.  Returns
	* true if successful, or false if an error occurred.
	*
	* NOTE: This method is retained for transitional consistency with
	* previous implementations.
	**/
	@:overload @:public public function compile(args : java.NativeArray<String>) : Bool;
	
	/**
	* Prints the specified string to the output stream of this Main
	* instance.
	**/
	@:overload @:public public function output(msg : String) : Void;
	
	/**
	* Prints an error message to the output stream of this Main
	* instance.  The first argument is used as a key in rmic's
	* resource bundle, and the rest of the arguments are used as
	* arguments in the formatting of the resource string.
	**/
	@:overload @:public public function error(msg : String, args : java.NativeArray<String>) : Void;
	
	/**
	* Prints rmic's usage message to the output stream of this Main
	* instance.
	*
	* This method is public so that it can be used by the "parseArgs"
	* methods of Generator implementations.
	**/
	@:overload @:public public function usage() : Void;
	
	/**
	* Doclet class entry point.
	**/
	@:overload @:public @:static public static function start(rootDoc : com.sun.javadoc.RootDoc) : Bool;
	
	/**
	* Doclet class method that indicates that this doclet class
	* recognizes (only) the "-batchID" option on the javadoc command
	* line, and that the "-batchID" option comprises two arguments on
	* the javadoc command line.
	**/
	@:overload @:public @:static public static function optionLength(option : String) : Int;
	
	
}
/**
* The data for an rmic compliation batch: the processed command
* line arguments.
**/
@:native('sun$rmi$rmic$newrmic$Main$Batch') @:internal extern class Main_Batch
{
	
}

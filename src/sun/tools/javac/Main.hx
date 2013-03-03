package sun.tools.javac;
/*
* Copyright (c) 1994, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Main implements sun.tools.java.Constants
{
	/**
	* Constructor.
	*/
	@:overload @:public public function new(out : java.io.OutputStream, program : String) : Void;
	
	/**
	* Exit status.
	* We introduce a separate integer status variable, and do not alter the
	* convention that 'compile' returns a boolean true upon a successful
	* compilation with no errors.  (JavaTest relies on this.)
	*/
	@:public @:static @:final public static var EXIT_OK(default, null) : Int;
	
	@:public @:static @:final public static var EXIT_ERROR(default, null) : Int;
	
	@:public @:static @:final public static var EXIT_CMDERR(default, null) : Int;
	
	@:public @:static @:final public static var EXIT_SYSERR(default, null) : Int;
	
	@:public @:static @:final public static var EXIT_ABNORMAL(default, null) : Int;
	
	@:overload @:public public function getExitStatus() : Int;
	
	@:overload @:public public function compilationPerformedSuccessfully() : Bool;
	
	@:overload @:public public function compilationReportedErrors() : Bool;
	
	/**
	* Print usage message and make exit status an error.
	* Note: 'javac' invoked without any arguments is considered
	* be an error.
	*/
	@:overload @:public public function usage_error() : Void;
	
	/**
	* get and format message string from resource
	*/
	@:overload @:public @:static public static function getText(key : String) : String;
	
	@:overload @:public @:static public static function getText(key : String, num : Int) : String;
	
	@:overload @:public @:static public static function getText(key : String, fixed : String) : String;
	
	@:overload @:public @:static public static function getText(key : String, fixed1 : String, fixed2 : String) : String;
	
	@:overload @:public @:static public static function getText(key : String, fixed1 : String, fixed2 : String, fixed3 : String) : String;
	
	/**
	* Run the compiler
	*/
	@:overload @:public @:synchronized public function compile(argv : java.NativeArray<String>) : Bool;
	
	/**
	* Main program
	*/
	@:overload @:public @:static public static function main(argv : java.NativeArray<String>) : Void;
	
	
}

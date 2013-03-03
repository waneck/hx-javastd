package com.sun.tools.apt.main;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
	* Construct a compiler instance.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Construct a compiler instance.
	*/
	@:overload @:public public function new(name : String, out : java.io.PrintWriter) : Void;
	
	/** Process command line arguments: store all command line options
	*  in `options' table and return all source filenames.
	*  @param args    The array of command line arguments.
	*/
	@:overload @:protected private function processArgs(flags : java.NativeArray<String>) : java.util.List<String>;
	
	/** Programmatic interface for main function.
	* @param args    The command line parameters.
	*/
	@:overload @:public public function compile(args : java.NativeArray<String>, factory : com.sun.mirror.apt.AnnotationProcessorFactory) : Int;
	
	
}
/** This class represents an option recognized by the main program
*/
@:native('com$sun$tools$apt$main$Main$Option') @:internal extern class Main_Option
{
	@:overload @:public public function toString() : String;
	
	
}
@:native('com$sun$tools$apt$main$Main$SharedOption') @:internal extern class Main_SharedOption extends com.sun.tools.apt.main.Main.Main_Option
{
	
}
@:native('com$sun$tools$apt$main$Main$AptOption') @:internal extern class Main_AptOption extends com.sun.tools.apt.main.Main.Main_Option
{
	
}
/** A nonstandard or extended (-X) option
*/
@:native('com$sun$tools$apt$main$Main$XOption') @:internal extern class Main_XOption extends com.sun.tools.apt.main.Main.Main_Option
{
	
}
/** A nonstandard or extended (-X) option
*/
@:native('com$sun$tools$apt$main$Main$AptXOption') @:internal extern class Main_AptXOption extends com.sun.tools.apt.main.Main.Main_Option
{
	
}
/** A hidden (implementor) option
*/
@:native('com$sun$tools$apt$main$Main$HiddenOption') @:internal extern class Main_HiddenOption extends com.sun.tools.apt.main.Main.Main_Option
{
	
}
@:native('com$sun$tools$apt$main$Main$AptHiddenOption') @:internal extern class Main_AptHiddenOption extends com.sun.tools.apt.main.Main.Main_HiddenOption
{
	
}

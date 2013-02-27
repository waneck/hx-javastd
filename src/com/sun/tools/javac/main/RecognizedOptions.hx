package com.sun.tools.javac.main;
/*
* Copyright (c) 2006, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* TODO: describe com.sun.tools.javac.main.RecognizedOptions
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own
* risk.  This code and its internal interfaces are subject to change
* or deletion without notice.</b></p>
*/
extern class RecognizedOptions
{
	@:overload public static function getJavacFileManagerOptions(helper : RecognizedOptions_OptionHelper) : java.NativeArray<com.sun.tools.javac.main.JavacOption.JavacOption_Option>;
	
	@:overload public static function getJavacToolOptions(helper : RecognizedOptions_OptionHelper) : java.NativeArray<com.sun.tools.javac.main.JavacOption.JavacOption_Option>;
	
	/**
	* Get all the recognized options.
	* @param helper an {@code OptionHelper} to help when processing options
	* @return an array of options
	*/
	@:overload public static function getAll(helper : RecognizedOptions_OptionHelper) : java.NativeArray<com.sun.tools.javac.main.JavacOption.JavacOption_Option>;
	
	
}
@:native('com$sun$tools$javac$main$RecognizedOptions$OptionHelper') extern interface RecognizedOptions_OptionHelper
{
	@:overload public function setOut(out : java.io.PrintWriter) : Void;
	
	@:overload public function error(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload public function printVersion() : Void;
	
	@:overload public function printFullVersion() : Void;
	
	@:overload public function printHelp() : Void;
	
	@:overload public function printXhelp() : Void;
	
	@:overload public function addFile(f : java.io.File) : Void;
	
	@:overload public function addClassName(s : String) : Void;
	
	
}
@:native('com$sun$tools$javac$main$RecognizedOptions$GrumpyHelper') extern class RecognizedOptions_GrumpyHelper implements RecognizedOptions_OptionHelper
{
	@:overload public function setOut(out : java.io.PrintWriter) : Void;
	
	@:overload public function error(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload public function printVersion() : Void;
	
	@:overload public function printFullVersion() : Void;
	
	@:overload public function printHelp() : Void;
	
	@:overload public function printXhelp() : Void;
	
	@:overload public function addFile(f : java.io.File) : Void;
	
	@:overload public function addClassName(s : String) : Void;
	
	
}
@:native('com$sun$tools$javac$main$RecognizedOptions$PkgInfo') extern enum RecognizedOptions_PkgInfo
{
	ALWAYS;
	LEGACY;
	NONEMPTY;
	
}


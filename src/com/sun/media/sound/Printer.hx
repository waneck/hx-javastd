package com.sun.media.sound;
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
/**
* Printer allows you to set up global debugging status and print
* messages accordingly.
*
* @author David Rivas
* @author Kara Kytle
*/
@:internal extern class Printer
{
	/*static void setErrorPrint(boolean on) {

	err = on;
	}

	static void setDebugPrint(boolean on) {

	debug = on;
	}

	static void setTracePrint(boolean on) {

	trace = on;
	}

	static void setVerbosePrint(boolean on) {

	verbose = on;
	}

	static void setReleasePrint(boolean on) {

	release = on;
	}*/
	@:overload @:public @:static public static function err(str : String) : Void;
	
	@:overload @:public @:static public static function debug(str : String) : Void;
	
	@:native('trace') @:overload @:public @:static public static function _trace(str : String) : Void;
	
	@:overload @:public @:static public static function verbose(str : String) : Void;
	
	@:overload @:public @:static public static function release(str : String) : Void;
	
	@:overload @:public @:static public static function println(s : String) : Void;
	
	@:overload @:public @:static public static function println() : Void;
	
	
}

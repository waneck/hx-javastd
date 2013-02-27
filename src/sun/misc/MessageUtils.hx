package sun.misc;
/*
* Copyright (c) 1995, 2000, Oracle and/or its affiliates. All rights reserved.
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
* MessageUtils: miscellaneous utilities for handling error and status
* properties and messages.
*
* @author Herb Jellinek
*/
extern class MessageUtils
{
	@:overload public function new() : Void;
	
	@:overload public static function subst(patt : String, arg : String) : String;
	
	@:overload public static function subst(patt : String, arg1 : String, arg2 : String) : String;
	
	@:overload public static function subst(patt : String, arg1 : String, arg2 : String, arg3 : String) : String;
	
	@:overload public static function subst(patt : String, args : java.NativeArray<String>) : String;
	
	@:overload public static function substProp(propName : String, arg : String) : String;
	
	@:overload public static function substProp(propName : String, arg1 : String, arg2 : String) : String;
	
	@:overload public static function substProp(propName : String, arg1 : String, arg2 : String, arg3 : String) : String;
	
	/**
	*  Print a message directly to stderr, bypassing all the
	*  character conversion methods.
	*  @param msg   message to print
	*/
	@:overload @:native public static function toStderr(msg : String) : Void;
	
	/**
	*  Print a message directly to stdout, bypassing all the
	*  character conversion methods.
	*  @param msg   message to print
	*/
	@:overload @:native public static function toStdout(msg : String) : Void;
	
	@:overload public static function err(s : String) : Void;
	
	@:overload public static function out(s : String) : Void;
	
	@:overload public static function where() : Void;
	
	
}

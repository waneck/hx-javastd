package com.sun.tools.example.debug.expr;
/*
* Copyright (c) 1999, 2001, Oracle and/or its affiliates. All rights reserved.
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
* This source code is provided to illustrate the usage of a given feature
* or technique and has been deliberately simplified. Additional steps
* required for a production-quality application, such as security checks,
* input validation and proper error handling, might not be present in
* this sample code.
*/
/* Generated By:JavaCC: Do not edit this line. TokenMgrError.java Version 0.7pre2 */
extern class TokenMgrError extends java.lang.Error
{
	/**
	* Replaces unprintable characters by their espaced (or unicode escaped)
	* equivalents in the given string
	*/
	@:overload @:protected @:static @:final private static function addEscapes(str : String) : String;
	
	/**
	* You can also modify the body of this method to customize your error messages.
	* For example, cases like LOOP_DETECTED and INVALID_LEXICAL_STATE are not
	* of end-users concern, so you can return something like :
	*
	*     "Internal Error : Please file a bug report .... "
	*
	* from this method for such cases in the release version of your parser.
	*/
	@:overload @:public override public function getMessage() : String;
	
	/*
	* Constructors of various flavors follow.
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(message : String, reason : Int) : Void;
	
	@:overload @:public public function new(EOFSeen : Bool, lexState : Int, errorLine : Int, errorColumn : Int, errorAfter : String, curChar : java.StdTypes.Char16, reason : Int) : Void;
	
	
}

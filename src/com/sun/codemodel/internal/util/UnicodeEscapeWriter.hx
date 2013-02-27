package com.sun.codemodel.internal.util;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class UnicodeEscapeWriter extends java.io.FilterWriter
{
	/**
	* {@link Writer} that escapes non US-ASCII characters into
	* Java Unicode escape \\uXXXX.
	*
	* This process is necessary if the method names or field names
	* contain non US-ASCII characters.
	*
	* @author
	*      Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:overload public function new(next : java.io.Writer) : Void;
	
	@:overload @:final override public function write(ch : Int) : Void;
	
	/**
	* Can be overrided. Return true if the character
	* needs to be escaped.
	*/
	@:overload private function requireEscaping(ch : Int) : Bool;
	
	@:overload @:final override public function write(buf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	@:overload @:final override public function write(buf : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:final override public function write(buf : String, off : Int, len : Int) : Void;
	
	@:overload @:final override public function write(buf : String) : Void;
	
	
}

package com.sun.tools.javadoc;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class DocletInvoker
{
	@:overload @:public public function new(messager : com.sun.tools.javadoc.Messager, docletClassName : String, docletPath : String, docletParentClassLoader : java.lang.ClassLoader) : Void;
	
	/**
	* Generate documentation here.  Return true on success.
	*/
	@:overload @:public public function start(root : com.sun.javadoc.RootDoc) : Bool;
	
	/**
	* Check for doclet added options here. Zero return means
	* option not known.  Positive value indicates number of
	* arguments to option.  Negative value means error occurred.
	*/
	@:overload @:public public function optionLength(option : String) : Int;
	
	/**
	* Let doclet check that all options are OK. Returning true means
	* options are OK.  If method does not exist, assume true.
	*/
	@:overload @:public public function validOptions(optlist : com.sun.tools.javac.util.List<java.NativeArray<String>>) : Bool;
	
	/**
	* Return the language version supported by this doclet.
	* If the method does not exist in the doclet, assume version 1.1.
	*/
	@:overload @:public public function languageVersion() : com.sun.javadoc.LanguageVersion;
	
	
}
@:native('com$sun$tools$javadoc$DocletInvoker$DocletInvokeException') @:internal extern class DocletInvoker_DocletInvokeException extends java.lang.Exception
{
	
}

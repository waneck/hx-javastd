package com.sun.codemodel.internal;
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
extern class JFormatter
{
	/**
	* Creates a JFormatter.
	*
	* @param s
	*        PrintWriter to JFormatter to use.
	*
	* @param space
	*        Incremental indentation string, similar to tab value.
	*/
	@:overload public function new(s : java.io.PrintWriter, space : String) : Void;
	
	/**
	* Creates a formatter with default incremental indentations of
	* four spaces.
	*/
	@:overload public function new(s : java.io.PrintWriter) : Void;
	
	/**
	* Creates a formatter with default incremental indentations of
	* four spaces.
	*/
	@:overload public function new(w : java.io.Writer) : Void;
	
	/**
	* Closes this formatter.
	*/
	@:overload public function close() : Void;
	
	/**
	* Returns true if we are in the printing mode,
	* where we actually produce text.
	*
	* The other mode is the "collecting mode'
	*/
	@:overload public function isPrinting() : Bool;
	
	/**
	* Decrement the indentation level.
	*/
	@:overload public function o() : com.sun.codemodel.internal.JFormatter;
	
	/**
	* Increment the indentation level.
	*/
	@:overload public function i() : com.sun.codemodel.internal.JFormatter;
	
	/**
	* Print a char into the stream
	*
	* @param c the char
	*/
	@:overload public function p(c : java.StdTypes.Char16) : com.sun.codemodel.internal.JFormatter;
	
	/**
	* Print a String into the stream
	*
	* @param s the String
	*/
	@:overload public function p(s : String) : com.sun.codemodel.internal.JFormatter;
	
	@:overload public function t(type : com.sun.codemodel.internal.JType) : com.sun.codemodel.internal.JFormatter;
	
	/**
	* Print a type name.
	*
	* <p>
	* In the collecting mode we use this information to
	* decide what types to import and what not to.
	*/
	@:overload public function t(type : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JFormatter;
	
	/**
	* Print an identifier
	*/
	@:overload public function id(id : String) : com.sun.codemodel.internal.JFormatter;
	
	/**
	* Print a new line into the stream
	*/
	@:overload public function nl() : com.sun.codemodel.internal.JFormatter;
	
	/**
	* Cause the JGenerable object to generate source for iteself
	*
	* @param g the JGenerable object
	*/
	@:overload public function g(g : com.sun.codemodel.internal.JGenerable) : com.sun.codemodel.internal.JFormatter;
	
	/**
	* Produces {@link JGenerable}s separated by ','
	*/
	@:overload public function g(list : java.util.Collection<com.sun.codemodel.internal.JGenerable>) : com.sun.codemodel.internal.JFormatter;
	
	/**
	* Cause the JDeclaration to generate source for itself
	*
	* @param d the JDeclaration object
	*/
	@:overload public function d(d : com.sun.codemodel.internal.JDeclaration) : com.sun.codemodel.internal.JFormatter;
	
	/**
	* Cause the JStatement to generate source for itself
	*
	* @param s the JStatement object
	*/
	@:overload public function s(s : com.sun.codemodel.internal.JStatement) : com.sun.codemodel.internal.JFormatter;
	
	/**
	* Cause the JVar to generate source for itself
	*
	* @param v the JVar object
	*/
	@:overload public function b(v : com.sun.codemodel.internal.JVar) : com.sun.codemodel.internal.JFormatter;
	
	
}
@:native('com$sun$codemodel$internal$JFormatter$Mode') privateextern enum JFormatter_Mode
{
	/**
	* Collect all the type names and identifiers.
	* In this mode we don't actually generate anything.
	*/
	COLLECTING;
	/**
	* Print the actual source code.
	*/
	PRINTING;
	
}

/**
* Used during the optimization of class imports.
*
* List of {@link JClass}es whose short name is the same.
*
* @author Ryan.Shoemaker@Sun.COM
*/
@:native('com$sun$codemodel$internal$JFormatter$ReferenceList') @:internal extern class JFormatter_ReferenceList
{
	/**
	* Returns true if the symbol represented by the short name
	* is "importable".
	*/
	@:overload public function collisions(enclosingClass : com.sun.codemodel.internal.JDefinedClass) : Bool;
	
	@:overload public function add(clazz : com.sun.codemodel.internal.JClass) : Void;
	
	@:overload public function getClasses() : java.util.List<com.sun.codemodel.internal.JClass>;
	
	@:overload public function setId(value : Bool) : Void;
	
	/**
	* Return true iff this is strictly an id, meaning that there
	* are no collisions with type names.
	*/
	@:overload public function isId() : Bool;
	
	
}

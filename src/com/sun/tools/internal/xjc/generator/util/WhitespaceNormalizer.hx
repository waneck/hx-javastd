package com.sun.tools.internal.xjc.generator.util;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class WhitespaceNormalizer
{
	/**
	* Generates the expression that normalizes
	* the given expression (which evaluates to java.lang.String).
	*
	* @param codeModel
	*      The owner code model object under which a new expression
	*      will be created.
	*/
	@:overload @:abstract public function generate(codeModel : com.sun.codemodel.internal.JCodeModel, literal : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Parses "preserve","replace" or "collapse" into
	* the corresponding WhitespaceNormalizer object.
	*
	* @param method
	*      Either "preserve", "replace", or "collapse"
	*
	* @exception    IllegalArgumentException
	*        when the specified method is invalid.
	*/
	@:overload public static function parse(method : String) : WhitespaceNormalizer;
	
	public static var PRESERVE(default, null) : WhitespaceNormalizer;
	
	public static var REPLACE(default, null) : WhitespaceNormalizer;
	
	public static var COLLAPSE(default, null) : WhitespaceNormalizer;
	
	
}

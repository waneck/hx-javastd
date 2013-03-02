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
extern class JInvocation extends com.sun.codemodel.internal.JExpressionImpl implements com.sun.codemodel.internal.JStatement
{
	/**
	*  Add an expression to this invocation's argument list
	*
	* @param arg
	*        Argument to add to argument list
	*/
	@:overload public function arg(arg : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JInvocation;
	
	/**
	* Adds a literal argument.
	*
	* Short for {@code arg(JExpr.lit(v))}
	*/
	@:overload public function arg(v : String) : com.sun.codemodel.internal.JInvocation;
	
	/**
	* Returns all arguments of the invocation.
	* @return
	*      If there's no arguments, an empty array will be returned.
	*/
	@:overload public function listArgs() : java.NativeArray<com.sun.codemodel.internal.JExpression>;
	
	@:overload override public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	@:overload public function state(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}

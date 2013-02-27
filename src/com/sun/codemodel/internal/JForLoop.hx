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
extern class JForLoop implements com.sun.codemodel.internal.JStatement
{
	@:overload public function init(mods : Int, type : com.sun.codemodel.internal.JType, _var : String, e : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JVar;
	
	@:overload public function init(type : com.sun.codemodel.internal.JType, _var : String, e : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JVar;
	
	@:overload public function init(v : com.sun.codemodel.internal.JVar, e : com.sun.codemodel.internal.JExpression) : Void;
	
	@:overload public function test(e : com.sun.codemodel.internal.JExpression) : Void;
	
	@:overload public function update(e : com.sun.codemodel.internal.JExpression) : Void;
	
	@:overload public function body() : com.sun.codemodel.internal.JBlock;
	
	@:overload public function state(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}

package com.sun.tools.apt.mirror.declaration;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
* Implementation of ExecutableDeclaration
*/
extern class ExecutableDeclarationImpl extends com.sun.tools.apt.mirror.declaration.MemberDeclarationImpl implements com.sun.mirror.declaration.ExecutableDeclaration
{
	public var sym : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol;
	
	@:overload private function new(env : com.sun.tools.apt.mirror.AptEnv, sym : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol) : Void;
	
	/**
	* Returns type parameters (if any), method name, and signature
	* (value parameter types).
	*/
	@:overload public function toString() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function isVarArgs() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getParameters() : java.util.Collection<com.sun.mirror.declaration.ParameterDeclaration>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getThrownTypes() : java.util.Collection<com.sun.mirror.type.ReferenceType>;
	
	
}

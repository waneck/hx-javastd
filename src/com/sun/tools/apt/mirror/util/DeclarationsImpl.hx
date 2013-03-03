package com.sun.tools.apt.mirror.util;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
* Implementation of Declarations utility methods for annotation processors
*/
extern class DeclarationsImpl implements com.sun.mirror.util.Declarations
{
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.mirror.util.Declarations;
	
	/**
	* {@inheritDoc}
	* See sections 8.3 and 8.4.6 of
	* <cite>The Java&trade; Language Specification</cite>
	*/
	@:overload @:public public function hides(sub : com.sun.mirror.declaration.MemberDeclaration, sup : com.sun.mirror.declaration.MemberDeclaration) : Bool;
	
	/**
	* {@inheritDoc}
	* See section 8.4.6.1 of
	* <cite>The Java&trade; Language Specification</cite>
	*/
	@:overload @:public public function overrides(sub : com.sun.mirror.declaration.MethodDeclaration, sup : com.sun.mirror.declaration.MethodDeclaration) : Bool;
	
	
}

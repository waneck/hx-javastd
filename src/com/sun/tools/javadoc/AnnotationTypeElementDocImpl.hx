package com.sun.tools.javadoc;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AnnotationTypeElementDocImpl extends com.sun.tools.javadoc.MethodDocImpl implements com.sun.javadoc.AnnotationTypeElementDoc
{
	/**
	* Represents an element of an annotation type.
	*
	* @author Scott Seligman
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function new(env : com.sun.tools.javadoc.DocEnv, sym : MethodSymbol) : Void;
	
	@:overload @:public public function new(env : com.sun.tools.javadoc.DocEnv, sym : MethodSymbol, doc : String, tree : JCMethodDecl, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	/**
	* Returns true, as this is an annotation type element.
	* (For legacy doclets, return false.)
	*/
	@:overload @:public override public function isAnnotationTypeElement() : Bool;
	
	/**
	* Returns false.  Although this is technically a method, we don't
	* consider it one for this purpose.
	* (For legacy doclets, return true.)
	*/
	@:overload @:public override public function isMethod() : Bool;
	
	/**
	* Returns false, even though this is indeed abstract.  See
	* MethodDocImpl.isAbstract() for the (il)logic behind this.
	*/
	@:overload @:public override public function isAbstract() : Bool;
	
	/**
	* Returns the default value of this element.
	* Returns null if this element has no default.
	*/
	@:overload @:public public function defaultValue() : com.sun.javadoc.AnnotationValue;
	
	
}

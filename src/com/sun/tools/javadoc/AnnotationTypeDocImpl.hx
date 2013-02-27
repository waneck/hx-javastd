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
extern class AnnotationTypeDocImpl extends com.sun.tools.javadoc.ClassDocImpl implements com.sun.javadoc.AnnotationTypeDoc
{
	/**
	* Represents an annotation type.
	*
	* @author Scott Seligman
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(env : com.sun.tools.javadoc.DocEnv, sym : ClassSymbol) : Void;
	
	@:overload public function new(env : com.sun.tools.javadoc.DocEnv, sym : ClassSymbol, doc : String, tree : JCClassDecl, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	/**
	* Returns true, as this is an annotation type.
	* (For legacy doclets, return false.)
	*/
	@:overload override public function isAnnotationType() : Bool;
	
	/**
	* Returns false.  Though technically an interface, an annotation
	* type is not considered an interface for this purpose.
	* (For legacy doclets, returns true.)
	*/
	@:overload override public function isInterface() : Bool;
	
	/**
	* Returns an empty array, as all methods are annotation type elements.
	* (For legacy doclets, returns the elements.)
	* @see #elements()
	*/
	@:overload override public function methods(filter : Bool) : java.NativeArray<com.sun.javadoc.MethodDoc>;
	
	/**
	* Returns the elements of this annotation type.
	* Returns an empty array if there are none.
	* Elements are always public, so no need to filter them.
	*/
	@:overload public function elements() : java.NativeArray<com.sun.javadoc.AnnotationTypeElementDoc>;
	
	
}

package javax.tools;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface JavaFileObject extends javax.tools.FileObject
{
	/**
	* Gets the kind of this file object.
	*
	* @return the kind
	*/
	@:overload public function getKind() : javax.tools.JavaFileObject.JavaFileObject_Kind;
	
	/**
	* Checks if this file object is compatible with the specified
	* simple name and kind.  A simple name is a single identifier
	* (not qualified) as defined in
	* <cite>The Java&trade; Language Specification</cite>,
	* section 6.2 "Names and Identifiers".
	*
	* @param simpleName a simple name of a class
	* @param kind a kind
	* @return {@code true} if this file object is compatible; false
	* otherwise
	*/
	@:overload public function isNameCompatible(simpleName : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : Bool;
	
	/**
	* Provides a hint about the nesting level of the class
	* represented by this file object.  This method may return
	* {@link NestingKind#MEMBER} to mean
	* {@link NestingKind#LOCAL} or {@link NestingKind#ANONYMOUS}.
	* If the nesting level is not known or this file object does not
	* represent a class file this method returns {@code null}.
	*
	* @return the nesting kind, or {@code null} if the nesting kind
	* is not known
	*/
	@:overload public function getNestingKind() : javax.lang.model.element.NestingKind;
	
	/**
	* Provides a hint about the access level of the class represented
	* by this file object.  If the access level is not known or if
	* this file object does not represent a class file this method
	* returns {@code null}.
	*
	* @return the access level
	*/
	@:overload public function getAccessLevel() : javax.lang.model.element.Modifier;
	
	
}
/**
* Kinds of JavaFileObjects.
*/
@:native('javax$tools$JavaFileObject$Kind') extern enum JavaFileObject_Kind
{
	/**
	* Source files written in the Java programming language.  For
	* example, regular files ending with {@code .java}.
	*/
	SOURCE;
	/**
	* Class files for the Java Virtual Machine.  For example,
	* regular files ending with {@code .class}.
	*/
	CLASS;
	/**
	* HTML files.  For example, regular files ending with {@code
	* .html}.
	*/
	HTML;
	/**
	* Any other kind.
	*/
	OTHER;
	
}


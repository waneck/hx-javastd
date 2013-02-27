package com.sun.tools.javadoc;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ProgramElementDocImpl extends com.sun.tools.javadoc.DocImpl implements com.sun.javadoc.ProgramElementDoc
{
	@:overload private function new(env : com.sun.tools.javadoc.DocEnv, sym : com.sun.tools.javac.code.Symbol, doc : String, tree : com.sun.tools.javac.tree.JCTree, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	/**
	* Subclasses override to identify the containing class
	*/
	@:overload @:abstract private function getContainingClass() : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol;
	
	/**
	* Returns the flags in terms of javac's flags
	*/
	@:overload @:abstract private function getFlags() : haxe.Int64;
	
	/**
	* Returns the modifier flags in terms of java.lang.reflect.Modifier.
	*/
	@:overload private function getModifiers() : Int;
	
	/**
	* Get the containing class of this program element.
	*
	* @return a ClassDocImpl for this element's containing class.
	* If this is a class with no outer class, return null.
	*/
	@:overload public function containingClass() : com.sun.javadoc.ClassDoc;
	
	/**
	* Return the package that this member is contained in.
	* Return "" if in unnamed package.
	*/
	@:overload public function containingPackage() : com.sun.javadoc.PackageDoc;
	
	/**
	* Get the modifier specifier integer.
	*
	* @see java.lang.reflect.Modifier
	*/
	@:overload public function modifierSpecifier() : Int;
	
	/**
	* Get modifiers string.
	* <pre>
	* Example, for:
	*   public abstract int foo() { ... }
	* modifiers() would return:
	*   'public abstract'
	* </pre>
	* Annotations are not included.
	*/
	@:overload public function modifiers() : String;
	
	/**
	* Get the annotations of this program element.
	* Return an empty array if there are none.
	*/
	@:overload public function annotations() : java.NativeArray<com.sun.javadoc.AnnotationDesc>;
	
	/**
	* Return true if this program element is public
	*/
	@:overload public function isPublic() : Bool;
	
	/**
	* Return true if this program element is protected
	*/
	@:overload public function isProtected() : Bool;
	
	/**
	* Return true if this program element is private
	*/
	@:overload public function isPrivate() : Bool;
	
	/**
	* Return true if this program element is package private
	*/
	@:overload public function isPackagePrivate() : Bool;
	
	/**
	* Return true if this program element is static
	*/
	@:overload public function isStatic() : Bool;
	
	/**
	* Return true if this program element is final
	*/
	@:overload public function isFinal() : Bool;
	
	/**
	* Get the fully qualified name of this program element.
	* For example, for the class <code>java.util.Hashtable</code>,
	* return "java.util.Hashtable".
	* <p>
	* For the method <code>bar()</code> in class <code>Foo</code>
	* in the unnamed package, return "Foo.bar".
	*
	* @return the qualified name of the program element as a String.
	*/
	@:overload override public function qualifiedName() : String;
	
	
}

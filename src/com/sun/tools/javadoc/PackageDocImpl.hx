package com.sun.tools.javadoc;
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
extern class PackageDocImpl extends com.sun.tools.javadoc.DocImpl implements com.sun.javadoc.PackageDoc
{
	/**
	* Represents a java package.  Provides access to information
	* about the package, the package's comment and tags, and the
	* classes in the package.
	*
	* @since 1.2
	* @author Kaiyang Liu (original)
	* @author Robert Field (rewrite)
	* @author Neal Gafter (rewrite)
	* @author Scott Seligman (package-info.java)
	*/
	@:require(java2) private var sym : com.sun.tools.javac.code.Symbol.Symbol_PackageSymbol;
	
	public var docPath : javax.tools.FileObject;
	
	/**
	* Constructor
	*/
	@:overload public function new(env : com.sun.tools.javadoc.DocEnv, sym : com.sun.tools.javac.code.Symbol.Symbol_PackageSymbol) : Void;
	
	/**
	* Constructor
	*/
	@:overload public function new(env : com.sun.tools.javadoc.DocEnv, sym : com.sun.tools.javac.code.Symbol.Symbol_PackageSymbol, documentation : String, tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	@:overload override public function setRawCommentText(rawDocumentation : String) : Void;
	
	/**
	* Do lazy initialization of "documentation" string.
	*/
	@:overload override private function documentation() : String;
	
	/**
	* Add all included classes (including Exceptions and Errors)
	* and interfaces.
	*/
	@:overload public function addAllClassesTo(list : com.sun.tools.javac.util.ListBuffer<com.sun.tools.javadoc.ClassDocImpl>) : Void;
	
	/**
	* Get all classes (including Exceptions and Errors)
	* and interfaces.
	* @since J2SE1.4.
	*
	* @return all classes and interfaces in this package, filtered to include
	* only the included classes if filter==true.
	*/
	@:require(java4) @:overload public function allClasses(filter : Bool) : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Get all included classes (including Exceptions and Errors)
	* and interfaces.  Same as allClasses(true).
	*
	* @return all included classes and interfaces in this package.
	*/
	@:overload public function allClasses() : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Get ordinary classes (that is, exclude exceptions, errors,
	* enums, interfaces, and annotation types) in this package.
	*
	* @return included ordinary classes in this package.
	*/
	@:overload public function ordinaryClasses() : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Get Exception classes in this package.
	*
	* @return included Exceptions in this package.
	*/
	@:overload public function exceptions() : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Get Error classes in this package.
	*
	* @return included Errors in this package.
	*/
	@:overload public function errors() : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Get included enum types in this package.
	*
	* @return included enum types in this package.
	*/
	@:overload public function enums() : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Get included interfaces in this package, omitting annotation types.
	*
	* @return included interfaces in this package.
	*/
	@:overload public function interfaces() : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Get included annotation types in this package.
	*
	* @return included annotation types in this package.
	*/
	@:overload public function annotationTypes() : java.NativeArray<com.sun.javadoc.AnnotationTypeDoc>;
	
	/**
	* Get the annotations of this package.
	* Return an empty array if there are none.
	*/
	@:overload public function annotations() : java.NativeArray<com.sun.javadoc.AnnotationDesc>;
	
	/**
	* Lookup for a class within this package.
	*
	* @return ClassDocImpl of found class, or null if not found.
	*/
	@:overload public function findClass(className : String) : com.sun.javadoc.ClassDoc;
	
	/**
	* Return true if this package is included in the active set.
	*/
	@:overload override public function isIncluded() : Bool;
	
	/**
	* Get package name.
	*
	* Note that we do not provide a means of obtaining the simple
	* name of a package -- package names are always returned in their
	* uniquely qualified form.
	*/
	@:overload override public function name() : String;
	
	/**
	* Get package name.
	*/
	@:overload override public function qualifiedName() : String;
	
	/**
	* set doc path for an unzipped directory
	*/
	@:overload public function setDocPath(path : javax.tools.FileObject) : Void;
	
	/**
	* Return the source position of the entity, or null if
	* no position is available.
	*/
	@:overload override public function position() : com.sun.javadoc.SourcePosition;
	
	
}

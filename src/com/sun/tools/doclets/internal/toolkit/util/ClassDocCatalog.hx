package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ClassDocCatalog
{
	/**
	* Construct a new ClassDocCatalog.
	*
	* @param classdocs the array of ClassDocs to catalog
	*/
	@:overload public function new(classdocs : java.NativeArray<com.sun.javadoc.ClassDoc>, config : com.sun.tools.doclets.internal.toolkit.Configuration) : Void;
	
	/**
	* Construct a new ClassDocCatalog.
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Add the given class to the catalog.
	* @param classdoc the ClassDoc to add to the catelog.
	*/
	@:overload public function addClassDoc(classdoc : com.sun.javadoc.ClassDoc) : Void;
	
	/**
	* Return all of the classes specified on the command-line that
	* belong to the given package.
	* @param packageDoc the package to return the classes for.
	*/
	@:overload public function allClasses(pkgDoc : com.sun.javadoc.PackageDoc) : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return all of the classes specified on the command-line that
	* belong to the given package.
	* @param packageName the name of the package specified on the
	* command-line.
	*/
	@:overload public function allClasses(packageName : String) : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return the array of package names that this catalog stores
	* ClassDocs for.
	*/
	@:overload public function packageNames() : java.NativeArray<String>;
	
	/**
	* Return true if the given package is known to this catalog.
	* @param packageName the name to check.
	* @return true if this catalog has any information about
	* classes in the given package.
	*/
	@:overload public function isKnownPackage(packageName : String) : Bool;
	
	/**
	* Return all of the errors specified on the command-line
	* that belong to the given package.
	* @param packageName the name of the package specified on the
	* command-line.
	*/
	@:overload public function errors(packageName : String) : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return all of the exceptions specified on the command-line
	* that belong to the given package.
	* @param packageName the name of the package specified on the
	* command-line.
	*/
	@:overload public function exceptions(packageName : String) : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return all of the enums specified on the command-line
	* that belong to the given package.
	* @param packageName the name of the package specified on the
	* command-line.
	*/
	@:overload public function enums(packageName : String) : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return all of the annotation types specified on the command-line
	* that belong to the given package.
	* @param packageName the name of the package specified on the
	* command-line.
	*/
	@:overload public function annotationTypes(packageName : String) : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return all of the interfaces specified on the command-line
	* that belong to the given package.
	* @param packageName the name of the package specified on the
	* command-line.
	*/
	@:overload public function interfaces(packageName : String) : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return all of the ordinary classes specified on the command-line
	* that belong to the given package.
	* @param packageName the name of the package specified on the
	* command-line.
	*/
	@:overload public function ordinaryClasses(packageName : String) : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	
}

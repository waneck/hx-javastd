package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Provides methods for creating an array of class, method and
* field names to be included as meta keywords in the HTML header
* of class pages.  These keywords improve search results
* on browsers that look for keywords.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Doug Kramer
*/
extern class MetaKeywords
{
	/**
	* Constructor
	*/
	@:overload @:public public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : Void;
	
	/**
	* Returns an array of strings where each element
	* is a class, method or field name.  This array is
	* used to create one meta keyword tag for each element.
	* Method parameter lists are converted to "()" and
	* overloads are combined.
	*
	* Constructors are not included because they have the same
	* name as the class, which is already included.
	* Nested class members are not included because their
	* definitions are on separate pages.
	*/
	@:overload @:public public function getMetaKeywords(classdoc : com.sun.javadoc.ClassDoc) : java.NativeArray<String>;
	
	/**
	* Get the current class for a meta tag keyword, as the first
	* and only element of an array list.
	*/
	@:overload @:protected private function getClassKeyword(classdoc : com.sun.javadoc.ClassDoc) : java.util.ArrayList<String>;
	
	/**
	* Get the package keywords.
	*/
	@:overload @:public public function getMetaKeywords(packageDoc : com.sun.javadoc.PackageDoc) : java.NativeArray<String>;
	
	/**
	* Get the overview keywords.
	*/
	@:overload @:public public function getOverviewMetaKeywords(title : String, docTitle : String) : java.NativeArray<String>;
	
	/**
	* Get members for meta tag keywords as an array,
	* where each member name is a string element of the array.
	* The parameter lists are not included in the keywords;
	* therefore all overloaded methods are combined.<br>
	* Example: getValue(Object) is returned in array as getValue()
	*
	* @param memberdocs  array of MemberDoc objects to be added to keywords
	*/
	@:overload @:protected private function getMemberKeywords(memberdocs : java.NativeArray<com.sun.javadoc.MemberDoc>) : java.util.ArrayList<String>;
	
	
}

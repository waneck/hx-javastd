package com.sun.tools.doclets.internal.toolkit;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
* An abstract implementation of a Doclet.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API.
*
* @author Jamie Ho
*/
extern class AbstractDoclet
{
	/**
	* The method that starts the execution of the doclet.
	*
	* @param doclet the doclet to start the execution for.
	* @param root   the {@link RootDoc} that points to the source to document.
	* @return true if the doclet executed without error.  False otherwise.
	*/
	@:overload public function start(doclet : com.sun.tools.doclets.internal.toolkit.AbstractDoclet, root : com.sun.javadoc.RootDoc) : Bool;
	
	/**
	* Indicate that this doclet supports the 1.5 language features.
	* @return JAVA_1_5, indicating that the new features are supported.
	*/
	@:overload public static function languageVersion() : com.sun.javadoc.LanguageVersion;
	
	/**
	* Create the configuration instance and returns it.
	* @return the configuration of the doclet.
	*/
	@:overload @:abstract public function configuration() : com.sun.tools.doclets.internal.toolkit.Configuration;
	
	/**
	* Generate additional documentation that is added to the API documentation.
	*
	* @param root      the RootDoc of source to document.
	* @param classtree the data structure representing the class tree.
	*/
	@:overload private function generateOtherFiles(root : com.sun.javadoc.RootDoc, classtree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : Void;
	
	/**
	* Generate the package documentation.
	*
	* @param classtree the data structure representing the class tree.
	*/
	@:overload @:abstract private function generatePackageFiles(classtree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : Void;
	
	/**
	* Generate the class documentation.
	*
	* @param classtree the data structure representing the class tree.
	*/
	@:overload @:abstract private function generateClassFiles(arr : java.NativeArray<com.sun.javadoc.ClassDoc>, classtree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : Void;
	
	/**
	* Iterate through all classes and construct documentation for them.
	*
	* @param root      the RootDoc of source to document.
	* @param classtree the data structure representing the class tree.
	*/
	@:overload private function generateClassFiles(root : com.sun.javadoc.RootDoc, classtree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : Void;
	
	
}

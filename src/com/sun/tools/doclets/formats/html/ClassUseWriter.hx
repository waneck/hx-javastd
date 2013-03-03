package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1998, 2012, Oracle and/or its affiliates. All rights reserved.
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
* Generate class usage information.
*
* @author Robert G. Field
* @author Bhavesh Patel (Modified)
*/
extern class ClassUseWriter extends com.sun.tools.doclets.formats.html.SubWriterHolderWriter
{
	/**
	* Constructor.
	*
	* @param filename the file to be generated.
	* @throws IOException
	* @throws DocletAbortException
	*/
	@:overload @:public public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, mapper : com.sun.tools.doclets.internal.toolkit.util.ClassUseMapper, path : String, filename : String, relpath : String, classdoc : com.sun.javadoc.ClassDoc) : Void;
	
	/**
	* Write out class use pages.
	* @throws DocletAbortException
	*/
	@:overload @:public @:static public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, classtree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : Void;
	
	/**
	* Generate a class page.
	*/
	@:overload @:public @:static public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, mapper : com.sun.tools.doclets.internal.toolkit.util.ClassUseMapper, classdoc : com.sun.javadoc.ClassDoc) : Void;
	
	/**
	* Generate the class use list.
	*/
	@:overload @:protected private function generateClassUseFile() : Void;
	
	/**
	* Add the class use documentation.
	*
	* @param contentTree the content tree to which the class use information will be added
	*/
	@:overload @:protected private function addClassUse(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the packages list that use the given class.
	*
	* @param contentTree the content tree to which the packages list will be added
	*/
	@:overload @:protected private function addPackageList(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the package annotation list.
	*
	* @param contentTree the content tree to which the package annotation list will be added
	*/
	@:overload @:protected private function addPackageAnnotationList(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the class list that use the given class.
	*
	* @param contentTree the content tree to which the class list will be added
	*/
	@:overload @:protected private function addClassList(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the package use information.
	*
	* @param pkg the package that uses the given class
	* @param contentTree the content tree to which the package use information will be added
	*/
	@:overload @:protected private function addPackageUse(pkg : com.sun.javadoc.PackageDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the class use information.
	*
	* @param pkg the package that uses the given class
	* @param contentTree the content tree to which the class use information will be added
	*/
	@:overload @:protected private function addClassUse(pkg : com.sun.javadoc.PackageDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the header for the class use Listing.
	*
	* @return a content tree representing the class use header
	*/
	@:overload @:protected private function getClassUseHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get this package link.
	*
	* @return a content tree for the package link
	*/
	@:overload @:protected override private function getNavLinkPackage() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get class page link.
	*
	* @return a content tree for the class page link
	*/
	@:overload @:protected override private function getNavLinkClass() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the use link.
	*
	* @return a content tree for the use link
	*/
	@:overload @:protected override private function getNavLinkClassUse() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the tree link.
	*
	* @return a content tree for the tree link
	*/
	@:overload @:protected override private function getNavLinkTree() : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}

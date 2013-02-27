package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Generate package usage information.
*
* @author Robert G. Field
* @author Bhavesh Patel (Modified)
*/
extern class PackageUseWriter extends com.sun.tools.doclets.formats.html.SubWriterHolderWriter
{
	/**
	* Constructor.
	*
	* @param filename the file to be generated.
	* @throws IOException
	* @throws DocletAbortException
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, mapper : com.sun.tools.doclets.internal.toolkit.util.ClassUseMapper, filename : String, pkgdoc : com.sun.javadoc.PackageDoc) : Void;
	
	/**
	* Generate a class page.
	*
	* @param configuration the current configuration of the doclet.
	* @param mapper        the mapping of the class usage.
	* @param pkgdoc        the package doc being documented.
	*/
	@:overload public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, mapper : com.sun.tools.doclets.internal.toolkit.util.ClassUseMapper, pkgdoc : com.sun.javadoc.PackageDoc) : Void;
	
	/**
	* Generate the package use list.
	*/
	@:overload private function generatePackageUseFile() : Void;
	
	/**
	* Add the package use information.
	*
	* @param contentTree the content tree to which the package use information will be added
	*/
	@:overload private function addPackageUse(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the list of packages that use the given package.
	*
	* @param contentTree the content tree to which the package list will be added
	*/
	@:overload private function addPackageList(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the list of classes that use the given package.
	*
	* @param contentTree the content tree to which the class list will be added
	*/
	@:overload private function addClassList(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add a row for the class that uses the given package.
	*
	* @param usedClass the class that uses the given package
	* @param packageName the name of the package to which the class belongs
	* @param contentTree the content tree to which the row will be added
	*/
	@:overload private function addClassRow(usedClass : com.sun.javadoc.ClassDoc, packageName : String, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the package use information.
	*
	* @param pkg the package that used the given package
	* @param contentTree the content tree to which the information will be added
	*/
	@:overload private function addPackageUse(pkg : com.sun.javadoc.PackageDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the header for the package use listing.
	*
	* @return a content tree representing the package use header
	*/
	@:overload private function getPackageUseHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get this package link.
	*
	* @return a content tree for the package link
	*/
	@:overload override private function getNavLinkPackage() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the use link.
	*
	* @return a content tree for the use link
	*/
	@:overload override private function getNavLinkClassUse() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the tree link.
	*
	* @return a content tree for the tree link
	*/
	@:overload override private function getNavLinkTree() : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}

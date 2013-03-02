package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Class to generate Tree page for a package. The name of the file generated is
* "package-tree.html" and it is generated in the respective package directory.
*
* @author Atul M Dambalkar
* @author Bhavesh Patel (Modified)
*/
extern class PackageTreeWriter extends com.sun.tools.doclets.formats.html.AbstractTreeWriter
{
	/**
	* Package for which tree is to be generated.
	*/
	private var packagedoc : com.sun.javadoc.PackageDoc;
	
	/**
	* The previous package name in the alpha-order list.
	*/
	private var prev : com.sun.javadoc.PackageDoc;
	
	/**
	* The next package name in the alpha-order list.
	*/
	private var next : com.sun.javadoc.PackageDoc;
	
	/**
	* Constructor.
	* @throws IOException
	* @throws DocletAbortException
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, path : String, filename : String, packagedoc : com.sun.javadoc.PackageDoc, prev : com.sun.javadoc.PackageDoc, next : com.sun.javadoc.PackageDoc) : Void;
	
	/**
	* Construct a PackageTreeWriter object and then use it to generate the
	* package tree page.
	*
	* @param pkg      Package for which tree file is to be generated.
	* @param prev     Previous package in the alpha-ordered list.
	* @param next     Next package in the alpha-ordered list.
	* @param noDeprecated  If true, do not generate any information for
	* deprecated classe or interfaces.
	* @throws DocletAbortException
	*/
	@:overload public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, pkg : com.sun.javadoc.PackageDoc, prev : com.sun.javadoc.PackageDoc, next : com.sun.javadoc.PackageDoc, noDeprecated : Bool) : Void;
	
	/**
	* Generate a separate tree file for each package.
	*/
	@:overload private function generatePackageTreeFile() : Void;
	
	/**
	* Get the package tree header.
	*
	* @return a content tree for the header
	*/
	@:overload private function getPackageTreeHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add a link to the tree for all the packages.
	*
	* @param div the content tree to which the link will be added
	*/
	@:overload private function addLinkToMainTree(div : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get link for the previous package tree file.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkPrevious() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get link for the next package tree file.
	*
	* @return a content tree for the link
	*/
	@:overload private function getNavLinkNext() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get link to the package summary page for the package of this tree.
	*
	* @return a content tree for the package link
	*/
	@:overload private function getNavLinkPackage() : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}

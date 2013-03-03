package com.sun.tools.doclets.formats.html;
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
/**
* Class to generate file for each package contents in the right-hand
* frame. This will list all the Class Kinds in the package. A click on any
* class-kind will update the frame with the clicked class-kind page.
*
* @author Atul M Dambalkar
* @author Bhavesh Patel (Modified)
*/
extern class PackageWriterImpl extends com.sun.tools.doclets.formats.html.HtmlDocletWriter implements com.sun.tools.doclets.internal.toolkit.PackageSummaryWriter
{
	/**
	* The prev package name in the alpha-order list.
	*/
	@:protected private var prev : com.sun.javadoc.PackageDoc;
	
	/**
	* The next package name in the alpha-order list.
	*/
	@:protected private var next : com.sun.javadoc.PackageDoc;
	
	/**
	* The package being documented.
	*/
	@:protected private var packageDoc : com.sun.javadoc.PackageDoc;
	
	/**
	* Constructor to construct PackageWriter object and to generate
	* "package-summary.html" file in the respective package directory.
	* For example for package "java.lang" this will generate file
	* "package-summary.html" file in the "java/lang" directory. It will also
	* create "java/lang" directory in the current or the destination directory
	* if it doesen't exist.
	*
	* @param configuration the configuration of the doclet.
	* @param packageDoc    PackageDoc under consideration.
	* @param prev          Previous package in the sorted array.
	* @param next            Next package in the sorted array.
	*/
	@:overload @:public public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, packageDoc : com.sun.javadoc.PackageDoc, prev : com.sun.javadoc.PackageDoc, next : com.sun.javadoc.PackageDoc) : Void;
	
	/**
	* Return the name of the output file.
	*
	* @return the name of the output file.
	*/
	@:overload @:public public function getOutputFileName() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getPackageHeader(heading : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getContentHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the package deprecation information to the documentation tree.
	*
	* @param div the content tree to which the deprecation information will be added
	*/
	@:overload @:public public function addDeprecationInfo(div : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getSummaryHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addClassesSummary(classes : java.NativeArray<com.sun.javadoc.ClassDoc>, label : String, tableSummary : String, tableHeader : java.NativeArray<String>, summaryContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addPackageDescription(packageContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addPackageTags(packageContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addPackageFooter(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function printDocument(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get "Use" link for this pacakge in the navigation bar.
	*
	* @return a content tree for the class use link
	*/
	@:overload @:protected override private function getNavLinkClassUse() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get "PREV PACKAGE" link in the navigation bar.
	*
	* @return a content tree for the previous link
	*/
	@:overload @:public override public function getNavLinkPrevious() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get "NEXT PACKAGE" link in the navigation bar.
	*
	* @return a content tree for the next link
	*/
	@:overload @:public override public function getNavLinkNext() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get "Tree" link in the navigation bar. This will be link to the package
	* tree file.
	*
	* @return a content tree for the tree link
	*/
	@:overload @:protected override private function getNavLinkTree() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Highlight "Package" in the navigation bar, as this is the package page.
	*
	* @return a content tree for the package link
	*/
	@:overload @:protected override private function getNavLinkPackage() : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}

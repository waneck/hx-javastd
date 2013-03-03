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
* Abstract class to generate the overview files in
* Frame and Non-Frame format. This will be sub-classed by to
* generate overview-frame.html as well as overview-summary.html.
*
* @author Atul M Dambalkar
* @author Bhavesh Patel (Modified)
*/
extern class AbstractPackageIndexWriter extends com.sun.tools.doclets.formats.html.HtmlDocletWriter
{
	/**
	* Array of Packages to be documented.
	*/
	@:protected private var packages : java.NativeArray<com.sun.javadoc.PackageDoc>;
	
	/**
	* Constructor. Also initialises the packages variable.
	*
	* @param filename Name of the package index file to be generated.
	*/
	@:overload @:public public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, filename : String) : Void;
	
	/**
	* Adds the navigation bar header to the documentation tree.
	*
	* @param body the document tree to which the navigation bar header will be added
	*/
	@:overload @:protected @:abstract private function addNavigationBarHeader(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the navigation bar footer to the documentation tree.
	*
	* @param body the document tree to which the navigation bar footer will be added
	*/
	@:overload @:protected @:abstract private function addNavigationBarFooter(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the overview header to the documentation tree.
	*
	* @param body the document tree to which the overview header will be added
	*/
	@:overload @:protected @:abstract private function addOverviewHeader(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the packages list to the documentation tree.
	*
	* @param packages an array of packagedoc objects
	* @param text caption for the table
	* @param tableSummary summary for the table
	* @param body the document tree to which the packages list will be added
	*/
	@:overload @:protected @:abstract private function addPackagesList(packages : java.NativeArray<com.sun.javadoc.PackageDoc>, text : String, tableSummary : String, body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Generate and prints the contents in the package index file. Call appropriate
	* methods from the sub-class in order to generate Frame or Non
	* Frame format.
	*
	* @param title the title of the window.
	* @param includeScript boolean set true if windowtitle script is to be included
	*/
	@:overload @:protected private function buildPackageIndexFile(title : String, includeScript : Bool) : Void;
	
	/**
	* Default to no overview, override to add overview.
	*
	* @param body the document tree to which the overview will be added
	*/
	@:overload @:protected private function addOverview(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the frame or non-frame package index to the documentation tree.
	*
	* @param body the document tree to which the index will be added
	*/
	@:overload @:protected private function addIndex(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds package index contents. Call appropriate methods from
	* the sub-classes. Adds it to the body HtmlTree
	*
	* @param packages array of packages to be documented
	* @param text string which will be used as the heading
	* @param tableSummary summary for the table
	* @param body the document tree to which the index contents will be added
	*/
	@:overload @:protected private function addIndexContents(packages : java.NativeArray<com.sun.javadoc.PackageDoc>, text : String, tableSummary : String, body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the doctitle to the documentation tree, if it is specified on the command line.
	*
	* @param body the document tree to which the title will be added
	*/
	@:overload @:protected private function addConfigurationTitle(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Returns highlighted "Overview", in the navigation bar as this is the
	* overview page.
	*
	* @return a Content object to be added to the documentation tree
	*/
	@:overload @:protected override private function getNavLinkContents() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Do nothing. This will be overridden in PackageIndexFrameWriter.
	*
	* @param body the document tree to which the all classes link will be added
	*/
	@:overload @:protected private function addAllClassesLink(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}

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
* Generate the package index page "overview-summary.html" for the right-hand
* frame. A click on the package name on this page will update the same frame
* with the "pacakge-summary.html" file for the clicked package.
*
* @author Atul M Dambalkar
* @author Bhavesh Patel (Modified)
*/
extern class PackageIndexWriter extends com.sun.tools.doclets.formats.html.AbstractPackageIndexWriter
{
	/**
	* Construct the PackageIndexWriter. Also constructs the grouping
	* information as provided on the command line by "-group" option. Stores
	* the order of groups specified by the user.
	*
	* @see Group
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, filename : String) : Void;
	
	/**
	* Generate the package index page for the right-hand frame.
	*
	* @param configuration the current configuration of the doclet.
	*/
	@:overload public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl) : Void;
	
	/**
	* Depending upon the grouping information and their titles, add
	* separate table indices for each package group.
	*
	* @param body the documentation tree to which the index will be added
	*/
	@:overload private function addIndex(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function addPackagesList(packages : java.NativeArray<com.sun.javadoc.PackageDoc>, text : String, tableSummary : String, body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds list of packages in the index table. Generate link to each package.
	*
	* @param packages Packages to which link is to be generated
	* @param tbody the documentation tree to which the list will be added
	*/
	@:overload private function addPackagesList(packages : java.NativeArray<com.sun.javadoc.PackageDoc>, tbody : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the overview summary comment for this documentation. Add one line
	* summary at the top of the page and generate a link to the description,
	* which is added at the end of this page.
	*
	* @param body the documentation tree to which the overview header will be added
	*/
	@:overload private function addOverviewHeader(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the overview comment as provided in the file specified by the
	* "-overview" option on the command line.
	*
	* @param htmltree the documentation tree to which the overview comment will
	*                 be added
	*/
	@:overload private function addOverviewComment(htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the tag information as provided in the file specified by the
	* "-overview" option on the command line.
	*
	* @param body the documentation tree to which the overview will be added
	*/
	@:overload private function addOverview(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the top text (from the -top option), the upper
	* navigation bar, and then the title (from the"-title"
	* option), at the top of page.
	*
	* @body the documentation tree to which the navigation bar header will be added
	*/
	@:overload private function addNavigationBarHeader(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the lower navigation bar and the bottom text
	* (from the -bottom option) at the bottom of page.
	*
	* @param the documentation tree to which the navigation bar footer will be added
	*/
	@:overload private function addNavigationBarFooter(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}

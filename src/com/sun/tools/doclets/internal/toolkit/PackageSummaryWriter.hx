package com.sun.tools.doclets.internal.toolkit;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* The interface for writing package summary output.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.5
*/
@:require(java5) extern interface PackageSummaryWriter
{
	/**
	* Return the name of the output file.
	*
	* @return the name of the output file.
	*/
	@:overload @:public @:abstract public function getOutputFileName() : String;
	
	/**
	* Get the header for the summary.
	*
	* @param heading Package name.
	* @return the header to be added to the content tree
	*/
	@:overload @:public @:abstract public function getPackageHeader(heading : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the header for the package content.
	*
	* @return a content tree for the package content header
	*/
	@:overload @:public @:abstract public function getContentHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the header for the package summary.
	*
	* @return a content tree with the package summary header
	*/
	@:overload @:public @:abstract public function getSummaryHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Adds the table of classes to the documentation tree.
	*
	* @param classes the array of classes to document.
	* @param label the label for this table.
	* @param tableSummary the summary string for the table
	* @param tableHeader array of table headers
	* @param summaryContentTree the content tree to which the summaries will be added
	*/
	@:overload @:public @:abstract public function addClassesSummary(classes : java.NativeArray<com.sun.javadoc.ClassDoc>, label : String, tableSummary : String, tableHeader : java.NativeArray<String>, summaryContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the package description from the "packages.html" file to the documentation
	* tree.
	*
	* @param packageContentTree the content tree to which the package description
	*                           will be added
	*/
	@:overload @:public @:abstract public function addPackageDescription(packageContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the tag information from the "packages.html" file to the documentation
	* tree.
	*
	* @param packageContentTree the content tree to which the package tags will
	*                           be added
	*/
	@:overload @:public @:abstract public function addPackageTags(packageContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the footer to the documentation tree.
	*
	* @param contentTree the tree to which the footer will be added
	*/
	@:overload @:public @:abstract public function addPackageFooter(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Print the package summary document.
	*
	* @param contentTree the content tree that will be printed
	*/
	@:overload @:public @:abstract public function printDocument(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Close the writer.
	*/
	@:overload @:public @:abstract public function close() : Void;
	
	
}

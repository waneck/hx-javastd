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
* Generate the package index for the left-hand frame in the generated output.
* A click on the package name in this frame will update the page in the bottom
* left hand frame with the listing of contents of the clicked package.
*
* @author Atul M Dambalkar
*/
extern class PackageIndexFrameWriter extends com.sun.tools.doclets.formats.html.AbstractPackageIndexWriter
{
	/**
	* Construct the PackageIndexFrameWriter object.
	*
	* @param filename Name of the package index file to be generated.
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, filename : String) : Void;
	
	/**
	* Generate the package index file named "overview-frame.html".
	* @throws DocletAbortException
	*/
	@:overload public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function addPackagesList(packages : java.NativeArray<com.sun.javadoc.PackageDoc>, text : String, tableSummary : String, body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Gets each package name as a separate link.
	*
	* @param pd PackageDoc
	* @return content for the package link
	*/
	@:overload private function getPackage(pd : com.sun.javadoc.PackageDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function addNavigationBarHeader(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Do nothing as there is no overview information in this page.
	*/
	@:overload private function addOverviewHeader(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds "All Classes" link for the top of the left-hand frame page to the
	* documentation tree.
	*
	* @param body the Content object to which the all classes link should be added
	*/
	@:overload private function addAllClassesLink(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function addNavigationBarFooter(body : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}

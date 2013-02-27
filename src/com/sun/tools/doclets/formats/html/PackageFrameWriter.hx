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
extern class PackageFrameWriter extends com.sun.tools.doclets.formats.html.HtmlDocletWriter
{
	/**
	* The name of the output file.
	*/
	public static var OUTPUT_FILE_NAME(default, null) : String;
	
	/**
	* Constructor to construct PackageFrameWriter object and to generate
	* "package-frame.html" file in the respective package directory.
	* For example for package "java.lang" this will generate file
	* "package-frame.html" file in the "java/lang" directory. It will also
	* create "java/lang" directory in the current or the destination directory
	* if it doesen't exist.
	*
	* @param configuration the configuration of the doclet.
	* @param packageDoc PackageDoc under consideration.
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, packageDoc : com.sun.javadoc.PackageDoc) : Void;
	
	/**
	* Generate a package summary page for the left-hand bottom frame. Construct
	* the PackageFrameWriter object and then uses it generate the file.
	*
	* @param configuration the current configuration of the doclet.
	* @param packageDoc The package for which "pacakge-frame.html" is to be generated.
	*/
	@:overload public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, packageDoc : com.sun.javadoc.PackageDoc) : Void;
	
	/**
	* Add class listing for all the classes in this package. Divide class
	* listing as per the class kind and generate separate listing for
	* Classes, Interfaces, Exceptions and Errors.
	*
	* @param contentTree the content tree to which the listing will be added
	*/
	@:overload private function addClassListing(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add specific class kind listing. Also add label to the listing.
	*
	* @param arr Array of specific class kinds, namely Class or Interface or Exception or Error
	* @param labelContent content tree of the label to be added
	* @param contentTree the content tree to which the class kind listing will be added
	*/
	@:overload private function addClassKindListing(arr : java.NativeArray<com.sun.javadoc.ClassDoc>, labelContent : com.sun.tools.doclets.internal.toolkit.Content, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}

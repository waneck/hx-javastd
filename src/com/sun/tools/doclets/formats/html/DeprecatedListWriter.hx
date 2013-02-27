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
* Generate File to list all the deprecated classes and class members with the
* appropriate links.
*
* @see java.util.List
* @author Atul M Dambalkar
* @author Bhavesh Patel (Modified)
*/
extern class DeprecatedListWriter extends com.sun.tools.doclets.formats.html.SubWriterHolderWriter
{
	/**
	* Constructor.
	*
	* @param filename the file to be generated.
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, filename : String) : Void;
	
	/**
	* Get list of all the deprecated classes and members in all the Packages
	* specified on the Command Line.
	* Then instantiate DeprecatedListWriter and generate File.
	*
	* @param configuration the current configuration of the doclet.
	*/
	@:overload public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl) : Void;
	
	/**
	* Generate the deprecated API list.
	*
	* @param deprapi list of deprecated API built already.
	*/
	@:overload private function generateDeprecatedListFile(deprapi : com.sun.tools.doclets.internal.toolkit.util.DeprecatedAPIListBuilder) : Void;
	
	/**
	* Get the contents list.
	*
	* @param deprapi the deprecated list builder
	* @return a content tree for the contents list
	*/
	@:overload public function getContentsList(deprapi : com.sun.tools.doclets.internal.toolkit.util.DeprecatedAPIListBuilder) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the header for the deprecated API Listing.
	*
	* @return a content tree for the header
	*/
	@:overload public function getHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the deprecated label.
	*
	* @return a content tree for the deprecated label
	*/
	@:overload override private function getNavLinkDeprecated() : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}

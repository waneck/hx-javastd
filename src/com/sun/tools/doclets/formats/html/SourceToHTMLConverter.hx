package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Converts Java Source Code to HTML.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.4
*/
@:require(java4) extern class SourceToHTMLConverter
{
	/**
	* Convert the Classes in the given RootDoc to an HTML.
	*
	* @param configuration the configuration.
	* @param rd the RootDoc to convert.
	* @param outputdir the name of the directory to output to.
	*/
	@:overload @:public @:static public static function convertRoot(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, rd : com.sun.javadoc.RootDoc, outputdir : String) : Void;
	
	/**
	* Convert the Classes in the given Package to an HTML.
	*
	* @param configuration the configuration.
	* @param pd the Package to convert.
	* @param outputdir the name of the directory to output to.
	*/
	@:overload @:public @:static public static function convertPackage(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, pd : com.sun.javadoc.PackageDoc, outputdir : String) : Void;
	
	/**
	* Convert the given Class to an HTML.
	*
	* @param configuration the configuration.
	* @param cd the class to convert.
	* @param outputdir the name of the directory to output to.
	*/
	@:overload @:public @:static public static function convertClass(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, cd : com.sun.javadoc.ClassDoc, outputdir : String) : Void;
	
	/**
	* Returns a link to the stylesheet file.
	*
	* @param configuration the doclet configuration for the current run of javadoc
	* @return an HtmlTree for the lINK tag which provides the stylesheet location
	*/
	@:overload @:public @:static public static function getStyleSheetProperties(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl) : com.sun.tools.doclets.formats.html.markup.HtmlTree;
	
	/**
	* Given a <code>Doc</code>, return an anchor name for it.
	*
	* @param d the <code>Doc</code> to check.
	* @return the name of the anchor.
	*/
	@:overload @:public @:static public static function getAnchorName(d : com.sun.javadoc.Doc) : String;
	
	
}

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
/**
* Generate the Help File for the generated API documentation. The help file
* contents are helpful for browsing the generated documentation.
*
* @author Atul M Dambalkar
*/
extern class HelpWriter extends com.sun.tools.doclets.formats.html.HtmlDocletWriter
{
	/**
	* Constructor to construct HelpWriter object.
	* @param filename File to be generated.
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, filename : String) : Void;
	
	/**
	* Construct the HelpWriter object and then use it to generate the help
	* file. The name of the generated file is "help-doc.html". The help file
	* will get generated if and only if "-helpfile" and "-nohelp" is not used
	* on the command line.
	* @throws DocletAbortException
	*/
	@:overload public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl) : Void;
	
	/**
	* Generate the help file contents.
	*/
	@:overload private function generateHelpFile() : Void;
	
	/**
	* Add the help file contents from the resource file to the content tree. While adding the
	* help file contents it also keeps track of user options. If "-notree"
	* is used, then the "overview-tree.html" will not get added and hence
	* help information also will not get added.
	*
	* @param contentTree the content tree to which the help file contents will be added
	*/
	@:overload private function addHelpFileContents(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the help label.
	*
	* @return a content tree for the help label
	*/
	@:overload override private function getNavLinkHelp() : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}

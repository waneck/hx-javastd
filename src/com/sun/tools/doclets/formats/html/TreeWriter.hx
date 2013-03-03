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
* Generate Class Hierarchy page for all the Classes in this run.  Use
* ClassTree for building the Tree. The name of
* the generated file is "overview-tree.html" and it is generated in the
* current or the destination directory.
*
* @author Atul M Dambalkar
* @author Bhavesh Patel (Modified)
*/
extern class TreeWriter extends com.sun.tools.doclets.formats.html.AbstractTreeWriter
{
	/**
	* Constructor to construct TreeWriter object.
	*
	* @param configuration the current configuration of the doclet.
	* @param filename String filename
	* @param classtree the tree being built.
	*/
	@:overload @:public public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, filename : String, classtree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : Void;
	
	/**
	* Create a TreeWriter object and use it to generate the
	* "overview-tree.html" file.
	*
	* @param classtree the class tree being documented.
	* @throws  DocletAbortException
	*/
	@:overload @:public @:static public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, classtree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : Void;
	
	/**
	* Generate the interface hierarchy and class hierarchy.
	*/
	@:overload @:public public function generateTreeFile() : Void;
	
	/**
	* Add the links to all the package tree files.
	*
	* @param contentTree the content tree to which the links will be added
	*/
	@:overload @:protected private function addPackageTreeLinks(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the tree header.
	*
	* @return a content tree for the tree header
	*/
	@:overload @:protected private function getTreeHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}

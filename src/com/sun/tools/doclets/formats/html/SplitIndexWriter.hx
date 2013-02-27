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
* Generate Separate Index Files for all the member names with Indexing in
* Unicode Order. This will create "index-files" directory in the current or
* destination directory and will generate separate file for each unicode index.
*
* @see java.lang.Character
* @author Atul M Dambalkar
* @author Bhavesh Patel (Modified)
*/
extern class SplitIndexWriter extends com.sun.tools.doclets.formats.html.AbstractIndexWriter
{
	/**
	* Previous unicode character index in the built index.
	*/
	private var prev : Int;
	
	/**
	* Next unicode character in the built index.
	*/
	private var next : Int;
	
	/**
	* Construct the SplitIndexWriter. Uses path to this file and relative path
	* from this file.
	*
	* @param path       Path to the file which is getting generated.
	* @param filename   Name of the file which is getting genrated.
	* @param relpath    Relative path from this file to the current directory.
	* @param indexbuilder Unicode based Index from {@link IndexBuilder}
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, path : String, filename : String, relpath : String, indexbuilder : com.sun.tools.doclets.internal.toolkit.util.IndexBuilder, prev : Int, next : Int) : Void;
	
	/**
	* Generate separate index files, for each Unicode character, listing all
	* the members starting with the particular unicode character.
	*
	* @param indexbuilder IndexBuilder built by {@link IndexBuilder}
	* @throws DocletAbortException
	*/
	@:overload public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, indexbuilder : com.sun.tools.doclets.internal.toolkit.util.IndexBuilder) : Void;
	
	/**
	* Generate the contents of each index file, with Header, Footer,
	* Member Field, Method and Constructor Description.
	*
	* @param unicode Unicode character referring to the character for the
	* index.
	*/
	@:overload private function generateIndexFile(unicode : Null<java.StdTypes.Char16>) : Void;
	
	/**
	* Add links for all the Index Files per unicode character.
	*
	* @param contentTree the content tree to which the links for indexes will be added
	*/
	@:overload private function addLinksForIndexes(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get link to the previous unicode character.
	*
	* @return a content tree for the link
	*/
	@:overload override public function getNavLinkPrevious() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get link to the next unicode character.
	*
	* @return a content tree for the link
	*/
	@:overload override public function getNavLinkNext() : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}

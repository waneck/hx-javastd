package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Process and manage "-link" and "-linkoffline" to external packages. The
* options "-link" and "-linkoffline" both depend on the fact that Javadoc now
* generates "package-list"(lists all the packages which are getting
* documented) file in the current or the destination directory, while
* generating the documentation.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Atul M Dambalkar
* @author Robert Field
*/
extern class Extern
{
	@:overload public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : Void;
	
	/**
	* Determine if a doc item is externally documented.
	*
	* @param doc A ProgramElementDoc.
	*/
	@:overload public function isExternal(doc : com.sun.javadoc.ProgramElementDoc) : Bool;
	
	/**
	* Convert a link to be an external link if appropriate.
	*
	* @param pkgName The package name.
	* @param relativepath    The relative path.
	* @param link    The link to convert.
	* @return if external return converted link else return null
	*/
	@:overload public function getExternalLink(pkgName : String, relativepath : String, link : String) : String;
	
	/**
	* Build the extern package list from given URL or the directory path.
	* Flag error if the "-link" or "-linkoffline" option is already used.
	*
	* @param url        URL or Directory path.
	* @param pkglisturl This can be another URL for "package-list" or ordinary
	*                   file.
	* @param reporter   The <code>DocErrorReporter</code> used to report errors.
	* @param linkoffline True if -linkoffline isused and false if -link is used.
	*/
	@:overload public function url(url : String, pkglisturl : String, reporter : com.sun.javadoc.DocErrorReporter, linkoffline : Bool) : Bool;
	
	@:overload public function isUrl(urlCandidate : String) : Bool;
	
	
}
/**
* Stores the info for one external doc set
*/
@:native('com$sun$tools$doclets$internal$toolkit$util$Extern$Item') @:internal extern class Extern_Item
{
	/**
	* String representation of "this" with packagename and the path.
	*/
	@:overload public function toString() : String;
	
	
}

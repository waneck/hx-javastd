package com.sun.xml.internal.ws.transport.http;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface ResourceLoader
{
	/**
	* Returns the actual location of the resource from the 'path'
	* that represents a virtual locaion of a file inside a web application.
	*
	* @param path
	*      Desiganates an absolute path within an web application, such as:
	*      '/WEB-INF/web.xml' or some such.
	*
	* @return
	*      the actual location, if found, or null if not found.
	*/
	@:overload public function getResource(path : String) : java.net.URL;
	
	/**
	* Gets the catalog XML file that should be consulted when
	* loading resources from this {@link ResourceLoader}.
	*/
	@:overload public function getCatalogFile() : java.net.URL;
	
	/**
	* Returns the list of files in the given directory.
	*
	* @return
	*      null if the path is invalid. empty if the path didn't contain
	*      any entry in it.
	*
	* @see javax.servlet.http.ServletContext#getResourcePaths(String)
	*/
	@:overload public function getResourcePaths(path : String) : java.util.Set<String>;
	
	
}
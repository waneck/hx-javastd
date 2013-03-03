package com.sun.tools.doclets.internal.toolkit.util;
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
* Write out the package index.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @see com.sun.javadoc.PackageDoc
* @author Atul M Dambalkar
*/
extern class PackageListWriter extends java.io.PrintWriter
{
	/**
	* Constructor.
	*
	* @param configuration the current configuration of the doclet.
	*/
	@:overload @:public public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : Void;
	
	/**
	* Generate the package index.
	*
	* @param configuration the current configuration of the doclet.
	* @throws DocletAbortException
	*/
	@:overload @:public @:static public static function generate(configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : Void;
	
	@:overload @:protected private function generatePackageListFile(root : com.sun.javadoc.RootDoc) : Void;
	
	
}

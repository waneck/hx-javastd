package sun.misc;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
* Provides utility functions related to URLClassLoaders or subclasses of it.
*
*                  W  A  R  N  I  N  G
*
* This class uses undocumented, unpublished, private data structures inside
* java.net.URLClassLoader and sun.misc.URLClassPath.  Use with extreme caution.
*
* @author      tjquinn
*/
extern class ClassLoaderUtil
{
	/**
	* Releases resources held by a URLClassLoader. A new classloader must
	* be created before the underlying resources can be accessed again.
	* @param classLoader the instance of URLClassLoader (or a subclass)
	*/
	@:overload @:public @:static public static function releaseLoader(classLoader : java.net.URLClassLoader) : Void;
	
	/**
	* Releases resources held by a URLClassLoader.  Notably, close the jars
	* opened by the loader. Initializes and updates the List of
	* jars that have been successfully closed.
	* <p>
	* @param classLoader the instance of URLClassLoader (or a subclass)
	* @param jarsClosed a List of Strings that will contain the names of jars
	*  successfully closed; can be null if the caller does not need the information returned
	* @return a List of IOExceptions reporting jars that failed to close; null
	* indicates that an error other than an IOException occurred attempting to
	* release the loader; empty indicates a successful release; non-empty
	* indicates at least one error attempting to close an open jar.
	*/
	@:overload @:public @:static public static function releaseLoader(classLoader : java.net.URLClassLoader, jarsClosed : java.util.List<String>) : java.util.List<java.io.IOException>;
	
	
}

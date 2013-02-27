package javax.management;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultLoaderRepository
{
	/**
	* Go through the list of class loaders and try to load the requested class.
	* The method will stop as soon as the class is found. If the class
	* is not found the method will throw a <CODE>ClassNotFoundException</CODE>
	* exception.
	*
	* @param className The name of the class to be loaded.
	*
	* @return the loaded class.
	*
	* @exception ClassNotFoundException The specified class could not be found.
	*/
	@:overload public static function loadClass(className : String) : Class<Dynamic>;
	
	/**
	* Go through the list of class loaders but exclude the given class loader, then try to load
	* the requested class.
	* The method will stop as soon as the class is found. If the class
	* is not found the method will throw a <CODE>ClassNotFoundException</CODE>
	* exception.
	*
	* @param className The name of the class to be loaded.
	* @param loader The class loader to be excluded.
	*
	* @return the loaded class.
	*
	* @exception ClassNotFoundException The specified class could not be found.
	*/
	@:overload public static function loadClassWithout(loader : java.lang.ClassLoader, className : String) : Class<Dynamic>;
	
	
}

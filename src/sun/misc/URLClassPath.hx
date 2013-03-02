package sun.misc;
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
extern class URLClassPath
{
	/**
	* Creates a new URLClassPath for the given URLs. The URLs will be
	* searched in the order specified for classes and resources. A URL
	* ending with a '/' is assumed to refer to a directory. Otherwise,
	* the URL is assumed to refer to a JAR file.
	*
	* @param urls the directory and JAR file URLs to search for classes
	*        and resources
	* @param factory the URLStreamHandlerFactory to use when creating new URLs
	*/
	@:overload public function new(urls : java.NativeArray<java.net.URL>, factory : java.net.URLStreamHandlerFactory) : Void;
	
	@:overload public function new(urls : java.NativeArray<java.net.URL>) : Void;
	
	@:overload @:synchronized public function closeLoaders() : java.util.List<java.io.IOException>;
	
	/**
	* Appends the specified URL to the search path of directory and JAR
	* file URLs from which to load classes and resources.
	* <p>
	* If the URL specified is null or is already in the list of
	* URLs, then invoking this method has no effect.
	*/
	@:overload @:synchronized public function addURL(url : java.net.URL) : Void;
	
	/**
	* Returns the original search path of URLs.
	*/
	@:overload public function getURLs() : java.NativeArray<java.net.URL>;
	
	/**
	* Finds the resource with the specified name on the URL search path
	* or null if not found or security check fails.
	*
	* @param name      the name of the resource
	* @param check     whether to perform a security check
	* @return a <code>URL</code> for the resource, or <code>null</code>
	* if the resource could not be found.
	*/
	@:overload public function findResource(name : String, check : Bool) : java.net.URL;
	
	/**
	* Finds the first Resource on the URL search path which has the specified
	* name. Returns null if no Resource could be found.
	*
	* @param name the name of the Resource
	* @param check     whether to perform a security check
	* @return the Resource, or null if not found
	*/
	@:overload public function getResource(name : String, check : Bool) : sun.misc.Resource;
	
	/**
	* Finds all resources on the URL search path with the given name.
	* Returns an enumeration of the URL objects.
	*
	* @param name the resource name
	* @return an Enumeration of all the urls having the specified name
	*/
	@:overload public function findResources(name : String, check : Bool) : java.util.Enumeration<java.net.URL>;
	
	@:overload public function getResource(name : String) : sun.misc.Resource;
	
	/**
	* Finds all resources on the URL search path with the given name.
	* Returns an enumeration of the Resource objects.
	*
	* @param name the resource name
	* @return an Enumeration of all the resources having the specified name
	*/
	@:overload public function getResources(name : String, check : Bool) : java.util.Enumeration<sun.misc.Resource>;
	
	@:overload public function getResources(name : String) : java.util.Enumeration<sun.misc.Resource>;
	
	/**
	* Convert class path specification into an array of file URLs.
	*
	* The path of the file is encoded before conversion into URL
	* form so that reserved characters can safely appear in the path.
	*/
	@:overload public static function pathToURLs(path : String) : java.NativeArray<java.net.URL>;
	
	/*
	* Check whether the resource URL should be returned.
	* Return null on security check failure.
	* Called by java.net.URLClassLoader.
	*/
	@:overload public function checkURL(url : java.net.URL) : java.net.URL;
	
	
}
/**
* Inner class used to represent a loader of resources and classes
* from a base URL.
*/
@:native('sun$misc$URLClassPath$Loader') @:internal extern class URLClassPath_Loader implements java.io.Closeable
{
	/*
	* close this loader and release all resources
	* method overridden in sub-classes
	*/
	@:overload public function close() : Void;
	
	
}
/*
* Inner class used to represent a Loader of resources from a JAR URL.
*/
@:native('sun$misc$URLClassPath$JarLoader') @:internal extern class URLClassPath_JarLoader extends sun.misc.URLClassPath.URLClassPath_Loader
{
	@:overload override public function close() : Void;
	
	
}
/*
* Inner class used to represent a loader of classes and resources
* from a file URL that refers to a directory.
*/
@:native('sun$misc$URLClassPath$FileLoader') @:internal extern class URLClassPath_FileLoader extends sun.misc.URLClassPath.URLClassPath_Loader
{
	
}

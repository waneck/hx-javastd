package sun.rmi.server;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class LoaderHandler
{
	/**
	* Load a class from a network location (one or more URLs),
	* but first try to resolve the named class through the given
	* "default loader".
	*/
	@:overload public static function loadClass(codebase : String, name : String, defaultLoader : java.lang.ClassLoader) : Class<Dynamic>;
	
	/**
	* Returns the class annotation (representing the location for
	* a class) that RMI will use to annotate the call stream when
	* marshalling objects of the given class.
	*/
	@:overload public static function getClassAnnotation(cl : Class<Dynamic>) : String;
	
	/**
	* Returns a classloader that loads classes from the given codebase URL
	* path.  The parent classloader of the returned classloader is the
	* context class loader.
	*/
	@:overload public static function getClassLoader(codebase : String) : java.lang.ClassLoader;
	
	/**
	* Return the security context of the given class loader.
	*/
	@:overload public static function getSecurityContext(loader : java.lang.ClassLoader) : Dynamic;
	
	/**
	* Register a class loader as one whose classes should always be
	* annotated with the value of the "java.rmi.server.codebase" property.
	*/
	@:overload public static function registerCodebaseLoader(loader : java.lang.ClassLoader) : Void;
	
	/**
	* Define and return a dynamic proxy class in a class loader with
	* URLs supplied in the given location.  The proxy class will
	* implement interface classes named by the given array of
	* interface names.
	*/
	@:overload public static function loadProxyClass(codebase : String, interfaces : java.NativeArray<String>, defaultLoader : java.lang.ClassLoader) : Class<Dynamic>;
	
	/**
	* Adds to the specified permission collection the permissions
	* necessary to load classes from a loader with the specified URL
	* path; if "forLoader" is true, also adds URL-specific
	* permissions necessary for the security context that such a
	* loader operates within, such as permissions necessary for
	* granting automatic permissions to classes defined by the
	* loader.  A given permission is only added to the collection if
	* it is not already implied by the collection.
	*/
	@:overload public static function addPermissionsForURLs(urls : java.NativeArray<java.net.URL>, perms : java.security.PermissionCollection, forLoader : Bool) : Void;
	
	
}
/**
* LoaderKey holds a codebase URL path and parent class loader pair
* used to look up RMI class loader instances in its class loader cache.
*/
@:native('sun$rmi$server$LoaderHandler$LoaderKey') @:internal extern class LoaderHandler_LoaderKey
{
	@:overload public function new(urls : java.NativeArray<java.net.URL>, parent : java.lang.ClassLoader) : Void;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
/**
* LoaderEntry contains a weak reference to an RMIClassLoader.  The
* weak reference is registered with the private static "refQueue"
* queue.  The entry contains the codebase URL path and parent class
* loader key for the loader so that the mapping can be removed from
* the table efficiently when the weak reference is cleared.
*/
@:native('sun$rmi$server$LoaderHandler$LoaderEntry') @:internal extern class LoaderHandler_LoaderEntry extends java.lang.ref.WeakReference<sun.rmi.server.LoaderHandler.LoaderHandler_Loader>
{
	public var key : sun.rmi.server.LoaderHandler.LoaderHandler_LoaderKey;
	
	/**
	* set to true if the entry has been removed from the table
	* because it has been replaced, so it should not be attempted
	* to be removed again
	*/
	public var removed : Bool;
	
	@:overload public function new(key : sun.rmi.server.LoaderHandler.LoaderHandler_LoaderKey, loader : sun.rmi.server.LoaderHandler.LoaderHandler_Loader) : Void;
	
	
}
/**
* Loader is the actual class of the RMI class loaders created
* by the RMIClassLoader static methods.
*/
@:native('sun$rmi$server$LoaderHandler$Loader') @:internal extern class LoaderHandler_Loader extends java.net.URLClassLoader
{
	/**
	* Return the string to be annotated with all classes loaded from
	* this class loader.
	*/
	@:overload public function getClassAnnotation() : String;
	
	/**
	* Return the permissions to be granted to code loaded from the
	* given code source.
	*/
	@:overload override private function getPermissions(codesource : java.security.CodeSource) : java.security.PermissionCollection;
	
	/**
	* Return a string representation of this loader (useful for
	* debugging).
	*/
	@:overload public function toString() : String;
	
	
}

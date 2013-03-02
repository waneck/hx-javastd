package sun.applet;
/*
* Copyright (c) 1995, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AppletClassLoader extends java.net.URLClassLoader
{
	/*
	* Creates a new AppletClassLoader for the specified base URL.
	*/
	@:overload private function new(base : java.net.URL) : Void;
	
	@:overload public function disableRecursiveDirectoryRead() : Void;
	
	/*
	* Returns the URLs used for loading classes and resources.
	*/
	@:overload override public function getURLs() : java.NativeArray<java.net.URL>;
	
	/*
	* Adds the specified JAR file to the search path of loaded JAR files.
	* Changed modifier to protected in order to be able to overwrite addJar()
	* in PluginClassLoader.java
	*/
	@:overload private function addJar(name : String) : Void;
	
	/*
	* Override loadClass so that class loading errors can be caught in
	* order to print better error messages.
	*/
	@:overload @:synchronized public function loadClass(name : String, resolve : Bool) : Class<Dynamic>;
	
	/*
	* Finds the applet class with the specified name. First searches
	* loaded JAR files then the applet code base for the class.
	*/
	@:overload override private function findClass(name : String) : Class<Dynamic>;
	
	/**
	* Returns the permissions for the given codesource object.
	* The implementation of this method first calls super.getPermissions,
	* to get the permissions
	* granted by the super class, and then adds additional permissions
	* based on the URL of the codesource.
	* <p>
	* If the protocol is "file"
	* and the path specifies a file, permission is granted to read all files
	* and (recursively) all files and subdirectories contained in
	* that directory. This is so applets with a codebase of
	* file:/blah/some.jar can read in file:/blah/, which is needed to
	* be backward compatible. We also add permission to connect back to
	* the "localhost".
	*
	* @param codesource the codesource
	* @return the permissions granted to the codesource
	*/
	@:overload override private function getPermissions(codesource : java.security.CodeSource) : java.security.PermissionCollection;
	
	/**
	* Returns an input stream for reading the specified resource.
	*
	* The search order is described in the documentation for {@link
	* #getResource(String)}.<p>
	*
	* @param  name the resource name
	* @return an input stream for reading the resource, or <code>null</code>
	*         if the resource could not be found
	* @since  JDK1.1
	*/
	@:require(java1) @:overload override public function getResourceAsStream(name : String) : java.io.InputStream;
	
	/**
	* Returns an input stream for reading the specified resource from the
	* the loaded jar files.
	*
	* The search order is described in the documentation for {@link
	* #getResource(String)}.<p>
	*
	* @param  name the resource name
	* @return an input stream for reading the resource, or <code>null</code>
	*         if the resource could not be found
	* @since  JDK1.1
	*/
	@:require(java1) @:overload public function getResourceAsStreamFromJar(name : String) : java.io.InputStream;
	
	/*
	* Finds the applet resource with the specified name. First checks
	* loaded JAR files then the applet code base for the resource.
	*/
	@:overload override public function findResource(name : String) : java.net.URL;
	
	/*
	* Returns an enumeration of all the applet resources with the specified
	* name. First checks loaded JAR files then the applet code base for all
	* available resources.
	*/
	@:overload override public function findResources(name : String) : java.util.Enumeration<Dynamic>;
	
	@:overload public function getThreadGroup() : java.lang.ThreadGroup;
	
	/*
	* Get the AppContext, if any, corresponding to this AppletClassLoader.
	*/
	@:overload public function getAppContext() : sun.awt.AppContext;
	
	/**
	* Grab this AppletClassLoader and its ThreadGroup/AppContext, so they
	* won't be destroyed.
	*/
	@:overload public function grab() : Void;
	
	@:overload private function setExceptionStatus() : Void;
	
	@:overload public function getExceptionStatus() : Bool;
	
	/**
	* Release this AppletClassLoader and its ThreadGroup/AppContext.
	* If nothing else has grabbed this AppletClassLoader, its ThreadGroup
	* and AppContext will be destroyed.
	*
	* Because this method may destroy the AppletClassLoader's ThreadGroup,
	* this method should NOT be called from within the AppletClassLoader's
	* ThreadGroup.
	*
	* Changed modifier to protected in order to be able to overwrite this
	* function in PluginClassLoader.java
	*/
	@:overload private function release() : Void;
	
	/*
	* reset classloader's AppContext and ThreadGroup
	* This method is for subclass PluginClassLoader to
	* reset superclass's AppContext and ThreadGroup but do
	* not dispose the AppContext. PluginClassLoader does not
	* use UsageCount to decide whether to dispose AppContext
	*
	* @return previous AppContext
	*/
	@:overload private function resetAppContext() : sun.awt.AppContext;
	
	
}
@:internal extern class AppContextCreator extends java.lang.Thread
{
	@:overload override public function run() : Void;
	
	
}

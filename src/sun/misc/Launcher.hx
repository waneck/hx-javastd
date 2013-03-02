package sun.misc;
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
extern class Launcher
{
	@:overload public static function getLauncher() : sun.misc.Launcher;
	
	@:overload public function new() : Void;
	
	/*
	* Returns the class loader used to launch the main application.
	*/
	@:overload public function getClassLoader() : java.lang.ClassLoader;
	
	@:overload public static function getBootstrapClassPath() : sun.misc.URLClassPath;
	
	
}
/*
* The class loader used for loading installed extensions.
*/
@:native('sun$misc$Launcher$ExtClassLoader') @:internal extern class Launcher_ExtClassLoader extends java.net.URLClassLoader
{
	/**
	* create an ExtClassLoader. The ExtClassLoader is created
	* within a context that limits which files it can read
	*/
	@:overload public static function getExtClassLoader() : sun.misc.Launcher.Launcher_ExtClassLoader;
	
	/*
	* Creates a new ExtClassLoader for the specified directories.
	*/
	@:overload public function new(dirs : java.NativeArray<java.io.File>) : Void;
	
	/*
	* Searches the installed extension directories for the specified
	* library name. For each extension directory, we first look for
	* the native library in the subdirectory whose name is the value
	* of the system property <code>os.arch</code>. Failing that, we
	* look in the extension directory itself.
	*/
	@:overload public function findLibrary(name : String) : String;
	
	
}
/**
* The class loader used for loading from java.class.path.
* runs in a restricted security context.
*/
@:native('sun$misc$Launcher$AppClassLoader') @:internal extern class Launcher_AppClassLoader extends java.net.URLClassLoader
{
	@:overload public static function getAppClassLoader(extcl : java.lang.ClassLoader) : java.lang.ClassLoader;
	
	/**
	* Override loadClass so we can checkPackageAccess.
	*/
	@:overload public function loadClass(name : String, resolve : Bool) : Class<Dynamic>;
	
	/**
	* allow any classes loaded from classpath to exit the VM.
	*/
	@:overload private function getPermissions(codesource : java.security.CodeSource) : java.security.PermissionCollection;
	
	
}
@:native('sun$misc$Launcher$BootClassPathHolder') @:internal extern class Launcher_BootClassPathHolder
{
	
}
/*
* The stream handler factory for loading system protocol handlers.
*/
@:native('sun$misc$Launcher$Factory') @:internal extern class Launcher_Factory implements java.net.URLStreamHandlerFactory
{
	@:overload public function createURLStreamHandler(protocol : String) : java.net.URLStreamHandler;
	
	
}
@:internal extern class PathPermissions extends java.security.PermissionCollection
{
	@:overload public function add(permission : java.security.Permission) : Void;
	
	@:overload public function implies(permission : java.security.Permission) : Bool;
	
	@:overload public function elements() : java.util.Enumeration<java.security.Permission>;
	
	@:overload public function toString() : String;
	
	
}

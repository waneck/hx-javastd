package sun.misc;
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
extern class ExtensionDependency
{
	/**
	* <p>
	* Register an ExtensionInstallationProvider. The provider is responsible
	* for handling the installation (upgrade) of any missing extensions.
	* </p>
	* @param eip ExtensionInstallationProvider implementation
	*/
	@:overload @:synchronized public static function addExtensionInstallationProvider(eip : sun.misc.ExtensionInstallationProvider) : Void;
	
	/**
	* <p>
	* Unregister a previously installed installation provider
	* </p>
	*/
	@:overload @:synchronized public static function removeExtensionInstallationProvider(eip : sun.misc.ExtensionInstallationProvider) : Void;
	
	/**
	* <p>
	* Checks the dependencies of the jar file on installed extension.
	* </p>
	* @param jarFile containing the attriutes declaring the dependencies
	*/
	@:overload public static function checkExtensionsDependencies(jar : java.util.jar.JarFile) : Bool;
	
	/*
	* Check for all declared required extensions in the jar file
	* manifest.
	*/
	@:overload private function checkExtensions(jar : java.util.jar.JarFile) : Bool;
	
	/*
	* <p>
	* Check that a particular dependency on an extension is satisfied.
	* </p>
	* @param extensionName is the key used for the attributes in the manifest
	* @param attr is the attributes of the manifest file
	*
	* @return true if the dependency is satisfied by the installed extensions
	*/
	@:overload @:synchronized private function checkExtension(extensionName : String, attr : java.util.jar.Attributes) : Bool;
	
	/*
	* <p>
	* Check if the requested extension described by the attributes
	* in the manifest under the key extensionName is compatible with
	* the jar file.
	* </p>
	*
	* @param extensionName key in the attibute list
	* @param attr manifest file attributes
	* @param file installed extension jar file to compare the requested
	* extension against.
	*/
	@:overload private function checkExtensionAgainst(extensionName : String, attr : java.util.jar.Attributes, file : java.io.File) : Bool;
	
	/*
	* <p>
	* An required extension is missing, if an ExtensionInstallationProvider is
	* registered, delegate the installation of that particular extension to it.
	* </p>
	*
	* @param reqInfo Missing extension information
	* @param instInfo Older installed version information
	*
	* @return true if the installation is successful
	*/
	@:overload private function installExtension(reqInfo : sun.misc.ExtensionInfo, instInfo : sun.misc.ExtensionInfo) : Bool;
	
	
}

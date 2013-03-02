package sun.misc;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
* This class holds all necessary information to install or
* upgrade a extension on the user's disk
*
* @author  Jerome Dochez
*/
extern class ExtensionInfo
{
	/**
	* <p>
	* public static values returned by the isCompatible method
	* </p>
	*/
	public static var COMPATIBLE(default, null) : Int;
	
	public static var REQUIRE_SPECIFICATION_UPGRADE(default, null) : Int;
	
	public static var REQUIRE_IMPLEMENTATION_UPGRADE(default, null) : Int;
	
	public static var REQUIRE_VENDOR_SWITCH(default, null) : Int;
	
	public static var INCOMPATIBLE(default, null) : Int;
	
	/**
	* <p>
	* attributes fully describer an extension. The underlying described
	* extension may be installed and requested.
	* <p>
	*/
	public var title : String;
	
	public var name : String;
	
	public var specVersion : String;
	
	public var specVendor : String;
	
	public var implementationVersion : String;
	
	public var vendor : String;
	
	public var vendorId : String;
	
	public var url : String;
	
	/**
	* <p>
	* Create a new uninitialized extension information object
	* </p>
	*/
	@:overload public function new() : Void;
	
	/**
	* <p>
	* Create and initialize an extension information object.
	* The initialization uses the attributes passed as being
	* the content of a manifest file to load the extension
	* information from.
	* Since manifest file may contain information on several
	* extension they may depend on, the extension key parameter
	* is prepanded to the attribute name to make the key used
	* to retrieve the attribute from the manifest file
	* <p>
	* @param extensionKey unique extension key in the manifest
	* @param attr Attributes of a manifest file
	*/
	@:overload public function new(extensionKey : String, attr : java.util.jar.Attributes) : Void;
	
	/**
	* <p>
	* @return true if the extension described by this extension information
	* is compatible with the extension described by the extension
	* information passed as a parameter
	* </p>
	*
	* @param the requested extension information to compare to
	*/
	@:overload public function isCompatibleWith(ei : sun.misc.ExtensionInfo) : Int;
	
	/**
	* <p>
	* helper method to print sensible information on the undelying described
	* extension
	* </p>
	*/
	@:overload public function toString() : String;
	
	
}

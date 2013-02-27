package java.awt;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
* The <code>GraphicsConfigTemplate</code> class is used to obtain a valid
* {@link GraphicsConfiguration}.  A user instantiates one of these
* objects and then sets all non-default attributes as desired.  The
* {@link GraphicsDevice#getBestConfiguration} method found in the
* {@link GraphicsDevice} class is then called with this
* <code>GraphicsConfigTemplate</code>.  A valid
* <code>GraphicsConfiguration</code> is returned that meets or exceeds
* what was requested in the <code>GraphicsConfigTemplate</code>.
* @see GraphicsDevice
* @see GraphicsConfiguration
*
* @since       1.2
*/
@:require(java2) extern class GraphicsConfigTemplate implements java.io.Serializable
{
	/**
	* This class is an abstract class so only subclasses can be
	* instantiated.
	*/
	@:overload public function new() : Void;
	
	/**
	* Value used for "Enum" (Integer) type.  States that this
	* feature is required for the <code>GraphicsConfiguration</code>
	* object.  If this feature is not available, do not select the
	* <code>GraphicsConfiguration</code> object.
	*/
	public static var REQUIRED(default, null) : Int;
	
	/**
	* Value used for "Enum" (Integer) type.  States that this
	* feature is desired for the <code>GraphicsConfiguration</code>
	* object.  A selection with this feature is preferred over a
	* selection that does not include this feature, although both
	* selections can be considered valid matches.
	*/
	public static var PREFERRED(default, null) : Int;
	
	/**
	* Value used for "Enum" (Integer) type.  States that this
	* feature is not necessary for the selection of the
	* <code>GraphicsConfiguration</code> object.  A selection
	* without this feature is preferred over a selection that
	* includes this feature since it is not used.
	*/
	public static var UNNECESSARY(default, null) : Int;
	
	/**
	* Returns the "best" configuration possible that passes the
	* criteria defined in the <code>GraphicsConfigTemplate</code>.
	* @param gc the array of <code>GraphicsConfiguration</code>
	* objects to choose from.
	* @return a <code>GraphicsConfiguration</code> object that is
	* the best configuration possible.
	* @see GraphicsConfiguration
	*/
	@:overload @:abstract public function getBestConfiguration(gc : java.NativeArray<java.awt.GraphicsConfiguration>) : java.awt.GraphicsConfiguration;
	
	/**
	* Returns a <code>boolean</code> indicating whether or
	* not the specified <code>GraphicsConfiguration</code> can be
	* used to create a drawing surface that supports the indicated
	* features.
	* @param gc the <code>GraphicsConfiguration</code> object to test
	* @return <code>true</code> if this
	* <code>GraphicsConfiguration</code> object can be used to create
	* surfaces that support the indicated features;
	* <code>false</code> if the <code>GraphicsConfiguration</code> can
	* not be used to create a drawing surface usable by this Java(tm)
	* API.
	*/
	@:overload @:abstract public function isGraphicsConfigSupported(gc : java.awt.GraphicsConfiguration) : Bool;
	
	
}

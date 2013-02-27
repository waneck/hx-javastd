package sun.java2d;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class SurfaceManagerFactory
{
	/**
	* Returns the surface manager factory instance. This returns a factory
	* that has been set by {@link #setInstance(SurfaceManagerFactory)}.
	*
	* @return the surface manager factory
	*/
	@:overload @:synchronized public static function getInstance() : SurfaceManagerFactory;
	
	/**
	* Sets the surface manager factory. This may only be called once, and it
	* may not be set back to {@code null} when the factory is already
	* instantiated.
	*
	* @param factory the factory to set
	*/
	@:overload @:synchronized public static function setInstance(factory : SurfaceManagerFactory) : Void;
	
	/**
	* Creates a new instance of a VolatileSurfaceManager given any
	* arbitrary SunVolatileImage.  An optional context Object can be supplied
	* as a way for the caller to pass pipeline-specific context data to
	* the VolatileSurfaceManager (such as a backbuffer handle, for example).
	*/
	@:overload @:abstract public function createVolatileManager(image : sun.awt.image.SunVolatileImage, context : Dynamic) : sun.awt.image.VolatileSurfaceManager;
	
	
}

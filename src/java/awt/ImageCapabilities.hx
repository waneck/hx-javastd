package java.awt;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
* Capabilities and properties of images.
* @author Michael Martak
* @since 1.4
*/
@:require(java4) extern class ImageCapabilities implements java.lang.Cloneable
{
	/**
	* Creates a new object for specifying image capabilities.
	* @param accelerated whether or not an accelerated image is desired
	*/
	@:overload @:public public function new(accelerated : Bool) : Void;
	
	/**
	* Returns <code>true</code> if the object whose capabilities are
	* encapsulated in this <code>ImageCapabilities</code> can be or is
	* accelerated.
	* @return whether or not an image can be, or is, accelerated.  There are
	* various platform-specific ways to accelerate an image, including
	* pixmaps, VRAM, AGP.  This is the general acceleration method (as
	* opposed to residing in system memory).
	*/
	@:overload @:public public function isAccelerated() : Bool;
	
	/**
	* Returns <code>true</code> if the <code>VolatileImage</code>
	* described by this <code>ImageCapabilities</code> can lose
	* its surfaces.
	* @return whether or not a volatile image is subject to losing its surfaces
	* at the whim of the operating system.
	*/
	@:overload @:public public function isTrueVolatile() : Bool;
	
	/**
	* @return a copy of this ImageCapabilities object.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}

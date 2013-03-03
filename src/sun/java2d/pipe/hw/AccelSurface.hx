package sun.java2d.pipe.hw;
/*
* Copyright (c) 2007, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern interface AccelSurface extends sun.java2d.pipe.hw.BufferedContextProvider extends sun.java2d.Surface
{
	/**
	* Returns {@code int} representing surface's type as defined by constants
	* in this interface.
	*
	* @return an integer representing this surface's type
	* @see AccelSurface#UNDEFINED
	* @see AccelSurface#WINDOW
	* @see AccelSurface#RT_PLAIN
	* @see AccelSurface#TEXTURE
	* @see AccelSurface#FLIP_BACKBUFFER
	* @see AccelSurface#RT_TEXTURE
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* Returns a pointer to the native surface data associated with this
	* surface.
	* Note: this pointer is only valid on the rendering thread.
	*
	* @return pointer to the native surface's data
	*/
	@:overload @:public @:public public function getNativeOps() : haxe.Int64;
	
	/**
	* Returns a pointer to the real native resource
	* of the specified type associated with this AccelSurface.
	* Note: this pointer is only valid on the rendering thread.
	*
	* @param resType the type of the requested resource
	* @return a long containing a pointer to the native resource of the
	* specified type or 0L if such resource doesn't exist for this surface
	*/
	@:overload @:public public function getNativeResource(resType : Int) : haxe.Int64;
	
	/**
	* Marks this surface dirty.
	*/
	@:overload @:public @:public public function markDirty() : Void;
	
	/**
	* Returns whether the pipeline considers this surface valid. A surface
	* may become invalid if it is disposed of, or resized.
	*
	* @return true if valid, false otherwise
	*/
	@:overload @:public @:public public function isValid() : Bool;
	
	/**
	* Returns whether this surface is lost. The return value is only valid
	* on the render thread, meaning that even if this method returns
	* {@code true} it could be lost in the next moment unless it is called
	* on the rendering thread.
	*
	* @return true if the surface is known to be lost, false otherwise
	*/
	@:overload @:public @:public public function isSurfaceLost() : Bool;
	
	/**
	* Returns the requested bounds of the destination surface. The real bounds
	* of the native accelerated surface may differ. Use
	* {@link #getNativeBounds} to get the bounds of the native surface.
	*
	* @return Rectangle representing java surface's bounds
	*/
	@:overload @:public @:public public function getBounds() : java.awt.Rectangle;
	
	/**
	* Returns real bounds of the native surface, which may differ from those
	* returned by {@link #getBounds}.
	*
	* @return Rectangle representing native surface's bounds
	*/
	@:overload @:public public function getNativeBounds() : java.awt.Rectangle;
	
	
}

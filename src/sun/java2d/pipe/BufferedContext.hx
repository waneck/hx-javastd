package sun.java2d.pipe;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class BufferedContext
{
	/**
	* Indicates that no flags are needed; take all default code paths.
	*/
	public static var NO_CONTEXT_FLAGS(default, null) : Int;
	
	/**
	* Indicates that the source surface (or color value, if it is a simple
	* rendering operation) is opaque (has an alpha value of 1.0).  If this
	* flag is present, it allows us to disable blending in certain
	* situations in order to improve performance.
	*/
	public static var SRC_IS_OPAQUE(default, null) : Int;
	
	/**
	* Indicates that the operation uses an alpha mask, which may determine
	* the code path that is used when setting up the current paint state.
	*/
	public static var USE_MASK(default, null) : Int;
	
	private var rq : sun.java2d.pipe.RenderQueue;
	
	private var buf : sun.java2d.pipe.RenderBuffer;
	
	/**
	* This is a reference to the most recently validated BufferedContext.  If
	* this value is null, it means that there is no current context.  It is
	* provided here so that validate() only needs to do a quick reference
	* check to see if the BufferedContext passed to that method is the same
	* as the one we've cached here.
	*/
	private static var currentContext : sun.java2d.pipe.BufferedContext;
	
	@:overload private function new(rq : sun.java2d.pipe.RenderQueue) : Void;
	
	/**
	* Fetches the BufferedContextContext associated with the dst. surface
	* and validates the context using the given parameters.  Most rendering
	* operations will call this method first in order to set the necessary
	* state before issuing rendering commands.
	*
	* Note: must be called while the RenderQueue lock is held.
	*
	* It's assumed that the type of surfaces has been checked by the Renderer
	*
	* @throws InvalidPipeException if either src or dest surface is not valid
	* or lost
	* @see RenderQueue#lock
	* @see RenderQueue#unlock
	*/
	@:overload public static function validateContext(srcData : sun.java2d.pipe.hw.AccelSurface, dstData : sun.java2d.pipe.hw.AccelSurface, clip : sun.java2d.pipe.Region, comp : java.awt.Composite, xform : java.awt.geom.AffineTransform, paint : java.awt.Paint, sg2d : sun.java2d.SunGraphics2D, flags : Int) : Void;
	
	/**
	* Fetches the BufferedContextassociated with the surface
	* and disables all context state settings.
	*
	* Note: must be called while the RenderQueue lock is held.
	*
	* It's assumed that the type of surfaces has been checked by the Renderer
	*
	* @throws InvalidPipeException if the surface is not valid
	* or lost
	* @see RenderQueue#lock
	* @see RenderQueue#unlock
	*/
	@:overload public static function validateContext(surface : sun.java2d.pipe.hw.AccelSurface) : Void;
	
	/**
	* Validates the given parameters against the current state for this
	* context.  If this context is not current, it will be made current
	* for the given source and destination surfaces, and the viewport will
	* be updated.  Then each part of the context state (clip, composite,
	* etc.) is checked against the previous value.  If the value has changed
	* since the last call to validate(), it will be updated accordingly.
	*
	* Note that the SunGraphics2D parameter is only used for the purposes
	* of validating a (non-null) Paint parameter.  In all other cases it
	* is safe to pass a null SunGraphics2D and it will be ignored.
	*
	* Note: must be called while the RenderQueue lock is held.
	*
	* It's assumed that the type of surfaces has been checked by the Renderer
	*
	* @throws InvalidPipeException if either src or dest surface is not valid
	* or lost
	*/
	@:overload public function validate(srcData : sun.java2d.pipe.hw.AccelSurface, dstData : sun.java2d.pipe.hw.AccelSurface, clip : sun.java2d.pipe.Region, comp : java.awt.Composite, xform : java.awt.geom.AffineTransform, paint : java.awt.Paint, sg2d : sun.java2d.SunGraphics2D, flags : Int) : Void;
	
	/**
	* Invalidates the surfaces associated with this context.  This is
	* useful when the context is no longer needed, and we want to break
	* the chain caused by these surface references.
	*
	* Note: must be called while the RenderQueue lock is held.
	*
	* @see RenderQueue#lock
	* @see RenderQueue#unlock
	*/
	@:overload public function invalidateSurfaces() : Void;
	
	/**
	* Resets this context's surfaces and all attributes.
	*
	* Note: must be called while the RenderQueue lock is held.
	*
	* @see RenderQueue#lock
	* @see RenderQueue#unlock
	*/
	@:overload public function invalidateContext() : Void;
	
	/**
	* Returns a singleton {@code RenderQueue} object used by the rendering
	* pipeline.
	*
	* @return a render queue
	* @see RenderQueue
	*/
	@:overload @:abstract public function getRenderQueue() : sun.java2d.pipe.RenderQueue;
	
	/**
	* Saves the the state of this context.
	* It may reset the current context.
	*
	* Note: must be called while the RenderQueue lock is held.
	*
	* @see RenderQueue#lock
	* @see RenderQueue#unlock
	*/
	@:overload @:abstract public function saveState() : Void;
	
	/**
	* Restores the native state of this context.
	* It may reset the current context.
	*
	* Note: must be called while the RenderQueue lock is held.
	*
	* @see RenderQueue#lock
	* @see RenderQueue#unlock
	*/
	@:overload @:abstract public function restoreState() : Void;
	
	
}

package sun.java2d.opengl;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class OGLUtilities
{
	/**
	* These OGL-specific surface type constants are the same as those
	* defined in the OGLSurfaceData class and are duplicated here so that
	* clients of this API can access them more easily via reflection.
	*/
	public static var UNDEFINED(default, null) : Int;
	
	public static var WINDOW(default, null) : Int;
	
	public static var PBUFFER(default, null) : Int;
	
	public static var TEXTURE(default, null) : Int;
	
	public static var FLIP_BACKBUFFER(default, null) : Int;
	
	public static var FBOBJECT(default, null) : Int;
	
	/**
	* Returns true if the current thread is the OGL QueueFlusher thread.
	*/
	@:overload public static function isQueueFlusherThread() : Bool;
	
	/**
	* Invokes the given Runnable on the OGL QueueFlusher thread with the
	* OpenGL context corresponding to the given Graphics object made
	* current.  It is legal for OpenGL code executed in the given
	* Runnable to change the current OpenGL context; it will be reset
	* once the Runnable completes.  No guarantees are made as to the
	* state of the OpenGL context of the Graphics object; for
	* example, calling code must set the scissor box using the return
	* value from {@link #getOGLScissorBox} to avoid drawing
	* over other Swing components, and must typically set the OpenGL
	* viewport using the return value from {@link #getOGLViewport} to
	* make the client's OpenGL rendering appear in the correct place
	* relative to the scissor region.
	*
	* In order to avoid deadlock, it is important that the given Runnable
	* does not attempt to acquire the AWT lock, as that will be handled
	* automatically as part of the <code>rq.flushAndInvokeNow()</code> step.
	*
	* @param g the Graphics object for the corresponding destination surface;
	* if null, the step making a context current to the destination surface
	* will be skipped
	* @param r the action to be performed on the QFT; cannot be null
	* @return true if the operation completed successfully, or false if
	* there was any problem making a context current to the surface
	* associated with the given Graphics object
	*/
	@:overload public static function invokeWithOGLContextCurrent(g : java.awt.Graphics, r : java.lang.Runnable) : Bool;
	
	/**
	* Invokes the given Runnable on the OGL QueueFlusher thread with the
	* "shared" OpenGL context (corresponding to the given
	* GraphicsConfiguration object) made current.  This method is typically
	* used when the Runnable needs a current context to complete its
	* operation, but does not require that the context be made current to
	* a particular surface.  For example, an application may call this
	* method so that the given Runnable can query the OpenGL capabilities
	* of the given GraphicsConfiguration, without making a context current
	* to a dummy surface (or similar hacky techniques).
	*
	* In order to avoid deadlock, it is important that the given Runnable
	* does not attempt to acquire the AWT lock, as that will be handled
	* automatically as part of the <code>rq.flushAndInvokeNow()</code> step.
	*
	* @param config the GraphicsConfiguration object whose "shared"
	* context will be made current during this operation; if this value is
	* null or if OpenGL is not enabled for the GraphicsConfiguration, this
	* method will return false
	* @param r the action to be performed on the QFT; cannot be null
	* @return true if the operation completed successfully, or false if
	* there was any problem making the shared context current
	*/
	@:overload public static function invokeWithOGLSharedContextCurrent(config : java.awt.GraphicsConfiguration, r : java.lang.Runnable) : Bool;
	
	/**
	* Returns the Rectangle describing the OpenGL viewport on the
	* Java 2D surface associated with the given Graphics object and
	* component width and height. When a third-party library is
	* performing OpenGL rendering directly into the visible region of
	* the associated surface, this viewport helps the application
	* position the OpenGL output correctly on that surface.
	*
	* Note that the x/y values in the returned Rectangle object represent
	* the lower-left corner of the viewport region, relative to the
	* lower-left corner of the given surface.
	*
	* @param g the Graphics object for the corresponding destination surface;
	* cannot be null
	* @param componentWidth width of the component to be painted
	* @param componentHeight height of the component to be painted
	* @return a Rectangle describing the OpenGL viewport for the given
	* destination surface and component dimensions, or null if the given
	* Graphics object is invalid
	*/
	@:overload public static function getOGLViewport(g : java.awt.Graphics, componentWidth : Int, componentHeight : Int) : java.awt.Rectangle;
	
	/**
	* Returns the Rectangle describing the OpenGL scissor box on the
	* Java 2D surface associated with the given Graphics object.  When a
	* third-party library is performing OpenGL rendering directly
	* into the visible region of the associated surface, this scissor box
	* must be set to avoid drawing over existing rendering results.
	*
	* Note that the x/y values in the returned Rectangle object represent
	* the lower-left corner of the scissor region, relative to the
	* lower-left corner of the given surface.
	*
	* @param g the Graphics object for the corresponding destination surface;
	* cannot be null
	* @return a Rectangle describing the OpenGL scissor box for the given
	* Graphics object and corresponding destination surface, or null if the
	* given Graphics object is invalid or the clip region is non-rectangular
	*/
	@:overload public static function getOGLScissorBox(g : java.awt.Graphics) : java.awt.Rectangle;
	
	/**
	* Returns an Object identifier for the Java 2D surface associated with
	* the given Graphics object.  This identifier may be used to determine
	* whether the surface has changed since the last invocation of this
	* operation, and thereby whether the OpenGL state corresponding to the
	* old surface must be destroyed and recreated.
	*
	* @param g the Graphics object for the corresponding destination surface;
	* cannot be null
	* @return an identifier for the surface associated with the given
	* Graphics object, or null if the given Graphics object is invalid
	*/
	@:overload public static function getOGLSurfaceIdentifier(g : java.awt.Graphics) : Dynamic;
	
	/**
	* Returns one of the OGL-specific surface type constants (defined in
	* this class), which describes the surface associated with the given
	* Graphics object.
	*
	* @param g the Graphics object for the corresponding destination surface;
	* cannot be null
	* @return a constant that describes the surface associated with the
	* given Graphics object; if the given Graphics object is invalid (i.e.
	* is not associated with an OpenGL surface) this method will return
	* <code>OGLUtilities.UNDEFINED</code>
	*/
	@:overload public static function getOGLSurfaceType(g : java.awt.Graphics) : Int;
	
	/**
	* Returns the OpenGL texture target constant (either GL_TEXTURE_2D
	* or GL_TEXTURE_RECTANGLE_ARB) for the surface associated with the
	* given Graphics object.  This method is only useful for those surface
	* types that are backed by an OpenGL texture, namely {@code TEXTURE},
	* {@code FBOBJECT}, and (on Windows only) {@code PBUFFER}.
	*
	* @param g the Graphics object for the corresponding destination surface;
	* cannot be null
	* @return the texture target constant for the surface associated with the
	* given Graphics object; if the given Graphics object is invalid (i.e.
	* is not associated with an OpenGL surface), or the associated surface
	* is not backed by an OpenGL texture, this method will return zero.
	*/
	@:overload public static function getOGLTextureType(g : java.awt.Graphics) : Int;
	
	
}

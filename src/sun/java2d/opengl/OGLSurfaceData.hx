package sun.java2d.opengl;
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
/**
* This class describes an OpenGL "surface", that is, a region of pixels
* managed via OpenGL.  An OGLSurfaceData can be tagged with one of three
* different SurfaceType objects for the purpose of registering loops, etc.
* This diagram shows the hierarchy of OGL SurfaceTypes:
*
*                               Any
*                             /     \
*                 OpenGLSurface     OpenGLTexture
*                      |
*               OpenGLSurfaceRTT
*
* OpenGLSurface
* This kind of surface can be rendered to using OpenGL APIs.  It is also
* possible to copy an OpenGLSurface to another OpenGLSurface (or to itself).
* This is typically accomplished by calling MakeContextCurrent(dstSD, srcSD)
* and then calling glCopyPixels() (although there are other techniques to
* achieve the same goal).
*
* OpenGLTexture
* This kind of surface cannot be rendered to using OpenGL (in the same sense
* as in OpenGLSurface).  However, it is possible to upload a region of pixels
* to an OpenGLTexture object via glTexSubImage2D().  One can also copy a
* surface of type OpenGLTexture to an OpenGLSurface by binding the texture
* to a quad and then rendering it to the destination surface (this process
* is known as "texture mapping").
*
* OpenGLSurfaceRTT
* This kind of surface can be thought of as a sort of hybrid between
* OpenGLSurface and OpenGLTexture, in that one can render to this kind of
* surface as if it were of type OpenGLSurface, but the process of copying
* this kind of surface to another is more like an OpenGLTexture.  (Note that
* "RTT" stands for "render-to-texture".)
*
* In addition to these SurfaceType variants, we have also defined some
* constants that describe in more detail the type of underlying OpenGL
* surface.  This table helps explain the relationships between those
* "type" constants and their corresponding SurfaceType:
*
* OGL Type          Corresponding SurfaceType
* --------          -------------------------
* WINDOW            OpenGLSurface
* PBUFFER           OpenGLSurface
* TEXTURE           OpenGLTexture
* FLIP_BACKBUFFER   OpenGLSurface
* FBOBJECT          OpenGLSurfaceRTT
*/
extern class OGLSurfaceData extends sun.java2d.SurfaceData implements sun.java2d.pipe.hw.AccelSurface
{
	/**
	* OGL-specific surface types
	*
	* @see sun.java2d.pipe.hw.AccelSurface
	*/
	public static var PBUFFER(default, null) : Int;
	
	public static var FBOBJECT(default, null) : Int;
	
	/**
	* Pixel formats
	*/
	public static var PF_INT_ARGB(default, null) : Int;
	
	public static var PF_INT_ARGB_PRE(default, null) : Int;
	
	public static var PF_INT_RGB(default, null) : Int;
	
	public static var PF_INT_RGBX(default, null) : Int;
	
	public static var PF_INT_BGR(default, null) : Int;
	
	public static var PF_INT_BGRX(default, null) : Int;
	
	public static var PF_USHORT_565_RGB(default, null) : Int;
	
	public static var PF_USHORT_555_RGB(default, null) : Int;
	
	public static var PF_USHORT_555_RGBX(default, null) : Int;
	
	public static var PF_BYTE_GRAY(default, null) : Int;
	
	public static var PF_USHORT_GRAY(default, null) : Int;
	
	public static var PF_3BYTE_BGR(default, null) : Int;
	
	private var type : Int;
	
	private static var oglRenderPipe : sun.java2d.opengl.OGLRenderer;
	
	private static var oglTxRenderPipe : sun.java2d.pipe.PixelToParallelogramConverter;
	
	private static var oglAAPgramPipe : sun.java2d.pipe.ParallelogramPipe;
	
	private static var oglTextPipe : sun.java2d.opengl.OGLTextRenderer;
	
	private static var oglImagePipe : sun.java2d.opengl.OGLDrawImage;
	
	@:overload @:native private function initTexture(pData : haxe.Int64, isOpaque : Bool, texNonPow2 : Bool, texRect : Bool, width : Int, height : Int) : Bool;
	
	@:overload @:native private function initFBObject(pData : haxe.Int64, isOpaque : Bool, texNonPow2 : Bool, texRect : Bool, width : Int, height : Int) : Bool;
	
	@:overload @:native private function initFlipBackbuffer(pData : haxe.Int64) : Bool;
	
	@:overload @:abstract private function initPbuffer(pData : haxe.Int64, pConfigInfo : haxe.Int64, isOpaque : Bool, width : Int, height : Int) : Bool;
	
	@:overload private function new(gc : sun.java2d.opengl.OGLGraphicsConfig, cm : java.awt.image.ColorModel, type : Int) : Void;
	
	@:overload public function makeProxyFor(srcData : sun.java2d.SurfaceData) : sun.java2d.SurfaceDataProxy;
	
	/**
	* Initializes the appropriate OpenGL offscreen surface based on the value
	* of the type parameter.  If the surface creation fails for any reason,
	* an OutOfMemoryError will be thrown.
	*/
	@:overload private function initSurface(width : Int, height : Int) : Void;
	
	/**
	* Returns the OGLContext for the GraphicsConfig associated with this
	* surface.
	*/
	@:overload @:final public function getContext() : sun.java2d.opengl.OGLContext;
	
	/**
	* Returns one of the surface type constants defined above.
	*/
	@:overload @:final public function getType() : Int;
	
	/**
	* If this surface is backed by a texture object, returns the target
	* for that texture (either GL_TEXTURE_2D or GL_TEXTURE_RECTANGLE_ARB).
	* Otherwise, this method will return zero.
	*/
	@:overload @:final public function getTextureTarget() : Int;
	
	/**
	* If this surface is backed by a texture object, returns the texture ID
	* for that texture.
	* Otherwise, this method will return zero.
	*/
	@:overload @:final public function getTextureID() : Int;
	
	/**
	* Returns native resource of specified {@code resType} associated with
	* this surface.
	*
	* Specifically, for {@code OGLSurfaceData} this method returns the
	* the following:
	* <pre>
	* TEXTURE              - texture id
	* </pre>
	*
	* Note: the resource returned by this method is only valid on the rendering
	* thread.
	*
	* @return native resource of specified type or 0L if
	* such resource doesn't exist or can not be retrieved.
	* @see sun.java2d.pipe.hw.AccelSurface#getNativeResource
	*/
	@:overload public function getNativeResource(resType : Int) : haxe.Int64;
	
	@:overload override public function getRaster(x : Int, y : Int, w : Int, h : Int) : java.awt.image.Raster;
	
	/**
	* For now, we can only render LCD text if:
	*   - the fragment shader extension is available, and
	*   - blending is disabled, and
	*   - the source color is opaque
	*   - and the destination is opaque
	*
	* Eventually, we could enhance the native OGL text rendering code
	* and remove the above restrictions, but that would require significantly
	* more code just to support a few uncommon cases.
	*/
	@:overload override public function canRenderLCDText(sg2d : sun.java2d.SunGraphics2D) : Bool;
	
	@:overload override public function validatePipe(sg2d : sun.java2d.SunGraphics2D) : Void;
	
	@:overload override private function getMaskFill(sg2d : sun.java2d.SunGraphics2D) : sun.java2d.loops.MaskFill;
	
	@:overload override public function copyArea(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int, dx : Int, dy : Int) : Bool;
	
	@:overload override public function flush() : Void;
	
	@:overload public function getNativeBounds() : java.awt.Rectangle;
	
	/**
	* Returns whether this surface is lost. The return value is only valid
	* on the render thread, meaning that even if this method returns
	* {@code true} it could be lost in the next moment unless it is called
	* on the rendering thread.
	*
	* @return true if the surface is known to be lost, false otherwise
	*/
	@:overload @:public override public function isSurfaceLost() : Bool;
	
	/**
	* Returns a pointer to the native surface data associated with this
	* surface.
	* Note: this pointer is only valid on the rendering thread.
	*
	* @return pointer to the native surface's data
	*/
	@:overload @:public override public function getNativeOps() : haxe.Int64;
	
	/**
	* Returns whether the pipeline considers this surface valid. A surface
	* may become invalid if it is disposed of, or resized.
	*
	* @return true if valid, false otherwise
	*/
	@:overload @:public override public function isValid() : Bool;
	
	/**
	* Returns the requested bounds of the destination surface. The real bounds
	* of the native accelerated surface may differ. Use
	* {@link #getNativeBounds} to get the bounds of the native surface.
	*
	* @return Rectangle representing java surface's bounds
	*/
	@:overload @:public override public function getBounds() : java.awt.Rectangle;
	
	/**
	* Marks this surface dirty.
	*/
	@:overload @:public override public function markDirty() : Void;
	
	
}

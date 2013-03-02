package java.awt.image.renderable;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
/* ********************************************************************
**********************************************************************
**********************************************************************
*** COPYRIGHT (c) Eastman Kodak Company, 1997                      ***
*** As  an unpublished  work pursuant to Title 17 of the United    ***
*** States Code.  All rights reserved.                             ***
**********************************************************************
**********************************************************************
**********************************************************************/
/**
* A RenderableImage is a common interface for rendering-independent
* images (a notion which subsumes resolution independence).  That is,
* images which are described and have operations applied to them
* independent of any specific rendering of the image.  For example, a
* RenderableImage can be rotated and cropped in
* resolution-independent terms.  Then, it can be rendered for various
* specific contexts, such as a draft preview, a high-quality screen
* display, or a printer, each in an optimal fashion.
*
* <p> A RenderedImage is returned from a RenderableImage via the
* createRendering() method, which takes a RenderContext.  The
* RenderContext specifies how the RenderedImage should be
* constructed.  Note that it is not possible to extract pixels
* directly from a RenderableImage.
*
* <p> The createDefaultRendering() and createScaledRendering() methods are
* convenience methods that construct an appropriate RenderContext
* internally.  All of the rendering methods may return a reference to a
* previously produced rendering.
*/
extern interface RenderableImage
{
	/**
	* Returns a vector of RenderableImages that are the sources of
	* image data for this RenderableImage. Note that this method may
	* return an empty vector, to indicate that the image has no sources,
	* or null, to indicate that no information is available.
	*
	* @return a (possibly empty) Vector of RenderableImages, or null.
	*/
	@:overload public function getSources() : java.util.Vector<java.awt.image.renderable.RenderableImage>;
	
	/**
	* Gets a property from the property set of this image.
	* If the property name is not recognized, java.awt.Image.UndefinedProperty
	* will be returned.
	*
	* @param name the name of the property to get, as a String.
	* @return a reference to the property Object, or the value
	*         java.awt.Image.UndefinedProperty.
	*/
	@:overload public function getProperty(name : String) : Dynamic;
	
	/**
	* Returns a list of names recognized by getProperty.
	* @return a list of property names.
	*/
	@:overload public function getPropertyNames() : java.NativeArray<String>;
	
	/**
	* Returns true if successive renderings (that is, calls to
	* createRendering() or createScaledRendering()) with the same arguments
	* may produce different results.  This method may be used to
	* determine whether an existing rendering may be cached and
	* reused.  It is always safe to return true.
	* @return <code>true</code> if successive renderings with the
	*         same arguments might produce different results;
	*         <code>false</code> otherwise.
	*/
	@:overload public function isDynamic() : Bool;
	
	/**
	* Gets the width in user coordinate space.  By convention, the
	* usual width of a RenderableImage is equal to the image's aspect
	* ratio (width divided by height).
	*
	* @return the width of the image in user coordinates.
	*/
	@:overload public function getWidth() : Single;
	
	/**
	* Gets the height in user coordinate space.  By convention, the
	* usual height of a RenderedImage is equal to 1.0F.
	*
	* @return the height of the image in user coordinates.
	*/
	@:overload public function getHeight() : Single;
	
	/**
	* Gets the minimum X coordinate of the rendering-independent image data.
	* @return the minimum X coordinate of the rendering-independent image
	* data.
	*/
	@:overload public function getMinX() : Single;
	
	/**
	* Gets the minimum Y coordinate of the rendering-independent image data.
	* @return the minimum Y coordinate of the rendering-independent image
	* data.
	*/
	@:overload public function getMinY() : Single;
	
	/**
	* Creates a RenderedImage instance of this image with width w, and
	* height h in pixels.  The RenderContext is built automatically
	* with an appropriate usr2dev transform and an area of interest
	* of the full image.  All the rendering hints come from hints
	* passed in.
	*
	* <p> If w == 0, it will be taken to equal
	* Math.round(h*(getWidth()/getHeight())).
	* Similarly, if h == 0, it will be taken to equal
	* Math.round(w*(getHeight()/getWidth())).  One of
	* w or h must be non-zero or else an IllegalArgumentException
	* will be thrown.
	*
	* <p> The created RenderedImage may have a property identified
	* by the String HINTS_OBSERVED to indicate which RenderingHints
	* were used to create the image.  In addition any RenderedImages
	* that are obtained via the getSources() method on the created
	* RenderedImage may have such a property.
	*
	* @param w the width of rendered image in pixels, or 0.
	* @param h the height of rendered image in pixels, or 0.
	* @param hints a RenderingHints object containg hints.
	* @return a RenderedImage containing the rendered data.
	*/
	@:overload public function createScaledRendering(w : Int, h : Int, hints : java.awt.RenderingHints) : java.awt.image.RenderedImage;
	
	/**
	* Returnd a RenderedImage instance of this image with a default
	* width and height in pixels.  The RenderContext is built
	* automatically with an appropriate usr2dev transform and an area
	* of interest of the full image.  The rendering hints are
	* empty.  createDefaultRendering may make use of a stored
	* rendering for speed.
	*
	* @return a RenderedImage containing the rendered data.
	*/
	@:overload public function createDefaultRendering() : java.awt.image.RenderedImage;
	
	/**
	* Creates a RenderedImage that represented a rendering of this image
	* using a given RenderContext.  This is the most general way to obtain a
	* rendering of a RenderableImage.
	*
	* <p> The created RenderedImage may have a property identified
	* by the String HINTS_OBSERVED to indicate which RenderingHints
	* (from the RenderContext) were used to create the image.
	* In addition any RenderedImages
	* that are obtained via the getSources() method on the created
	* RenderedImage may have such a property.
	*
	* @param renderContext the RenderContext to use to produce the rendering.
	* @return a RenderedImage containing the rendered data.
	*/
	@:overload public function createRendering(renderContext : java.awt.image.renderable.RenderContext) : java.awt.image.RenderedImage;
	
	
}

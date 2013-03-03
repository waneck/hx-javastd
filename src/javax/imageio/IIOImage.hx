package javax.imageio;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class IIOImage
{
	/**
	* The <code>RenderedImage</code> being referenced.
	*/
	@:protected private var image : java.awt.image.RenderedImage;
	
	/**
	* The <code>Raster</code> being referenced.
	*/
	@:protected private var raster : java.awt.image.Raster;
	
	/**
	* A <code>List</code> of <code>BufferedImage</code> thumbnails,
	* or <code>null</code>.  Non-<code>BufferedImage</code> objects
	* must not be stored in this <code>List</code>.
	*/
	@:protected private var thumbnails : java.util.List<java.awt.image.BufferedImage>;
	
	/**
	* An <code>IIOMetadata</code> object containing metadata
	* associated with the image.
	*/
	@:protected private var metadata : javax.imageio.metadata.IIOMetadata;
	
	/**
	* Constructs an <code>IIOImage</code> containing a
	* <code>RenderedImage</code>, and thumbnails and metadata
	* associated with it.
	*
	* <p> All parameters are stored by reference.
	*
	* <p> The <code>thumbnails</code> argument must either be
	* <code>null</code> or contain only <code>BufferedImage</code>
	* objects.
	*
	* @param image a <code>RenderedImage</code>.
	* @param thumbnails a <code>List</code> of <code>BufferedImage</code>s,
	* or <code>null</code>.
	* @param metadata an <code>IIOMetadata</code> object, or
	* <code>null</code>.
	*
	* @exception IllegalArgumentException if <code>image</code> is
	* <code>null</code>.
	*/
	@:overload @:public public function new(image : java.awt.image.RenderedImage, thumbnails : java.util.List<java.awt.image.BufferedImage>, metadata : javax.imageio.metadata.IIOMetadata) : Void;
	
	/**
	* Constructs an <code>IIOImage</code> containing a
	* <code>Raster</code>, and thumbnails and metadata
	* associated with it.
	*
	* <p> All parameters are stored by reference.
	*
	* @param raster a <code>Raster</code>.
	* @param thumbnails a <code>List</code> of <code>BufferedImage</code>s,
	* or <code>null</code>.
	* @param metadata an <code>IIOMetadata</code> object, or
	* <code>null</code>.
	*
	* @exception IllegalArgumentException if <code>raster</code> is
	* <code>null</code>.
	*/
	@:overload @:public public function new(raster : java.awt.image.Raster, thumbnails : java.util.List<java.awt.image.BufferedImage>, metadata : javax.imageio.metadata.IIOMetadata) : Void;
	
	/**
	* Returns the currently set <code>RenderedImage</code>, or
	* <code>null</code> if only a <code>Raster</code> is available.
	*
	* @return a <code>RenderedImage</code>, or <code>null</code>.
	*
	* @see #setRenderedImage
	*/
	@:overload @:public public function getRenderedImage() : java.awt.image.RenderedImage;
	
	/**
	* Sets the current <code>RenderedImage</code>.  The value is
	* stored by reference.  Any existing <code>Raster</code> is
	* discarded.
	*
	* @param image a <code>RenderedImage</code>.
	*
	* @exception IllegalArgumentException if <code>image</code> is
	* <code>null</code>.
	*
	* @see #getRenderedImage
	*/
	@:overload @:public public function setRenderedImage(image : java.awt.image.RenderedImage) : Void;
	
	/**
	* Returns <code>true</code> if this <code>IIOImage</code> stores
	* a <code>Raster</code> rather than a <code>RenderedImage</code>.
	*
	* @return <code>true</code> if a <code>Raster</code> is
	* available.
	*/
	@:overload @:public public function hasRaster() : Bool;
	
	/**
	* Returns the currently set <code>Raster</code>, or
	* <code>null</code> if only a <code>RenderedImage</code> is
	* available.
	*
	* @return a <code>Raster</code>, or <code>null</code>.
	*
	* @see #setRaster
	*/
	@:overload @:public public function getRaster() : java.awt.image.Raster;
	
	/**
	* Sets the current <code>Raster</code>.  The value is
	* stored by reference.  Any existing <code>RenderedImage</code> is
	* discarded.
	*
	* @param raster a <code>Raster</code>.
	*
	* @exception IllegalArgumentException if <code>raster</code> is
	* <code>null</code>.
	*
	* @see #getRaster
	*/
	@:overload @:public public function setRaster(raster : java.awt.image.Raster) : Void;
	
	/**
	* Returns the number of thumbnails stored in this
	* <code>IIOImage</code>.
	*
	* @return the number of thumbnails, as an <code>int</code>.
	*/
	@:overload @:public public function getNumThumbnails() : Int;
	
	/**
	* Returns a thumbnail associated with the main image.
	*
	* @param index the index of the desired thumbnail image.
	*
	* @return a thumbnail image, as a <code>BufferedImage</code>.
	*
	* @exception IndexOutOfBoundsException if the supplied index is
	* negative or larger than the largest valid index.
	* @exception ClassCastException if a
	* non-<code>BufferedImage</code> object is encountered in the
	* list of thumbnails at the given index.
	*
	* @see #getThumbnails
	* @see #setThumbnails
	*/
	@:overload @:public public function getThumbnail(index : Int) : java.awt.image.BufferedImage;
	
	/**
	* Returns the current <code>List</code> of thumbnail
	* <code>BufferedImage</code>s, or <code>null</code> if none is
	* set.  A live reference is returned.
	*
	* @return the current <code>List</code> of
	* <code>BufferedImage</code> thumbnails, or <code>null</code>.
	*
	* @see #getThumbnail(int)
	* @see #setThumbnails
	*/
	@:overload @:public public function getThumbnails() : java.util.List<java.awt.image.BufferedImage>;
	
	/**
	* Sets the list of thumbnails to a new <code>List</code> of
	* <code>BufferedImage</code>s, or to <code>null</code>.  The
	* reference to the previous <code>List</code> is discarded.
	*
	* <p> The <code>thumbnails</code> argument must either be
	* <code>null</code> or contain only <code>BufferedImage</code>
	* objects.
	*
	* @param thumbnails a <code>List</code> of
	* <code>BufferedImage</code> thumbnails, or <code>null</code>.
	*
	* @see #getThumbnail(int)
	* @see #getThumbnails
	*/
	@:overload @:public public function setThumbnails(thumbnails : java.util.List<java.awt.image.BufferedImage>) : Void;
	
	/**
	* Returns a reference to the current <code>IIOMetadata</code>
	* object, or <code>null</code> is none is set.
	*
	* @return an <code>IIOMetadata</code> object, or <code>null</code>.
	*
	* @see #setMetadata
	*/
	@:overload @:public public function getMetadata() : javax.imageio.metadata.IIOMetadata;
	
	/**
	* Sets the <code>IIOMetadata</code> to a new object, or
	* <code>null</code>.
	*
	* @param metadata an <code>IIOMetadata</code> object, or
	* <code>null</code>.
	*
	* @see #getMetadata
	*/
	@:overload @:public public function setMetadata(metadata : javax.imageio.metadata.IIOMetadata) : Void;
	
	
}

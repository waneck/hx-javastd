package javax.swing.text.html;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
* View of an Image, intended to support the HTML &lt;IMG&gt; tag.
* Supports scaling via the HEIGHT and WIDTH attributes of the tag.
* If the image is unable to be loaded any text specified via the
* <code>ALT</code> attribute will be rendered.
* <p>
* While this class has been part of swing for a while now, it is public
* as of 1.4.
*
* @author  Scott Violet
* @see IconView
* @since 1.4
*/
@:require(java4) extern class ImageView extends javax.swing.text.View
{
	/**
	* Creates a new view that represents an IMG element.
	*
	* @param elem the element to create a view for
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Returns the text to display if the image can't be loaded. This is
	* obtained from the Elements attribute set with the attribute name
	* <code>HTML.Attribute.ALT</code>.
	*/
	@:overload public function getAltText() : String;
	
	/**
	* Return a URL for the image source,
	* or null if it could not be determined.
	*/
	@:overload public function getImageURL() : java.net.URL;
	
	/**
	* Returns the icon to use if the image couldn't be found.
	*/
	@:overload public function getNoImageIcon() : javax.swing.Icon;
	
	/**
	* Returns the icon to use while in the process of loading the image.
	*/
	@:overload public function getLoadingImageIcon() : javax.swing.Icon;
	
	/**
	* Returns the image to render.
	*/
	@:overload public function getImage() : java.awt.Image;
	
	/**
	* Sets how the image is loaded. If <code>newValue</code> is true,
	* the image we be loaded when first asked for, otherwise it will
	* be loaded asynchronously. The default is to not load synchronously,
	* that is to load the image asynchronously.
	*/
	@:overload public function setLoadsSynchronously(newValue : Bool) : Void;
	
	/**
	* Returns true if the image should be loaded when first asked for.
	*/
	@:overload public function getLoadsSynchronously() : Bool;
	
	/**
	* Convenience method to get the StyleSheet.
	*/
	@:overload private function getStyleSheet() : javax.swing.text.html.StyleSheet;
	
	/**
	* Fetches the attributes to use when rendering.  This is
	* implemented to multiplex the attributes specified in the
	* model with a StyleSheet.
	*/
	@:overload public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* For images the tooltip text comes from text specified with the
	* <code>ALT</code> attribute. This is overriden to return
	* <code>getAltText</code>.
	*
	* @see JTextComponent#getToolTipText
	*/
	@:overload public function getToolTipText(x : Single, y : Single, allocation : java.awt.Shape) : String;
	
	/**
	* Update any cached values that come from attributes.
	*/
	@:overload private function setPropertiesFromAttributes() : Void;
	
	/**
	* Establishes the parent view for this view.
	* Seize this moment to cache the AWT Container I'm in.
	*/
	@:overload public function setParent(parent : javax.swing.text.View) : Void;
	
	/**
	* Invoked when the Elements attributes have changed. Recreates the image.
	*/
	@:overload public function changedUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Paints the View.
	*
	* @param g the rendering surface to use
	* @param a the allocated region to render into
	* @see View#paint
	*/
	@:overload public function paint(g : java.awt.Graphics, a : java.awt.Shape) : Void;
	
	/**
	* Determines the preferred span for this view along an
	* axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return   the span the view would like to be rendered into;
	*           typically the view is told to render into the span
	*           that is returned, although there is no guarantee;
	*           the parent may choose to resize or break the view
	*/
	@:overload public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the desired alignment for this view along an
	* axis.  This is implemented to give the alignment to the
	* bottom of the icon along the y axis, and the default
	* along the x axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the desired alignment; this should be a value
	*   between 0.0 and 1.0 where 0 indicates alignment at the
	*   origin and 1.0 indicates alignment to the full span
	*   away from the origin; an alignment of 0.5 would be the
	*   center of the view
	*/
	@:overload public function getAlignment(axis : Int) : Single;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param pos the position to convert
	* @param a the allocated region to render into
	* @return the bounding box of the given position
	* @exception BadLocationException  if the given position does not represent a
	*   valid location in the associated document
	* @see View#modelToView
	*/
	@:overload public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param x the X coordinate
	* @param y the Y coordinate
	* @param a the allocated region to render into
	* @return the location within the model that best represents the
	*  given point of view
	* @see View#viewToModel
	*/
	@:overload public function viewToModel(x : Single, y : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Sets the size of the view.  This should cause
	* layout of the view if it has any layout duties.
	*
	* @param width the width >= 0
	* @param height the height >= 0
	*/
	@:overload public function setSize(width : Single, height : Single) : Void;
	
	
}
/**
* ImageHandler implements the ImageObserver to correctly update the
* display as new parts of the image become available.
*/
@:native('javax$swing$text$html$ImageView$ImageHandler') @:internal extern class ImageView_ImageHandler implements java.awt.image.ImageObserver
{
	@:overload public function imageUpdate(img : java.awt.Image, flags : Int, x : Int, y : Int, newWidth : Int, newHeight : Int) : Bool;
	
	
}
/**
* ImageLabelView is used if the image can't be loaded, and
* the attribute specified an alt attribute. It overriden a handle of
* methods as the text is hardcoded and does not come from the document.
*/
@:native('javax$swing$text$html$ImageView$ImageLabelView') @:internal extern class ImageView_ImageLabelView extends javax.swing.text.html.InlineView
{
	@:overload public function reset(text : String) : Void;
	
	@:overload override public function paint(g : java.awt.Graphics, a : java.awt.Shape) : Void;
	
	@:overload override public function getText(p0 : Int, p1 : Int) : javax.swing.text.Segment;
	
	@:overload override public function getStartOffset() : Int;
	
	@:overload override public function getEndOffset() : Int;
	
	@:overload override public function breakView(axis : Int, p0 : Int, pos : Single, len : Single) : javax.swing.text.View;
	
	@:overload override public function getForeground() : java.awt.Color;
	
	
}

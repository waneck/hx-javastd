package javax.swing.plaf.nimbus;
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
@:internal extern class LoweredBorder extends javax.swing.plaf.nimbus.AbstractRegionPainter implements javax.swing.border.Border
{
	@:overload private function getExtendedCacheKeys(c : javax.swing.JComponent) : java.NativeArray<Dynamic>;
	
	/**
	* Actually performs the painting operation. Subclasses must implement this
	* method. The graphics object passed may represent the actual surface being
	* rendererd to, or it may be an intermediate buffer. It has also been
	* pre-translated. Simply render the component as if it were located at 0, 0
	* and had a width of <code>width</code> and a height of
	* <code>height</code>. For performance reasons, you may want to read the
	* clip from the Graphics2D object and only render within that space.
	*
	* @param g      The Graphics2D surface to paint to
	* @param c      The JComponent related to the drawing event. For example,
	*               if the region being rendered is Button, then <code>c</code>
	*               will be a JButton. If the region being drawn is
	*               ScrollBarSlider, then the component will be JScrollBar.
	*               This value may be null.
	* @param width  The width of the region to paint. Note that in the case of
	*               painting the foreground, this value may differ from
	*               c.getWidth().
	* @param height The height of the region to paint. Note that in the case of
	*               painting the foreground, this value may differ from
	*               c.getHeight().
	*/
	@:overload private function doPaint(g : java.awt.Graphics2D, c : javax.swing.JComponent, width : Int, height : Int, extendedCacheKeys : java.NativeArray<Dynamic>) : Void;
	
	/**
	* <p>Gets the PaintContext for this painting operation. This method is
	* called on every paint, and so should be fast and produce no garbage. The
	* PaintContext contains information such as cache hints. It also contains
	* data necessary for decoding points at runtime, such as the stretching
	* insets, the canvas size at which the encoded points were defined, and
	* whether the stretching insets are inverted.</p>
	* <p/>
	* <p> This method allows for subclasses to package the painting of
	* different states with possibly different canvas sizes, etc, into one
	* AbstractRegionPainter implementation.</p>
	*
	* @return a PaintContext associated with this paint operation.
	*/
	@:overload private function getPaintContext() : javax.swing.plaf.nimbus.AbstractRegionPainter.AbstractRegionPainter_PaintContext;
	
	/**
	* Returns the insets of the border.
	*
	* @param c the component for which this border insets value applies
	*/
	@:overload public function getBorderInsets(c : java.awt.Component) : java.awt.Insets;
	
	/**
	* Returns whether or not the border is opaque.  If the border is opaque, it
	* is responsible for filling in it's own background when painting.
	*/
	@:overload public function isBorderOpaque() : Bool;
	
	/**
	* Paints the border for the specified component with the specified position
	* and size.
	*
	* @param c      the component for which this border is being painted
	* @param g      the paint graphics
	* @param x      the x position of the painted border
	* @param y      the y position of the painted border
	* @param width  the width of the painted border
	* @param height the height of the painted border
	*/
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	
}

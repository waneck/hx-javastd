package sun.print;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ProxyGraphics2D extends java.awt.Graphics2D implements java.awt.print.PrinterGraphics
{
	/**
	* The new ProxyGraphics2D will forward all graphics
	* calls to 'graphics'.
	*/
	@:overload public function new(graphics : java.awt.Graphics2D, printerJob : java.awt.print.PrinterJob) : Void;
	
	/**
	* Return the Graphics2D object that does the drawing
	* for this instance.
	*/
	@:overload public function getDelegate() : java.awt.Graphics2D;
	
	/**
	* Set the Graphics2D instance which will do the
	* drawing.
	*/
	@:overload public function setDelegate(graphics : java.awt.Graphics2D) : Void;
	
	@:overload public function getPrinterJob() : java.awt.print.PrinterJob;
	
	/**
	* Returns the device configuration associated with this Graphics2D.
	*/
	@:overload override public function getDeviceConfiguration() : java.awt.GraphicsConfiguration;
	
	/**
	* Creates a new <code>Graphics</code> object that is
	* a copy of this <code>Graphics</code> object.
	* @return     a new graphics context that is a copy of
	*                       this graphics context.
	* @since      JDK1.0
	*/
	@:require(java0) @:overload public function create() : java.awt.Graphics;
	
	/**
	* Translates the origin of the graphics context to the point
	* (<i>x</i>,&nbsp;<i>y</i>) in the current coordinate system.
	* Modifies this graphics context so that its new origin corresponds
	* to the point (<i>x</i>,&nbsp;<i>y</i>) in this graphics context's
	* original coordinate system.  All coordinates used in subsequent
	* rendering operations on this graphics context will be relative
	* to this new origin.
	* @param  x   the <i>x</i> coordinate.
	* @param  y   the <i>y</i> coordinate.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload override public function translate(x : Int, y : Int) : Void;
	
	/**
	* Concatenates the current transform of this Graphics2D with a
	* translation transformation.
	* This is equivalent to calling transform(T), where T is an
	* AffineTransform represented by the following matrix:
	* <pre>
	*          [   1    0    tx  ]
	*          [   0    1    ty  ]
	*          [   0    0    1   ]
	* </pre>
	*/
	@:overload override public function translate(tx : Float, ty : Float) : Void;
	
	/**
	* Concatenates the current transform of this Graphics2D with a
	* rotation transformation.
	* This is equivalent to calling transform(R), where R is an
	* AffineTransform represented by the following matrix:
	* <pre>
	*          [   cos(theta)    -sin(theta)    0   ]
	*          [   sin(theta)     cos(theta)    0   ]
	*          [       0              0         1   ]
	* </pre>
	* Rotating with a positive angle theta rotates points on the positive
	* x axis toward the positive y axis.
	* @param theta The angle of rotation in radians.
	*/
	@:overload override public function rotate(theta : Float) : Void;
	
	/**
	* Concatenates the current transform of this Graphics2D with a
	* translated rotation transformation.
	* This is equivalent to the following sequence of calls:
	* <pre>
	*          translate(x, y);
	*          rotate(theta);
	*          translate(-x, -y);
	* </pre>
	* Rotating with a positive angle theta rotates points on the positive
	* x axis toward the positive y axis.
	* @param theta The angle of rotation in radians.
	* @param x The x coordinate of the origin of the rotation
	* @param y The x coordinate of the origin of the rotation
	*/
	@:overload override public function rotate(theta : Float, x : Float, y : Float) : Void;
	
	/**
	* Concatenates the current transform of this Graphics2D with a
	* scaling transformation.
	* This is equivalent to calling transform(S), where S is an
	* AffineTransform represented by the following matrix:
	* <pre>
	*          [   sx   0    0   ]
	*          [   0    sy   0   ]
	*          [   0    0    1   ]
	* </pre>
	*/
	@:overload override public function scale(sx : Float, sy : Float) : Void;
	
	/**
	* Concatenates the current transform of this Graphics2D with a
	* shearing transformation.
	* This is equivalent to calling transform(SH), where SH is an
	* AffineTransform represented by the following matrix:
	* <pre>
	*          [   1   shx   0   ]
	*          [  shy   1    0   ]
	*          [   0    0    1   ]
	* </pre>
	* @param shx The factor by which coordinates are shifted towards the
	* positive X axis direction according to their Y coordinate
	* @param shy The factor by which coordinates are shifted towards the
	* positive Y axis direction according to their X coordinate
	*/
	@:overload override public function shear(shx : Float, shy : Float) : Void;
	
	/**
	* Gets this graphics context's current color.
	* @return    this graphics context's current color.
	* @see       java.awt.Color
	* @see       java.awt.Graphics#setColor
	* @since     JDK1.0
	*/
	@:require(java0) @:overload public function getColor() : java.awt.Color;
	
	/**
	* Sets this graphics context's current color to the specified
	* color. All subsequent graphics operations using this graphics
	* context use this specified color.
	* @param     c   the new rendering color.
	* @see       java.awt.Color
	* @see       java.awt.Graphics#getColor
	* @since     JDK1.0
	*/
	@:require(java0) @:overload public function setColor(c : java.awt.Color) : Void;
	
	/**
	* Sets the paint mode of this graphics context to overwrite the
	* destination with this graphics context's current color.
	* This sets the logical pixel operation function to the paint or
	* overwrite mode.  All subsequent rendering operations will
	* overwrite the destination with the current color.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function setPaintMode() : Void;
	
	/**
	* Sets the paint mode of this graphics context to alternate between
	* this graphics context's current color and the new specified color.
	* This specifies that logical pixel operations are performed in the
	* XOR mode, which alternates pixels between the current color and
	* a specified XOR color.
	* <p>
	* When drawing operations are performed, pixels which are the
	* current color are changed to the specified color, and vice versa.
	* <p>
	* Pixels that are of colors other than those two colors are changed
	* in an unpredictable but reversible manner; if the same figure is
	* drawn twice, then all pixels are restored to their original values.
	* @param     c1 the XOR alternation color
	* @since     JDK1.0
	*/
	@:require(java0) @:overload public function setXORMode(c1 : java.awt.Color) : Void;
	
	/**
	* Gets the current font.
	* @return    this graphics context's current font.
	* @see       java.awt.Font
	* @see       java.awt.Graphics#setFont
	* @since     JDK1.0
	*/
	@:require(java0) @:overload public function getFont() : java.awt.Font;
	
	/**
	* Sets this graphics context's font to the specified font.
	* All subsequent text operations using this graphics context
	* use this font.
	* @param  font   the font.
	* @see     java.awt.Graphics#getFont
	* @see     java.awt.Graphics#drawChars(java.lang.String, int, int)
	* @see     java.awt.Graphics#drawString(byte[], int, int, int, int)
	* @see     java.awt.Graphics#drawBytes(char[], int, int, int, int)
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function setFont(font : java.awt.Font) : Void;
	
	/**
	* Gets the font metrics for the specified font.
	* @return    the font metrics for the specified font.
	* @param     f the specified font
	* @see       java.awt.Graphics#getFont
	* @see       java.awt.FontMetrics
	* @see       java.awt.Graphics#getFontMetrics()
	* @since     JDK1.0
	*/
	@:require(java0) @:overload public function getFontMetrics(f : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Get the rendering context of the font
	* within this Graphics2D context.
	*/
	@:overload override public function getFontRenderContext() : java.awt.font.FontRenderContext;
	
	/**
	* Returns the bounding rectangle of the current clipping area.
	* The coordinates in the rectangle are relative to the coordinate
	* system origin of this graphics context.
	* @return      the bounding rectangle of the current clipping area.
	* @see         java.awt.Graphics#getClip
	* @see         java.awt.Graphics#clipRect
	* @see         java.awt.Graphics#setClip(int, int, int, int)
	* @see         java.awt.Graphics#setClip(Shape)
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function getClipBounds() : java.awt.Rectangle;
	
	/**
	* Intersects the current clip with the specified rectangle.
	* The resulting clipping area is the intersection of the current
	* clipping area and the specified rectangle.
	* This method can only be used to make the current clip smaller.
	* To set the current clip larger, use any of the setClip methods.
	* Rendering operations have no effect outside of the clipping area.
	* @param x the x coordinate of the rectangle to intersect the clip with
	* @param y the y coordinate of the rectangle to intersect the clip with
	* @param width the width of the rectangle to intersect the clip with
	* @param height the height of the rectangle to intersect the clip with
	* @see #setClip(int, int, int, int)
	* @see #setClip(Shape)
	*/
	@:overload public function clipRect(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Sets the current clip to the rectangle specified by the given
	* coordinates.
	* Rendering operations have no effect outside of the clipping area.
	* @param       x the <i>x</i> coordinate of the new clip rectangle.
	* @param       y the <i>y</i> coordinate of the new clip rectangle.
	* @param       width the width of the new clip rectangle.
	* @param       height the height of the new clip rectangle.
	* @see         java.awt.Graphics#clipRect
	* @see         java.awt.Graphics#setClip(Shape)
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function setClip(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Gets the current clipping area.
	* @return      a <code>Shape</code> object representing the
	*                      current clipping area.
	* @see         java.awt.Graphics#getClipBounds
	* @see         java.awt.Graphics#clipRect
	* @see         java.awt.Graphics#setClip(int, int, int, int)
	* @see         java.awt.Graphics#setClip(Shape)
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function getClip() : java.awt.Shape;
	
	/**
	* Sets the current clipping area to an arbitrary clip shape.
	* Not all objects which implement the <code>Shape</code>
	* interface can be used to set the clip.  The only
	* <code>Shape</code> objects which are guaranteed to be
	* supported are <code>Shape</code> objects which are
	* obtained via the <code>getClip</code> method and via
	* <code>Rectangle</code> objects.
	* @see         java.awt.Graphics#getClip()
	* @see         java.awt.Graphics#clipRect
	* @see         java.awt.Graphics#setClip(int, int, int, int)
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function setClip(clip : java.awt.Shape) : Void;
	
	/**
	* Copies an area of the component by a distance specified by
	* <code>dx</code> and <code>dy</code>. From the point specified
	* by <code>x</code> and <code>y</code>, this method
	* copies downwards and to the right.  To copy an area of the
	* component to the left or upwards, specify a negative value for
	* <code>dx</code> or <code>dy</code>.
	* If a portion of the source rectangle lies outside the bounds
	* of the component, or is obscured by another window or component,
	* <code>copyArea</code> will be unable to copy the associated
	* pixels. The area that is omitted can be refreshed by calling
	* the component's <code>paint</code> method.
	* @param       x the <i>x</i> coordinate of the source rectangle.
	* @param       y the <i>y</i> coordinate of the source rectangle.
	* @param       width the width of the source rectangle.
	* @param       height the height of the source rectangle.
	* @param       dx the horizontal distance to copy the pixels.
	* @param       dy the vertical distance to copy the pixels.
	* @since       JDK1.0
	*/
	@:require(java0) @:overload public function copyArea(x : Int, y : Int, width : Int, height : Int, dx : Int, dy : Int) : Void;
	
	/**
	* Draws a line, using the current color, between the points
	* <code>(x1,&nbsp;y1)</code> and <code>(x2,&nbsp;y2)</code>
	* in this graphics context's coordinate system.
	* @param   x1  the first point's <i>x</i> coordinate.
	* @param   y1  the first point's <i>y</i> coordinate.
	* @param   x2  the second point's <i>x</i> coordinate.
	* @param   y2  the second point's <i>y</i> coordinate.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function drawLine(x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	/**
	* Fills the specified rectangle.
	* The left and right edges of the rectangle are at
	* <code>x</code> and <code>x&nbsp;+&nbsp;width&nbsp;-&nbsp;1</code>.
	* The top and bottom edges are at
	* <code>y</code> and <code>y&nbsp;+&nbsp;height&nbsp;-&nbsp;1</code>.
	* The resulting rectangle covers an area
	* <code>width</code> pixels wide by
	* <code>height</code> pixels tall.
	* The rectangle is filled using the graphics context's current color.
	* @param         x   the <i>x</i> coordinate
	*                         of the rectangle to be filled.
	* @param         y   the <i>y</i> coordinate
	*                         of the rectangle to be filled.
	* @param         width   the width of the rectangle to be filled.
	* @param         height   the height of the rectangle to be filled.
	* @see           java.awt.Graphics#fillRect
	* @see           java.awt.Graphics#clearRect
	* @since         JDK1.0
	*/
	@:require(java0) @:overload public function fillRect(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Clears the specified rectangle by filling it with the background
	* color of the current drawing surface. This operation does not
	* use the current paint mode.
	* <p>
	* Beginning with Java&nbsp;1.1, the background color
	* of offscreen images may be system dependent. Applications should
	* use <code>setColor</code> followed by <code>fillRect</code> to
	* ensure that an offscreen image is cleared to a specific color.
	* @param       x the <i>x</i> coordinate of the rectangle to clear.
	* @param       y the <i>y</i> coordinate of the rectangle to clear.
	* @param       width the width of the rectangle to clear.
	* @param       height the height of the rectangle to clear.
	* @see         java.awt.Graphics#fillRect(int, int, int, int)
	* @see         java.awt.Graphics#drawRect
	* @see         java.awt.Graphics#setColor(java.awt.Color)
	* @see         java.awt.Graphics#setPaintMode
	* @see         java.awt.Graphics#setXORMode(java.awt.Color)
	* @since       JDK1.0
	*/
	@:require(java0) @:overload public function clearRect(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Draws an outlined round-cornered rectangle using this graphics
	* context's current color. The left and right edges of the rectangle
	* are at <code>x</code> and <code>x&nbsp;+&nbsp;width</code>,
	* respectively. The top and bottom edges of the rectangle are at
	* <code>y</code> and <code>y&nbsp;+&nbsp;height</code>.
	* @param      x the <i>x</i> coordinate of the rectangle to be drawn.
	* @param      y the <i>y</i> coordinate of the rectangle to be drawn.
	* @param      width the width of the rectangle to be drawn.
	* @param      height the height of the rectangle to be drawn.
	* @param      arcWidth the horizontal diameter of the arc
	*                    at the four corners.
	* @param      arcHeight the vertical diameter of the arc
	*                    at the four corners.
	* @see        java.awt.Graphics#fillRoundRect
	* @since      JDK1.0
	*/
	@:require(java0) @:overload public function drawRoundRect(x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	/**
	* Fills the specified rounded corner rectangle with the current color.
	* The left and right edges of the rectangle
	* are at <code>x</code> and <code>x&nbsp;+&nbsp;width&nbsp;-&nbsp;1</code>,
	* respectively. The top and bottom edges of the rectangle are at
	* <code>y</code> and <code>y&nbsp;+&nbsp;height&nbsp;-&nbsp;1</code>.
	* @param       x the <i>x</i> coordinate of the rectangle to be filled.
	* @param       y the <i>y</i> coordinate of the rectangle to be filled.
	* @param       width the width of the rectangle to be filled.
	* @param       height the height of the rectangle to be filled.
	* @param       arcWidth the horizontal diameter
	*                     of the arc at the four corners.
	* @param       arcHeight the vertical diameter
	*                     of the arc at the four corners.
	* @see         java.awt.Graphics#drawRoundRect
	* @since       JDK1.0
	*/
	@:require(java0) @:overload public function fillRoundRect(x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	/**
	* Draws the outline of an oval.
	* The result is a circle or ellipse that fits within the
	* rectangle specified by the <code>x</code>, <code>y</code>,
	* <code>width</code>, and <code>height</code> arguments.
	* <p>
	* The oval covers an area that is
	* <code>width&nbsp;+&nbsp;1</code> pixels wide
	* and <code>height&nbsp;+&nbsp;1</code> pixels tall.
	* @param       x the <i>x</i> coordinate of the upper left
	*                     corner of the oval to be drawn.
	* @param       y the <i>y</i> coordinate of the upper left
	*                     corner of the oval to be drawn.
	* @param       width the width of the oval to be drawn.
	* @param       height the height of the oval to be drawn.
	* @see         java.awt.Graphics#fillOval
	* @since       JDK1.0
	*/
	@:require(java0) @:overload public function drawOval(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Fills an oval bounded by the specified rectangle with the
	* current color.
	* @param       x the <i>x</i> coordinate of the upper left corner
	*                     of the oval to be filled.
	* @param       y the <i>y</i> coordinate of the upper left corner
	*                     of the oval to be filled.
	* @param       width the width of the oval to be filled.
	* @param       height the height of the oval to be filled.
	* @see         java.awt.Graphics#drawOval
	* @since       JDK1.0
	*/
	@:require(java0) @:overload public function fillOval(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Draws the outline of a circular or elliptical arc
	* covering the specified rectangle.
	* <p>
	* The resulting arc begins at <code>startAngle</code> and extends
	* for <code>arcAngle</code> degrees, using the current color.
	* Angles are interpreted such that 0&nbsp;degrees
	* is at the 3&nbsp;o'clock position.
	* A positive value indicates a counter-clockwise rotation
	* while a negative value indicates a clockwise rotation.
	* <p>
	* The center of the arc is the center of the rectangle whose origin
	* is (<i>x</i>,&nbsp;<i>y</i>) and whose size is specified by the
	* <code>width</code> and <code>height</code> arguments.
	* <p>
	* The resulting arc covers an area
	* <code>width&nbsp;+&nbsp;1</code> pixels wide
	* by <code>height&nbsp;+&nbsp;1</code> pixels tall.
	* @param        x the <i>x</i> coordinate of the
	*                    upper-left corner of the arc to be drawn.
	* @param        y the <i>y</i>  coordinate of the
	*                    upper-left corner of the arc to be drawn.
	* @param        width the width of the arc to be drawn.
	* @param        height the height of the arc to be drawn.
	* @param        startAngle the beginning angle.
	* @param        arcAngle the angular extent of the arc,
	*                    relative to the start angle.
	* @see         java.awt.Graphics#fillArc
	* @since       JDK1.0
	*/
	@:require(java0) @:overload public function drawArc(x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	/**
	* Fills a circular or elliptical arc covering the specified rectangle.
	* <p>
	* The resulting arc begins at <code>startAngle</code> and extends
	* for <code>arcAngle</code> degrees.
	* Angles are interpreted such that 0&nbsp;degrees
	* is at the 3&nbsp;o'clock position.
	* A positive value indicates a counter-clockwise rotation
	* while a negative value indicates a clockwise rotation.
	* <p>
	* The center of the arc is the center of the rectangle whose origin
	* is (<i>x</i>,&nbsp;<i>y</i>) and whose size is specified by the
	* <code>width</code> and <code>height</code> arguments.
	* <p>
	* The resulting arc covers an area
	* <code>width&nbsp;+&nbsp;1</code> pixels wide
	* by <code>height&nbsp;+&nbsp;1</code> pixels tall.
	* @param        x the <i>x</i> coordinate of the
	*                    upper-left corner of the arc to be filled.
	* @param        y the <i>y</i>  coordinate of the
	*                    upper-left corner of the arc to be filled.
	* @param        width the width of the arc to be filled.
	* @param        height the height of the arc to be filled.
	* @param        startAngle the beginning angle.
	* @param        arcAngle the angular extent of the arc,
	*                    relative to the start angle.
	* @see         java.awt.Graphics#drawArc
	* @since       JDK1.0
	*/
	@:require(java0) @:overload public function fillArc(x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	/**
	* Draws a sequence of connected lines defined by
	* arrays of <i>x</i> and <i>y</i> coordinates.
	* Each pair of (<i>x</i>,&nbsp;<i>y</i>) coordinates defines a point.
	* The figure is not closed if the first point
	* differs from the last point.
	* @param       xPoints an array of <i>x</i> points
	* @param       yPoints an array of <i>y</i> points
	* @param       nPoints the total number of points
	* @see         java.awt.Graphics#drawPolygon(int[], int[], int)
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function drawPolyline(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	/**
	* Draws a closed polygon defined by
	* arrays of <i>x</i> and <i>y</i> coordinates.
	* Each pair of (<i>x</i>,&nbsp;<i>y</i>) coordinates defines a point.
	* <p>
	* This method draws the polygon defined by <code>nPoint</code> line
	* segments, where the first <code>nPoint&nbsp;-&nbsp;1</code>
	* line segments are line segments from
	* <code>(xPoints[i&nbsp;-&nbsp;1],&nbsp;yPoints[i&nbsp;-&nbsp;1])</code>
	* to <code>(xPoints[i],&nbsp;yPoints[i])</code>, for
	* 1&nbsp;&le;&nbsp;<i>i</i>&nbsp;&le;&nbsp;<code>nPoints</code>.
	* The figure is automatically closed by drawing a line connecting
	* the final point to the first point, if those points are different.
	* @param        xPoints   a an array of <code>x</code> coordinates.
	* @param        yPoints   a an array of <code>y</code> coordinates.
	* @param        nPoints   a the total number of points.
	* @see          java.awt.Graphics#fillPolygon
	* @see          java.awt.Graphics#drawPolyline
	* @since        JDK1.0
	*/
	@:require(java0) @:overload public function drawPolygon(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	/**
	* Fills a closed polygon defined by
	* arrays of <i>x</i> and <i>y</i> coordinates.
	* <p>
	* This method draws the polygon defined by <code>nPoint</code> line
	* segments, where the first <code>nPoint&nbsp;-&nbsp;1</code>
	* line segments are line segments from
	* <code>(xPoints[i&nbsp;-&nbsp;1],&nbsp;yPoints[i&nbsp;-&nbsp;1])</code>
	* to <code>(xPoints[i],&nbsp;yPoints[i])</code>, for
	* 1&nbsp;&le;&nbsp;<i>i</i>&nbsp;&le;&nbsp;<code>nPoints</code>.
	* The figure is automatically closed by drawing a line connecting
	* the final point to the first point, if those points are different.
	* <p>
	* The area inside the polygon is defined using an
	* even-odd fill rule, also known as the alternating rule.
	* @param        xPoints   a an array of <code>x</code> coordinates.
	* @param        yPoints   a an array of <code>y</code> coordinates.
	* @param        nPoints   a the total number of points.
	* @see          java.awt.Graphics#drawPolygon(int[], int[], int)
	* @since        JDK1.0
	*/
	@:require(java0) @:overload public function fillPolygon(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	/**
	* Draws the text given by the specified string, using this
	* graphics context's current font and color. The baseline of the
	* first character is at position (<i>x</i>,&nbsp;<i>y</i>) in this
	* graphics context's coordinate system.
	* @param       str      the string to be drawn.
	* @param       x        the <i>x</i> coordinate.
	* @param       y        the <i>y</i> coordinate.
	* @see         java.awt.Graphics#drawBytes
	* @see         java.awt.Graphics#drawChars
	* @since       JDK1.0
	*/
	@:require(java0) @:overload override public function drawString(str : String, x : Int, y : Int) : Void;
	
	/**
	* Draws the text given by the specified iterator, using this
	* graphics context's current color. The iterator has to specify a font
	* for each character. The baseline of the
	* first character is at position (<i>x</i>,&nbsp;<i>y</i>) in this
	* graphics context's coordinate system.
	* The rendering attributes applied include the clip, transform,
	* paint or color, and composite attributes.
	* For characters in script systems such as Hebrew and Arabic,
	* the glyphs may be draw from right to left, in which case the
	* coordinate supplied is the the location of the leftmost character
	* on the baseline.
	* @param iterator the iterator whose text is to be drawn
	* @param x,y the coordinates where the iterator's text should be drawn.
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see #setTransform
	* @see #setComposite
	* @see #setClip
	*/
	@:overload override public function drawString(iterator : java.text.AttributedCharacterIterator, x : Int, y : Int) : Void;
	
	/**
	* Draws the text given by the specified iterator, using this
	* graphics context's current color. The iterator has to specify a font
	* for each character. The baseline of the
	* first character is at position (<i>x</i>,&nbsp;<i>y</i>) in this
	* graphics context's coordinate system.
	* The rendering attributes applied include the clip, transform,
	* paint or color, and composite attributes.
	* For characters in script systems such as Hebrew and Arabic,
	* the glyphs may be draw from right to left, in which case the
	* coordinate supplied is the the location of the leftmost character
	* on the baseline.
	* @param iterator the iterator whose text is to be drawn
	* @param x,y the coordinates where the iterator's text should be drawn.
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see #setTransform
	* @see #setComposite
	* @see #setClip
	*/
	@:overload override public function drawString(iterator : java.text.AttributedCharacterIterator, x : Single, y : Single) : Void;
	
	/**
	* Draws as much of the specified image as is currently available.
	* The image is drawn with its top-left corner at
	* (<i>x</i>,&nbsp;<i>y</i>) in this graphics context's coordinate
	* space. Transparent pixels in the image do not affect whatever
	* pixels are already there.
	* <p>
	* This method returns immediately in all cases, even if the
	* complete image has not yet been loaded, and it has not been dithered
	* and converted for the current output device.
	* <p>
	* If the image has not yet been completely loaded, then
	* <code>drawImage</code> returns <code>false</code>. As more of
	* the image becomes available, the process that draws the image notifies
	* the specified image observer.
	* @param    img the specified image to be drawn.
	* @param    x   the <i>x</i> coordinate.
	* @param    y   the <i>y</i> coordinate.
	* @param    observer    object to be notified as more of
	*                          the image is converted.
	* @see      java.awt.Image
	* @see      java.awt.image.ImageObserver
	* @see      java.awt.image.ImageObserver#imageUpdate(java.awt.Image, int, int, int, int, int)
	* @since    JDK1.0
	*/
	@:require(java0) @:overload public function drawImage(img : java.awt.Image, x : Int, y : Int, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draws as much of the specified image as has already been scaled
	* to fit inside the specified rectangle.
	* <p>
	* The image is drawn inside the specified rectangle of this
	* graphics context's coordinate space, and is scaled if
	* necessary. Transparent pixels do not affect whatever pixels
	* are already there.
	* <p>
	* This method returns immediately in all cases, even if the
	* entire image has not yet been scaled, dithered, and converted
	* for the current output device.
	* If the current output representation is not yet complete, then
	* <code>drawImage</code> returns <code>false</code>. As more of
	* the image becomes available, the process that draws the image notifies
	* the image observer by calling its <code>imageUpdate</code> method.
	* <p>
	* A scaled version of an image will not necessarily be
	* available immediately just because an unscaled version of the
	* image has been constructed for this output device.  Each size of
	* the image may be cached separately and generated from the original
	* data in a separate image production sequence.
	* @param    img    the specified image to be drawn.
	* @param    x      the <i>x</i> coordinate.
	* @param    y      the <i>y</i> coordinate.
	* @param    width  the width of the rectangle.
	* @param    height the height of the rectangle.
	* @param    observer    object to be notified as more of
	*                          the image is converted.
	* @see      java.awt.Image
	* @see      java.awt.image.ImageObserver
	* @see      java.awt.image.ImageObserver#imageUpdate(java.awt.Image, int, int, int, int, int)
	* @since    JDK1.0
	*/
	@:require(java0) @:overload public function drawImage(img : java.awt.Image, x : Int, y : Int, width : Int, height : Int, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draws as much of the specified image as is currently available.
	* The image is drawn with its top-left corner at
	* (<i>x</i>,&nbsp;<i>y</i>) in this graphics context's coordinate
	* space.  Transparent pixels are drawn in the specified
	* background color.
	* <p>
	* This operation is equivalent to filling a rectangle of the
	* width and height of the specified image with the given color and then
	* drawing the image on top of it, but possibly more efficient.
	* <p>
	* This method returns immediately in all cases, even if the
	* complete image has not yet been loaded, and it has not been dithered
	* and converted for the current output device.
	* <p>
	* If the image has not yet been completely loaded, then
	* <code>drawImage</code> returns <code>false</code>. As more of
	* the image becomes available, the process that draws the image notifies
	* the specified image observer.
	* @param    img    the specified image to be drawn.
	* @param    x      the <i>x</i> coordinate.
	* @param    y      the <i>y</i> coordinate.
	* @param    bgcolor the background color to paint under the
	*                         non-opaque portions of the image.
	* @param    observer    object to be notified as more of
	*                          the image is converted.
	* @see      java.awt.Image
	* @see      java.awt.image.ImageObserver
	* @see      java.awt.image.ImageObserver#imageUpdate(java.awt.Image, int, int, int, int, int)
	* @since    JDK1.0
	*/
	@:require(java0) @:overload public function drawImage(img : java.awt.Image, x : Int, y : Int, bgcolor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draws as much of the specified image as has already been scaled
	* to fit inside the specified rectangle.
	* <p>
	* The image is drawn inside the specified rectangle of this
	* graphics context's coordinate space, and is scaled if
	* necessary. Transparent pixels are drawn in the specified
	* background color.
	* This operation is equivalent to filling a rectangle of the
	* width and height of the specified image with the given color and then
	* drawing the image on top of it, but possibly more efficient.
	* <p>
	* This method returns immediately in all cases, even if the
	* entire image has not yet been scaled, dithered, and converted
	* for the current output device.
	* If the current output representation is not yet complete then
	* <code>drawImage</code> returns <code>false</code>. As more of
	* the image becomes available, the process that draws the image notifies
	* the specified image observer.
	* <p>
	* A scaled version of an image will not necessarily be
	* available immediately just because an unscaled version of the
	* image has been constructed for this output device.  Each size of
	* the image may be cached separately and generated from the original
	* data in a separate image production sequence.
	* @param    img       the specified image to be drawn.
	* @param    x         the <i>x</i> coordinate.
	* @param    y         the <i>y</i> coordinate.
	* @param    width     the width of the rectangle.
	* @param    height    the height of the rectangle.
	* @param    bgcolor   the background color to paint under the
	*                         non-opaque portions of the image.
	* @param    observer    object to be notified as more of
	*                          the image is converted.
	* @see      java.awt.Image
	* @see      java.awt.image.ImageObserver
	* @see      java.awt.image.ImageObserver#imageUpdate(java.awt.Image, int, int, int, int, int)
	* @since    JDK1.0
	*/
	@:require(java0) @:overload public function drawImage(img : java.awt.Image, x : Int, y : Int, width : Int, height : Int, bgcolor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draws as much of the specified area of the specified image as is
	* currently available, scaling it on the fly to fit inside the
	* specified area of the destination drawable surface. Transparent pixels
	* do not affect whatever pixels are already there.
	* <p>
	* This method returns immediately in all cases, even if the
	* image area to be drawn has not yet been scaled, dithered, and converted
	* for the current output device.
	* If the current output representation is not yet complete then
	* <code>drawImage</code> returns <code>false</code>. As more of
	* the image becomes available, the process that draws the image notifies
	* the specified image observer.
	* <p>
	* This method always uses the unscaled version of the image
	* to render the scaled rectangle and performs the required
	* scaling on the fly. It does not use a cached, scaled version
	* of the image for this operation. Scaling of the image from source
	* to destination is performed such that the first coordinate
	* of the source rectangle is mapped to the first coordinate of
	* the destination rectangle, and the second source coordinate is
	* mapped to the second destination coordinate. The subimage is
	* scaled and flipped as needed to preserve those mappings.
	* @param       img the specified image to be drawn
	* @param       dx1 the <i>x</i> coordinate of the first corner of the
	*                    destination rectangle.
	* @param       dy1 the <i>y</i> coordinate of the first corner of the
	*                    destination rectangle.
	* @param       dx2 the <i>x</i> coordinate of the second corner of the
	*                    destination rectangle.
	* @param       dy2 the <i>y</i> coordinate of the second corner of the
	*                    destination rectangle.
	* @param       sx1 the <i>x</i> coordinate of the first corner of the
	*                    source rectangle.
	* @param       sy1 the <i>y</i> coordinate of the first corner of the
	*                    source rectangle.
	* @param       sx2 the <i>x</i> coordinate of the second corner of the
	*                    source rectangle.
	* @param       sy2 the <i>y</i> coordinate of the second corner of the
	*                    source rectangle.
	* @param       observer object to be notified as more of the image is
	*                    scaled and converted.
	* @see         java.awt.Image
	* @see         java.awt.image.ImageObserver
	* @see         java.awt.image.ImageObserver#imageUpdate(java.awt.Image, int, int, int, int, int)
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function drawImage(img : java.awt.Image, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draws as much of the specified area of the specified image as is
	* currently available, scaling it on the fly to fit inside the
	* specified area of the destination drawable surface.
	* <p>
	* Transparent pixels are drawn in the specified background color.
	* This operation is equivalent to filling a rectangle of the
	* width and height of the specified image with the given color and then
	* drawing the image on top of it, but possibly more efficient.
	* <p>
	* This method returns immediately in all cases, even if the
	* image area to be drawn has not yet been scaled, dithered, and converted
	* for the current output device.
	* If the current output representation is not yet complete then
	* <code>drawImage</code> returns <code>false</code>. As more of
	* the image becomes available, the process that draws the image notifies
	* the specified image observer.
	* <p>
	* This method always uses the unscaled version of the image
	* to render the scaled rectangle and performs the required
	* scaling on the fly. It does not use a cached, scaled version
	* of the image for this operation. Scaling of the image from source
	* to destination is performed such that the first coordinate
	* of the source rectangle is mapped to the first coordinate of
	* the destination rectangle, and the second source coordinate is
	* mapped to the second destination coordinate. The subimage is
	* scaled and flipped as needed to preserve those mappings.
	* @param       img the specified image to be drawn
	* @param       dx1 the <i>x</i> coordinate of the first corner of the
	*                    destination rectangle.
	* @param       dy1 the <i>y</i> coordinate of the first corner of the
	*                    destination rectangle.
	* @param       dx2 the <i>x</i> coordinate of the second corner of the
	*                    destination rectangle.
	* @param       dy2 the <i>y</i> coordinate of the second corner of the
	*                    destination rectangle.
	* @param       sx1 the <i>x</i> coordinate of the first corner of the
	*                    source rectangle.
	* @param       sy1 the <i>y</i> coordinate of the first corner of the
	*                    source rectangle.
	* @param       sx2 the <i>x</i> coordinate of the second corner of the
	*                    source rectangle.
	* @param       sy2 the <i>y</i> coordinate of the second corner of the
	*                    source rectangle.
	* @param       bgcolor the background color to paint under the
	*                    non-opaque portions of the image.
	* @param       observer object to be notified as more of the image is
	*                    scaled and converted.
	* @see         java.awt.Image
	* @see         java.awt.image.ImageObserver
	* @see         java.awt.image.ImageObserver#imageUpdate(java.awt.Image, int, int, int, int, int)
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function drawImage(img : java.awt.Image, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bgcolor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draws an image, applying a transform from image space into user space
	* before drawing.
	* The transformation from user space into device space is done with
	* the current transform in the Graphics2D.
	* The given transformation is applied to the image before the
	* transform attribute in the Graphics2D state is applied.
	* The rendering attributes applied include the clip, transform,
	* and composite attributes. Note that the result is
	* undefined, if the given transform is noninvertible.
	* @param img The image to be drawn.
	* @param xform The transformation from image space into user space.
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload override public function drawRenderedImage(img : java.awt.image.RenderedImage, xform : java.awt.geom.AffineTransform) : Void;
	
	@:overload override public function drawRenderableImage(img : java.awt.image.renderable.RenderableImage, xform : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Disposes of this graphics context and releases
	* any system resources that it is using.
	* A <code>Graphics</code> object cannot be used after
	* <code>dispose</code>has been called.
	* <p>
	* When a Java program runs, a large number of <code>Graphics</code>
	* objects can be created within a short time frame.
	* Although the finalization process of the garbage collector
	* also disposes of the same system resources, it is preferable
	* to manually free the associated resources by calling this
	* method rather than to rely on a finalization process which
	* may not run to completion for a long period of time.
	* <p>
	* Graphics objects which are provided as arguments to the
	* <code>paint</code> and <code>update</code> methods
	* of components are automatically released by the system when
	* those methods return. For efficiency, programmers should
	* call <code>dispose</code> when finished using
	* a <code>Graphics</code> object only if it was created
	* directly from a component or another <code>Graphics</code> object.
	* @see         java.awt.Graphics#finalize
	* @see         java.awt.Component#paint
	* @see         java.awt.Component#update
	* @see         java.awt.Component#getGraphics
	* @see         java.awt.Graphics#create
	* @since       JDK1.0
	*/
	@:require(java0) @:overload public function dispose() : Void;
	
	/**
	* Empty finalizer as no clean up needed here.
	*/
	@:overload public function finalize() : Void;
	
	/**
	* Strokes the outline of a Shape using the settings of the current
	* graphics state.  The rendering attributes applied include the
	* clip, transform, paint or color, composite and stroke attributes.
	* @param s The shape to be drawn.
	* @see #setStroke
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see #transform
	* @see #setTransform
	* @see #clip
	* @see #setClip
	* @see #setComposite
	*/
	@:overload override public function draw(s : java.awt.Shape) : Void;
	
	/**
	* Draws an image, applying a transform from image space into user space
	* before drawing.
	* The transformation from user space into device space is done with
	* the current transform in the Graphics2D.
	* The given transformation is applied to the image before the
	* transform attribute in the Graphics2D state is applied.
	* The rendering attributes applied include the clip, transform,
	* and composite attributes. Note that the result is
	* undefined, if the given transform is noninvertible.
	* @param img The image to be drawn.
	* @param xform The transformation from image space into user space.
	* @param obs The image observer to be notified as more of the image
	* is converted.
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload override public function drawImage(img : java.awt.Image, xform : java.awt.geom.AffineTransform, obs : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draws a BufferedImage that is filtered with a BufferedImageOp.
	* The rendering attributes applied include the clip, transform
	* and composite attributes.  This is equivalent to:
	* <pre>
	* img1 = op.filter(img, null);
	* drawImage(img1, new AffineTransform(1f,0f,0f,1f,x,y), null);
	* </pre>
	* @param op The filter to be applied to the image before drawing.
	* @param img The BufferedImage to be drawn.
	* @param x,y The location in user space where the image should be drawn.
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload override public function drawImage(img : java.awt.image.BufferedImage, op : java.awt.image.BufferedImageOp, x : Int, y : Int) : Void;
	
	/**
	* Draws a string of text.
	* The rendering attributes applied include the clip, transform,
	* paint or color, font and composite attributes.
	* @param s The string to be drawn.
	* @param x,y The coordinates where the string should be drawn.
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see java.awt.Graphics#setFont
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload override public function drawString(str : String, x : Single, y : Single) : Void;
	
	/**
	* Draws a GlyphVector.
	* The rendering attributes applied include the clip, transform,
	* paint or color, and composite attributes.  The GlyphVector specifies
	* individual glyphs from a Font.
	* @param g The GlyphVector to be drawn.
	* @param x,y The coordinates where the glyphs should be drawn.
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload override public function drawGlyphVector(g : java.awt.font.GlyphVector, x : Single, y : Single) : Void;
	
	/**
	* Fills the interior of a Shape using the settings of the current
	* graphics state. The rendering attributes applied include the
	* clip, transform, paint or color, and composite.
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload override public function fill(s : java.awt.Shape) : Void;
	
	/**
	* Checks to see if the outline of a Shape intersects the specified
	* Rectangle in device space.
	* The rendering attributes taken into account include the
	* clip, transform, and stroke attributes.
	* @param rect The area in device space to check for a hit.
	* @param s The shape to check for a hit.
	* @param onStroke Flag to choose between testing the stroked or
	* the filled shape.
	* @return True if there is a hit, false otherwise.
	* @see #setStroke
	* @see #fill
	* @see #draw
	* @see #transform
	* @see #setTransform
	* @see #clip
	* @see #setClip
	*/
	@:overload override public function hit(rect : java.awt.Rectangle, s : java.awt.Shape, onStroke : Bool) : Bool;
	
	/**
	* Sets the Composite in the current graphics state. Composite is used
	* in all drawing methods such as drawImage, drawString, draw,
	* and fill.  It specifies how new pixels are to be combined with
	* the existing pixels on the graphics device in the rendering process.
	* @param comp The Composite object to be used for drawing.
	* @see java.awt.Graphics#setXORMode
	* @see java.awt.Graphics#setPaintMode
	* @see AlphaComposite
	*/
	@:overload override public function setComposite(comp : java.awt.Composite) : Void;
	
	/**
	* Sets the Paint in the current graphics state.
	* @param paint The Paint object to be used to generate color in
	* the rendering process.
	* @see java.awt.Graphics#setColor
	* @see GradientPaint
	* @see TexturePaint
	*/
	@:overload override public function setPaint(paint : java.awt.Paint) : Void;
	
	/**
	* Sets the Stroke in the current graphics state.
	* @param s The Stroke object to be used to stroke a Shape in
	* the rendering process.
	* @see BasicStroke
	*/
	@:overload override public function setStroke(s : java.awt.Stroke) : Void;
	
	/**
	* Sets the preferences for the rendering algorithms.
	* Hint categories include controls for rendering quality and
	* overall time/quality trade-off in the rendering process.
	* @param hintCategory The category of hint to be set.
	* @param hintValue The value indicating preferences for the specified
	* hint category.
	* @see RenderingHints
	*/
	@:overload override public function setRenderingHint(hintCategory : java.awt.RenderingHints.RenderingHints_Key, hintValue : Dynamic) : Void;
	
	/**
	* Returns the preferences for the rendering algorithms.
	* @param hintCategory The category of hint to be set.
	* @return The preferences for rendering algorithms.
	* @see RenderingHings
	*/
	@:overload override public function getRenderingHint(hintCategory : java.awt.RenderingHints.RenderingHints_Key) : Dynamic;
	
	/**
	* Sets the preferences for the rendering algorithms.
	* Hint categories include controls for rendering quality and
	* overall time/quality trade-off in the rendering process.
	* @param hints The rendering hints to be set
	* @see RenderingHints
	*/
	@:overload override public function setRenderingHints(hints : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Adds a number of preferences for the rendering algorithms.
	* Hint categories include controls for rendering quality and
	* overall time/quality trade-off in the rendering process.
	* @param hints The rendering hints to be set
	* @see RenderingHints
	*/
	@:overload override public function addRenderingHints(hints : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Gets the preferences for the rendering algorithms.
	* Hint categories include controls for rendering quality and
	* overall time/quality trade-off in the rendering process.
	* @see RenderingHints
	*/
	@:overload override public function getRenderingHints() : java.awt.RenderingHints;
	
	/**
	* Composes a Transform object with the transform in this
	* Graphics2D according to the rule last-specified-first-applied.
	* If the currrent transform is Cx, the result of composition
	* with Tx is a new transform Cx'.  Cx' becomes the current
	* transform for this Graphics2D.
	* Transforming a point p by the updated transform Cx' is
	* equivalent to first transforming p by Tx and then transforming
	* the result by the original transform Cx.  In other words,
	* Cx'(p) = Cx(Tx(p)).
	* A copy of the Tx is made, if necessary, so further
	* modifications to Tx do not affect rendering.
	* @param Tx The Transform object to be composed with the current
	* transform.
	* @see #setTransform
	* @see TransformChain
	* @see AffineTransform
	*/
	@:overload override public function transform(Tx : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Sets the Transform in the current graphics state.
	* @param Tx The Transform object to be used in the rendering process.
	* @see #transform
	* @see TransformChain
	* @see AffineTransform
	*/
	@:overload override public function setTransform(Tx : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Returns the current Transform in the Graphics2D state.
	* @see #transform
	* @see #setTransform
	*/
	@:overload override public function getTransform() : java.awt.geom.AffineTransform;
	
	/**
	* Returns the current Paint in the Graphics2D state.
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	*/
	@:overload override public function getPaint() : java.awt.Paint;
	
	/**
	* Returns the current Composite in the Graphics2D state.
	* @see #setComposite
	*/
	@:overload override public function getComposite() : java.awt.Composite;
	
	/**
	* Sets the background color in this context used for clearing a region.
	* When Graphics2D is constructed for a component, the backgroung color is
	* inherited from the component. Setting the background color in the
	* Graphics2D context only affects the subsequent clearRect() calls and
	* not the background color of the component. To change the background
	* of the component, use appropriate methods of the component.
	* @param color The background color that should be used in
	* subsequent calls to clearRect().
	* @see getBackground
	* @see Graphics.clearRect()
	*/
	@:overload override public function setBackground(color : java.awt.Color) : Void;
	
	/**
	* Returns the background color used for clearing a region.
	* @see setBackground
	*/
	@:overload override public function getBackground() : java.awt.Color;
	
	/**
	* Returns the current Stroke in the Graphics2D state.
	* @see setStroke
	*/
	@:overload override public function getStroke() : java.awt.Stroke;
	
	/**
	* Intersects the current clip with the interior of the specified Shape
	* and sets the current clip to the resulting intersection.
	* The indicated shape is transformed with the current transform in the
	* Graphics2D state before being intersected with the current clip.
	* This method is used to make the current clip smaller.
	* To make the clip larger, use any setClip method.
	* @param s The Shape to be intersected with the current clip.
	*/
	@:overload override public function clip(s : java.awt.Shape) : Void;
	
	
}

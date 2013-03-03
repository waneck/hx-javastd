package sun.print;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class PathGraphics extends sun.print.ProxyGraphics2D
{
	@:protected private var printingGlyphVector : Bool;
	
	@:overload @:protected private function new(graphics : java.awt.Graphics2D, printerJob : java.awt.print.PrinterJob, painter : java.awt.print.Printable, pageFormat : java.awt.print.PageFormat, pageIndex : Int, canRedraw : Bool) : Void;
	
	/**
	* Return the Printable instance responsible for drawing
	* into this Graphics.
	*/
	@:overload @:protected private function getPrintable() : java.awt.print.Printable;
	
	/**
	* Return the PageFormat associated with this page of
	* Graphics.
	*/
	@:overload @:protected private function getPageFormat() : java.awt.print.PageFormat;
	
	/**
	* Return the page index associated with this Graphics.
	*/
	@:overload @:protected private function getPageIndex() : Int;
	
	/**
	* Return true if we are allowed to ask the application
	* to redraw portions of the page. In general, with the
	* PrinterJob API, the application can be asked to do a
	* redraw. When PrinterJob is emulating PrintJob then we
	* can not.
	*/
	@:overload @:public public function canDoRedraws() : Bool;
	
	/**
	* Redraw a rectanglular area using a proxy graphics
	*/
	@:overload @:public @:abstract public function redrawRegion(region : java.awt.geom.Rectangle2D, scaleX : Float, scaleY : Float, clip : java.awt.Shape, devTransform : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Draws a line, using the current color, between the points
	* <code>(x1,&nbsp;y1)</code> and <code>(x2,&nbsp;y2)</code>
	* in this graphics context's coordinate system.
	* @param   x1  the first point's <i>x</i> coordinate.
	* @param   y1  the first point's <i>y</i> coordinate.
	* @param   x2  the second point's <i>x</i> coordinate.
	* @param   y2  the second point's <i>y</i> coordinate.
	*/
	@:overload @:public override public function drawLine(x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	/**
	* Draws the outline of the specified rectangle.
	* The left and right edges of the rectangle are at
	* <code>x</code> and <code>x&nbsp;+&nbsp;width</code>.
	* The top and bottom edges are at
	* <code>y</code> and <code>y&nbsp;+&nbsp;height</code>.
	* The rectangle is drawn using the graphics context's current color.
	* @param         x   the <i>x</i> coordinate
	*                         of the rectangle to be drawn.
	* @param         y   the <i>y</i> coordinate
	*                         of the rectangle to be drawn.
	* @param         width   the width of the rectangle to be drawn.
	* @param         height   the height of the rectangle to be drawn.
	* @see          java.awt.Graphics#fillRect
	* @see          java.awt.Graphics#clearRect
	*/
	@:overload @:public override public function drawRect(x : Int, y : Int, width : Int, height : Int) : Void;
	
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
	* @see           java.awt.Graphics#clearRect
	* @see           java.awt.Graphics#drawRect
	*/
	@:overload @:public override public function fillRect(x : Int, y : Int, width : Int, height : Int) : Void;
	
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
	*/
	@:overload @:public override public function clearRect(x : Int, y : Int, width : Int, height : Int) : Void;
	
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
	*/
	@:overload @:public override public function drawRoundRect(x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
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
	*/
	@:overload @:public override public function fillRoundRect(x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
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
	@:require(java0) @:overload @:public override public function drawOval(x : Int, y : Int, width : Int, height : Int) : Void;
	
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
	*/
	@:overload @:public override public function fillOval(x : Int, y : Int, width : Int, height : Int) : Void;
	
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
	* <p>
	* The angles are specified relative to the non-square extents of
	* the bounding rectangle such that 45 degrees always falls on the
	* line from the center of the ellipse to the upper right corner of
	* the bounding rectangle. As a result, if the bounding rectangle is
	* noticeably longer in one axis than the other, the angles to the
	* start and end of the arc segment will be skewed farther along the
	* longer axis of the bounds.
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
	*/
	@:overload @:public override public function drawArc(x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
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
	* <p>
	* The angles are specified relative to the non-square extents of
	* the bounding rectangle such that 45 degrees always falls on the
	* line from the center of the ellipse to the upper right corner of
	* the bounding rectangle. As a result, if the bounding rectangle is
	* noticeably longer in one axis than the other, the angles to the
	* start and end of the arc segment will be skewed farther along the
	* longer axis of the bounds.
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
	*/
	@:overload @:public override public function fillArc(x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
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
	@:require(java1) @:overload @:public override public function drawPolyline(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
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
	*/
	@:overload @:public override public function drawPolygon(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	/**
	* Draws the outline of a polygon defined by the specified
	* <code>Polygon</code> object.
	* @param        p the polygon to draw.
	* @see          java.awt.Graphics#fillPolygon
	* @see          java.awt.Graphics#drawPolyline
	*/
	@:overload @:public override public function drawPolygon(p : java.awt.Polygon) : Void;
	
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
	*/
	@:overload @:public override public function fillPolygon(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	/**
	* Fills the polygon defined by the specified Polygon object with
	* the graphics context's current color.
	* <p>
	* The area inside the polygon is defined using an
	* even-odd fill rule, also known as the alternating rule.
	* @param        p the polygon to fill.
	* @see          java.awt.Graphics#drawPolygon(int[], int[], int)
	*/
	@:overload @:public override public function fillPolygon(p : java.awt.Polygon) : Void;
	
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
	@:require(java0) @:overload @:public override public function drawString(str : String, x : Int, y : Int) : Void;
	
	@:overload @:public override public function drawString(str : String, x : Single, y : Single) : Void;
	
	@:overload @:protected private function drawString(str : String, x : Single, y : Single, font : java.awt.Font, frc : java.awt.font.FontRenderContext, w : Single) : Void;
	
	/**
	* Draws the text given by the specified iterator, using this
	* graphics context's current color. The iterator has to specify a font
	* for each character. The baseline of the
	* first character is at position (<i>x</i>,&nbsp;<i>y</i>) in this
	* graphics context's coordinate system.
	* @param       iterator the iterator whose text is to be drawn
	* @param       x        the <i>x</i> coordinate.
	* @param       y        the <i>y</i> coordinate.
	* @see         java.awt.Graphics#drawBytes
	* @see         java.awt.Graphics#drawChars
	*/
	@:overload @:public override public function drawString(iterator : java.text.AttributedCharacterIterator, x : Int, y : Int) : Void;
	
	@:overload @:public override public function drawString(iterator : java.text.AttributedCharacterIterator, x : Single, y : Single) : Void;
	
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
	@:overload @:public override public function drawGlyphVector(g : java.awt.font.GlyphVector, x : Single, y : Single) : Void;
	
	@:protected @:static private static var fontMapRef : java.lang.ref.SoftReference<java.util.Hashtable<sun.font.Font2DHandle, Dynamic>>;
	
	@:overload @:protected private function platformFontCount(font : java.awt.Font, str : String) : Int;
	
	/**
	* Default implementation returns false.
	* Callers of this method must always be prepared for this,
	* and delegate to outlines or some other solution.
	*/
	@:overload @:protected private function printGlyphVector(gv : java.awt.font.GlyphVector, x : Single, y : Single) : Bool;
	
	@:overload @:protected private function canDrawStringToWidth() : Bool;
	
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
	@:overload @:public override public function draw(s : java.awt.Shape) : Void;
	
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
	@:overload @:public override public function fill(s : java.awt.Shape) : Void;
	
	@:overload @:public public function fill(s : java.awt.Shape, color : java.awt.Color) : Void;
	
	/**
	* Fill the path defined by <code>pathIter</code>
	* with the specified color.
	* The path is provided in device coordinates.
	*/
	@:overload @:protected @:abstract private function deviceFill(pathIter : java.awt.geom.PathIterator, color : java.awt.Color) : Void;
	
	/*
	* Set the clipping path to that defined by
	* the passed in <code>PathIterator</code>.
	*/
	@:overload @:protected @:abstract private function deviceClip(pathIter : java.awt.geom.PathIterator) : Void;
	
	/*
	* Draw the outline of the rectangle without using path
	* if supported by platform.
	*/
	@:overload @:protected @:abstract private function deviceFrameRect(x : Int, y : Int, width : Int, height : Int, color : java.awt.Color) : Void;
	
	/*
	* Draw a line without using path if supported by platform.
	*/
	@:overload @:protected @:abstract private function deviceDrawLine(xBegin : Int, yBegin : Int, xEnd : Int, yEnd : Int, color : java.awt.Color) : Void;
	
	/*
	* Fill a rectangle using specified color.
	*/
	@:overload @:protected @:abstract private function deviceFillRect(x : Int, y : Int, width : Int, height : Int, color : java.awt.Color) : Void;
	
	/* Obtain a BI from known implementations of java.awt.Image
	*/
	@:overload @:protected private function getBufferedImage(img : java.awt.Image) : java.awt.image.BufferedImage;
	
	/**
	* Return true if the BufferedImage argument has non-opaque
	* bits in it and therefore can not be directly rendered by
	* GDI. Return false if the image is opaque. If this function
	* can not tell for sure whether the image has transparent
	* pixels then it assumes that it does.
	*/
	@:overload @:protected private function hasTransparentPixels(bufferedImage : java.awt.image.BufferedImage) : Bool;
	
	@:overload @:protected private function isBitmaskTransparency(bufferedImage : java.awt.image.BufferedImage) : Bool;
	
	/* An optimisation for the special case of ICM images which have
	* bitmask transparency.
	*/
	@:overload @:protected private function drawBitmaskImage(bufferedImage : java.awt.image.BufferedImage, xform : java.awt.geom.AffineTransform, bgcolor : java.awt.Color, srcX : Int, srcY : Int, srcWidth : Int, srcHeight : Int) : Bool;
	
	/**
	* The various <code>drawImage()</code> methods for
	* <code>PathGraphics</code> are all decomposed
	* into an invocation of <code>drawImageToPlatform</code>.
	* The portion of the passed in image defined by
	* <code>srcX, srcY, srcWidth, and srcHeight</code>
	* is transformed by the supplied AffineTransform and
	* drawn using PS to the printer context.
	*
	* @param   img     The image to be drawn.
	*                  This method does nothing if <code>img</code> is null.
	* @param   xform   Used to tranform the image before drawing.
	*                  This can be null.
	* @param   bgcolor This color is drawn where the image has transparent
	*                  pixels. If this parameter is null then the
	*                  pixels already in the destination should show
	*                  through.
	* @param   srcX    With srcY this defines the upper-left corner
	*                  of the portion of the image to be drawn.
	*
	* @param   srcY    With srcX this defines the upper-left corner
	*                  of the portion of the image to be drawn.
	* @param   srcWidth    The width of the portion of the image to
	*                      be drawn.
	* @param   srcHeight   The height of the portion of the image to
	*                      be drawn.
	* @param   handlingTransparency if being recursively called to
	*                    print opaque region of transparent image
	*/
	@:overload @:protected @:abstract private function drawImageToPlatform(img : java.awt.Image, xform : java.awt.geom.AffineTransform, bgcolor : java.awt.Color, srcX : Int, srcY : Int, srcWidth : Int, srcHeight : Int, handlingTransparency : Bool) : Bool;
	
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
	@:require(java0) @:overload @:public override public function drawImage(img : java.awt.Image, x : Int, y : Int, observer : java.awt.image.ImageObserver) : Bool;
	
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
	@:require(java0) @:overload @:public override public function drawImage(img : java.awt.Image, x : Int, y : Int, width : Int, height : Int, observer : java.awt.image.ImageObserver) : Bool;
	
	/*
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
	*                  This method does nothing if <code>img</code> is null.
	* @param    x      the <i>x</i> coordinate.
	* @param    y      the <i>y</i> coordinate.
	* @param    bgcolor the background color to paint under the
	*                   non-opaque portions of the image.
	*                   In this WPathGraphics implementation,
	*                   this parameter can be null in which
	*                   case that background is made a transparent
	*                   white.
	* @param    observer    object to be notified as more of
	*                          the image is converted.
	* @see      java.awt.Image
	* @see      java.awt.image.ImageObserver
	* @see      java.awt.image.ImageObserver#imageUpdate(java.awt.Image, int, int, int, int, int)
	* @since    JDK1.0
	*/
	@:require(java0) @:overload @:public override public function drawImage(img : java.awt.Image, x : Int, y : Int, bgcolor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
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
	*                     This method does nothing if <code>img</code> is null.
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
	@:require(java0) @:overload @:public override public function drawImage(img : java.awt.Image, x : Int, y : Int, width : Int, height : Int, bgcolor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
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
	@:require(java1) @:overload @:public override public function drawImage(img : java.awt.Image, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, observer : java.awt.image.ImageObserver) : Bool;
	
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
	*                  This method does nothing if <code>img</code> is null.
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
	@:require(java1) @:overload @:public override public function drawImage(img : java.awt.Image, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bgcolor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
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
	*            This method does nothing if <code>img</code> is null.
	* @param xform The transformation from image space into user space.
	* @param obs The image observer to be notified as more of the image
	* is converted.
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload @:public override public function drawImage(img : java.awt.Image, xform : java.awt.geom.AffineTransform, obs : java.awt.image.ImageObserver) : Bool;
	
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
	*            This method does nothing if <code>img</code> is null.
	* @param x,y The location in user space where the image should be drawn.
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload @:public override public function drawImage(img : java.awt.image.BufferedImage, op : java.awt.image.BufferedImageOp, x : Int, y : Int) : Void;
	
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
	*            This method does nothing if <code>img</code> is null.
	* @param xform The transformation from image space into user space.
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload @:public override public function drawRenderedImage(img : java.awt.image.RenderedImage, xform : java.awt.geom.AffineTransform) : Void;
	
	
}

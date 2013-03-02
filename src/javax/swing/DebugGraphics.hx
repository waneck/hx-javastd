package javax.swing;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class DebugGraphics extends java.awt.Graphics
{
	/** Log graphics operations. */
	public static var LOG_OPTION(default, null) : Int;
	
	/** Flash graphics operations. */
	public static var FLASH_OPTION(default, null) : Int;
	
	/** Show buffered operations in a separate <code>Frame</code>. */
	public static var BUFFERED_OPTION(default, null) : Int;
	
	/** Don't debug graphics operations. */
	public static var NONE_OPTION(default, null) : Int;
	
	/**
	* Constructs a new debug graphics context that supports slowed
	* down drawing.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a debug graphics context from an existing graphics
	* context that slows down drawing for the specified component.
	*
	* @param graphics  the Graphics context to slow down
	* @param component the JComponent to draw slowly
	*/
	@:overload public function new(graphics : java.awt.Graphics, component : javax.swing.JComponent) : Void;
	
	/**
	* Constructs a debug graphics context from an existing graphics
	* context that supports slowed down drawing.
	*
	* @param graphics  the Graphics context to slow down
	*/
	@:overload public function new(graphics : java.awt.Graphics) : Void;
	
	/**
	* Overrides <code>Graphics.create</code> to return a DebugGraphics object.
	*/
	@:overload public function create() : java.awt.Graphics;
	
	/**
	* Overrides <code>Graphics.create</code> to return a DebugGraphics object.
	*/
	@:overload public function create(x : Int, y : Int, width : Int, height : Int) : java.awt.Graphics;
	
	/**
	* Sets the Color used to flash drawing operations.
	*/
	@:overload public static function setFlashColor(flashColor : java.awt.Color) : Void;
	
	/**
	* Returns the Color used to flash drawing operations.
	* @see #setFlashColor
	*/
	@:overload public static function flashColor() : java.awt.Color;
	
	/**
	* Sets the time delay of drawing operation flashing.
	*/
	@:overload public static function setFlashTime(flashTime : Int) : Void;
	
	/**
	* Returns the time delay of drawing operation flashing.
	* @see #setFlashTime
	*/
	@:overload public static function flashTime() : Int;
	
	/**
	* Sets the number of times that drawing operations will flash.
	*/
	@:overload public static function setFlashCount(flashCount : Int) : Void;
	
	/** Returns the number of times that drawing operations will flash.
	* @see #setFlashCount
	*/
	@:overload public static function flashCount() : Int;
	
	/** Sets the stream to which the DebugGraphics logs drawing operations.
	*/
	@:overload public static function setLogStream(stream : java.io.PrintStream) : Void;
	
	/** Returns the stream to which the DebugGraphics logs drawing operations.
	* @see #setLogStream
	*/
	@:overload public static function logStream() : java.io.PrintStream;
	
	/** Sets the Font used for text drawing operations.
	*/
	@:overload public function setFont(aFont : java.awt.Font) : Void;
	
	/** Returns the Font used for text drawing operations.
	* @see #setFont
	*/
	@:overload public function getFont() : java.awt.Font;
	
	/** Sets the color to be used for drawing and filling lines and shapes.
	*/
	@:overload public function setColor(aColor : java.awt.Color) : Void;
	
	/** Returns the Color used for text drawing operations.
	* @see #setColor
	*/
	@:overload public function getColor() : java.awt.Color;
	
	/**
	* Overrides <code>Graphics.getFontMetrics</code>.
	*/
	@:overload public function getFontMetrics() : java.awt.FontMetrics;
	
	/**
	* Overrides <code>Graphics.getFontMetrics</code>.
	*/
	@:overload public function getFontMetrics(f : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Overrides <code>Graphics.translate</code>.
	*/
	@:overload public function translate(x : Int, y : Int) : Void;
	
	/**
	* Overrides <code>Graphics.setPaintMode</code>.
	*/
	@:overload public function setPaintMode() : Void;
	
	/**
	* Overrides <code>Graphics.setXORMode</code>.
	*/
	@:overload public function setXORMode(aColor : java.awt.Color) : Void;
	
	/**
	* Overrides <code>Graphics.getClipBounds</code>.
	*/
	@:overload public function getClipBounds() : java.awt.Rectangle;
	
	/**
	* Overrides <code>Graphics.clipRect</code>.
	*/
	@:overload public function clipRect(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Overrides <code>Graphics.setClip</code>.
	*/
	@:overload public function setClip(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Overrides <code>Graphics.getClip</code>.
	*/
	@:overload public function getClip() : java.awt.Shape;
	
	/**
	* Overrides <code>Graphics.setClip</code>.
	*/
	@:overload public function setClip(clip : java.awt.Shape) : Void;
	
	/**
	* Overrides <code>Graphics.drawRect</code>.
	*/
	@:overload public function drawRect(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Overrides <code>Graphics.fillRect</code>.
	*/
	@:overload public function fillRect(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Overrides <code>Graphics.clearRect</code>.
	*/
	@:overload public function clearRect(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Overrides <code>Graphics.drawRoundRect</code>.
	*/
	@:overload public function drawRoundRect(x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	/**
	* Overrides <code>Graphics.fillRoundRect</code>.
	*/
	@:overload public function fillRoundRect(x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	/**
	* Overrides <code>Graphics.drawLine</code>.
	*/
	@:overload public function drawLine(x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	/**
	* Overrides <code>Graphics.draw3DRect</code>.
	*/
	@:overload public function draw3DRect(x : Int, y : Int, width : Int, height : Int, raised : Bool) : Void;
	
	/**
	* Overrides <code>Graphics.fill3DRect</code>.
	*/
	@:overload public function fill3DRect(x : Int, y : Int, width : Int, height : Int, raised : Bool) : Void;
	
	/**
	* Overrides <code>Graphics.drawOval</code>.
	*/
	@:overload public function drawOval(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Overrides <code>Graphics.fillOval</code>.
	*/
	@:overload public function fillOval(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Overrides <code>Graphics.drawArc</code>.
	*/
	@:overload public function drawArc(x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	/**
	* Overrides <code>Graphics.fillArc</code>.
	*/
	@:overload public function fillArc(x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	/**
	* Overrides <code>Graphics.drawPolyline</code>.
	*/
	@:overload public function drawPolyline(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	/**
	* Overrides <code>Graphics.drawPolygon</code>.
	*/
	@:overload public function drawPolygon(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	/**
	* Overrides <code>Graphics.fillPolygon</code>.
	*/
	@:overload public function fillPolygon(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	/**
	* Overrides <code>Graphics.drawString</code>.
	*/
	@:overload public function drawString(aString : String, x : Int, y : Int) : Void;
	
	/**
	* Overrides <code>Graphics.drawString</code>.
	*/
	@:overload public function drawString(iterator : java.text.AttributedCharacterIterator, x : Int, y : Int) : Void;
	
	/**
	* Overrides <code>Graphics.drawBytes</code>.
	*/
	@:overload public function drawBytes(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int, x : Int, y : Int) : Void;
	
	/**
	* Overrides <code>Graphics.drawChars</code>.
	*/
	@:overload public function drawChars(data : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, x : Int, y : Int) : Void;
	
	/**
	* Overrides <code>Graphics.drawImage</code>.
	*/
	@:overload public function drawImage(img : java.awt.Image, x : Int, y : Int, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Overrides <code>Graphics.drawImage</code>.
	*/
	@:overload public function drawImage(img : java.awt.Image, x : Int, y : Int, width : Int, height : Int, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Overrides <code>Graphics.drawImage</code>.
	*/
	@:overload public function drawImage(img : java.awt.Image, x : Int, y : Int, bgcolor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Overrides <code>Graphics.drawImage</code>.
	*/
	@:overload public function drawImage(img : java.awt.Image, x : Int, y : Int, width : Int, height : Int, bgcolor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Overrides <code>Graphics.drawImage</code>.
	*/
	@:overload public function drawImage(img : java.awt.Image, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Overrides <code>Graphics.drawImage</code>.
	*/
	@:overload public function drawImage(img : java.awt.Image, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bgcolor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Overrides <code>Graphics.copyArea</code>.
	*/
	@:overload public function copyArea(x : Int, y : Int, width : Int, height : Int, destX : Int, destY : Int) : Void;
	
	/**
	* Overrides <code>Graphics.dispose</code>.
	*/
	@:overload public function dispose() : Void;
	
	/**
	* Returns the drawingBuffer value.
	*
	* @return true if this object is drawing from a Buffer
	*/
	@:overload public function isDrawingBuffer() : Bool;
	
	/** Enables/disables diagnostic information about every graphics
	* operation. The value of <b>options</b> indicates how this information
	* should be displayed. LOG_OPTION causes a text message to be printed.
	* FLASH_OPTION causes the drawing to flash several times. BUFFERED_OPTION
	* creates a new Frame that shows each operation on an
	* offscreen buffer. The value of <b>options</b> is bitwise OR'd into
	* the current value. To disable debugging use NONE_OPTION.
	*/
	@:overload public function setDebugOptions(options : Int) : Void;
	
	/** Returns the current debugging options for this DebugGraphics.
	* @see #setDebugOptions
	*/
	@:overload public function getDebugOptions() : Int;
	
	
}

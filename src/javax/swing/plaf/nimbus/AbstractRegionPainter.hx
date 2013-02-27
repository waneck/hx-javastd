package javax.swing.plaf.nimbus;
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
extern class AbstractRegionPainter implements javax.swing.Painter<javax.swing.JComponent>
{
	/**
	* Create a new AbstractRegionPainter
	*/
	@:overload private function new() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:final public function paint(g : java.awt.Graphics2D, c : javax.swing.JComponent, w : Int, h : Int) : Void;
	
	/**
	* Get any extra attributes which the painter implementation would like
	* to include in the image cache lookups. This is checked for every call
	* of the paint(g, c, w, h) method.
	*
	* @param c The component on the current paint call
	* @return Array of extra objects to be included in the cache key
	*/
	@:overload private function getExtendedCacheKeys(c : javax.swing.JComponent) : java.NativeArray<Dynamic>;
	
	/**
	* <p>Gets the PaintContext for this painting operation. This method is called on every
	* paint, and so should be fast and produce no garbage. The PaintContext contains
	* information such as cache hints. It also contains data necessary for decoding
	* points at runtime, such as the stretching insets, the canvas size at which the
	* encoded points were defined, and whether the stretching insets are inverted.</p>
	*
	* <p> This method allows for subclasses to package the painting of different states
	* with possibly different canvas sizes, etc, into one AbstractRegionPainter implementation.</p>
	*
	* @return a PaintContext associated with this paint operation.
	*/
	@:overload @:abstract private function getPaintContext() : AbstractRegionPainter_PaintContext;
	
	/**
	* <p>Configures the given Graphics2D. Often, rendering hints or compositiing rules are
	* applied to a Graphics2D object prior to painting, which should affect all of the
	* subsequent painting operations. This method provides a convenient hook for configuring
	* the Graphics object prior to rendering, regardless of whether the render operation is
	* performed to an intermediate buffer or directly to the display.</p>
	*
	* @param g The Graphics2D object to configure. Will not be null.
	*/
	@:overload private function configureGraphics(g : java.awt.Graphics2D) : Void;
	
	/**
	* Actually performs the painting operation. Subclasses must implement this method.
	* The graphics object passed may represent the actual surface being rendererd to,
	* or it may be an intermediate buffer. It has also been pre-translated. Simply render
	* the component as if it were located at 0, 0 and had a width of <code>width</code>
	* and a height of <code>height</code>. For performance reasons, you may want to read
	* the clip from the Graphics2D object and only render within that space.
	*
	* @param g The Graphics2D surface to paint to
	* @param c The JComponent related to the drawing event. For example, if the
	*          region being rendered is Button, then <code>c</code> will be a
	*          JButton. If the region being drawn is ScrollBarSlider, then the
	*          component will be JScrollBar. This value may be null.
	* @param width The width of the region to paint. Note that in the case of
	*              painting the foreground, this value may differ from c.getWidth().
	* @param height The height of the region to paint. Note that in the case of
	*               painting the foreground, this value may differ from c.getHeight().
	* @param extendedCacheKeys The result of the call to getExtendedCacheKeys()
	*/
	@:overload @:abstract private function doPaint(g : java.awt.Graphics2D, c : javax.swing.JComponent, width : Int, height : Int, extendedCacheKeys : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Decodes and returns a float value representing the actual pixel location for
	* the given encoded X value.
	*
	* @param x an encoded x value (0...1, or 1...2, or 2...3)
	* @return the decoded x value
	* @throws IllegalArgumentException
	*      if {@code x < 0} or {@code x > 3}
	*/
	@:overload @:final private function decodeX(x : Single) : Single;
	
	/**
	* Decodes and returns a float value representing the actual pixel location for
	* the given encoded y value.
	*
	* @param y an encoded y value (0...1, or 1...2, or 2...3)
	* @return the decoded y value
	* @throws IllegalArgumentException
	*      if {@code y < 0} or {@code y > 3}
	*/
	@:overload @:final private function decodeY(y : Single) : Single;
	
	/**
	* Decodes and returns a float value representing the actual pixel location for
	* the anchor point given the encoded X value of the control point, and the offset
	* distance to the anchor from that control point.
	*
	* @param x an encoded x value of the bezier control point (0...1, or 1...2, or 2...3)
	* @param dx the offset distance to the anchor from the control point x
	* @return the decoded x location of the control point
	* @throws IllegalArgumentException
	*      if {@code x < 0} or {@code x > 3}
	*/
	@:overload @:final private function decodeAnchorX(x : Single, dx : Single) : Single;
	
	/**
	* Decodes and returns a float value representing the actual pixel location for
	* the anchor point given the encoded Y value of the control point, and the offset
	* distance to the anchor from that control point.
	*
	* @param y an encoded y value of the bezier control point (0...1, or 1...2, or 2...3)
	* @param dy the offset distance to the anchor from the control point y
	* @return the decoded y position of the control point
	* @throws IllegalArgumentException
	*      if {@code y < 0} or {@code y > 3}
	*/
	@:overload @:final private function decodeAnchorY(y : Single, dy : Single) : Single;
	
	/**
	* Decodes and returns a color, which is derived from a base color in UI
	* defaults.
	*
	* @param key     A key corrosponding to the value in the UI Defaults table
	*                of UIManager where the base color is defined
	* @param hOffset The hue offset used for derivation.
	* @param sOffset The saturation offset used for derivation.
	* @param bOffset The brightness offset used for derivation.
	* @param aOffset The alpha offset used for derivation. Between 0...255
	* @return The derived color, whos color value will change if the parent
	*         uiDefault color changes.
	*/
	@:overload @:final private function decodeColor(key : String, hOffset : Single, sOffset : Single, bOffset : Single, aOffset : Int) : java.awt.Color;
	
	/**
	* Decodes and returns a color, which is derived from a offset between two
	* other colors.
	*
	* @param color1   The first color
	* @param color2   The second color
	* @param midPoint The offset between color 1 and color 2, a value of 0.0 is
	*                 color 1 and 1.0 is color 2;
	* @return The derived color
	*/
	@:overload @:final private function decodeColor(color1 : java.awt.Color, color2 : java.awt.Color, midPoint : Single) : java.awt.Color;
	
	/**
	* Given parameters for creating a LinearGradientPaint, this method will
	* create and return a linear gradient paint. One primary purpose for this
	* method is to avoid creating a LinearGradientPaint where the start and
	* end points are equal. In such a case, the end y point is slightly
	* increased to avoid the overlap.
	*
	* @param x1
	* @param y1
	* @param x2
	* @param y2
	* @param midpoints
	* @param colors
	* @return a valid LinearGradientPaint. This method never returns null.
	* @throws NullPointerException
	*      if {@code midpoints} array is null,
	*      or {@code colors} array is null,
	* @throws IllegalArgumentException
	*      if start and end points are the same points,
	*      or {@code midpoints.length != colors.length},
	*      or {@code colors} is less than 2 in size,
	*      or a {@code midpoints} value is less than 0.0 or greater than 1.0,
	*      or the {@code midpoints} are not provided in strictly increasing order
	*/
	@:overload @:final private function decodeGradient(x1 : Single, y1 : Single, x2 : Single, y2 : Single, midpoints : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>) : java.awt.LinearGradientPaint;
	
	/**
	* Given parameters for creating a RadialGradientPaint, this method will
	* create and return a radial gradient paint. One primary purpose for this
	* method is to avoid creating a RadialGradientPaint where the radius
	* is non-positive. In such a case, the radius is just slightly
	* increased to avoid 0.
	*
	* @param x
	* @param y
	* @param r
	* @param midpoints
	* @param colors
	* @return a valid RadialGradientPaint. This method never returns null.
	* @throws NullPointerException
	*      if {@code midpoints} array is null,
	*      or {@code colors} array is null
	* @throws IllegalArgumentException
	*      if {@code r} is non-positive,
	*      or {@code midpoints.length != colors.length},
	*      or {@code colors} is less than 2 in size,
	*      or a {@code midpoints} value is less than 0.0 or greater than 1.0,
	*      or the {@code midpoints} are not provided in strictly increasing order
	*/
	@:overload @:final private function decodeRadialGradient(x : Single, y : Single, r : Single, midpoints : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>) : java.awt.RadialGradientPaint;
	
	/**
	* Get a color property from the given JComponent. First checks for a
	* <code>getXXX()</code> method and if that fails checks for a client
	* property with key <code>property</code>. If that still fails to return
	* a Color then <code>defaultColor</code> is returned.
	*
	* @param c The component to get the color property from
	* @param property The name of a bean style property or client property
	* @param defaultColor The color to return if no color was obtained from
	*        the component.
	* @return The color that was obtained from the component or defaultColor
	*/
	@:overload @:final private function getComponentColor(c : javax.swing.JComponent, property : String, defaultColor : java.awt.Color, saturationOffset : Single, brightnessOffset : Single, alphaOffset : Int) : java.awt.Color;
	
	/**
	* <p>Renders to the given {@link java.awt.Graphics2D} object. Implementations
	* of this method <em>may</em> modify state on the <code>Graphics2D</code>, and are not
	* required to restore that state upon completion. In most cases, it is recommended
	* that the caller pass in a scratch graphics object. The <code>Graphics2D</code>
	* must never be null.</p>
	*
	* <p>State on the graphics object may be honored by the <code>paint</code> method,
	* but may not be. For instance, setting the antialiasing rendering hint on the
	* graphics may or may not be respected by the <code>Painter</code> implementation.</p>
	*
	* <p>The supplied object parameter acts as an optional configuration argument.
	* For example, it could be of type <code>Component</code>. A <code>Painter</code>
	* that expected it could then read state from that <code>Component</code> and
	* use the state for painting. For example, an implementation may read the
	* backgroundColor and use that.</p>
	*
	* <p>Generally, to enhance reusability, most standard <code>Painter</code>s ignore
	* this parameter. They can thus be reused in any context. The <code>object</code>
	* may be null. Implementations must not throw a NullPointerException if the object
	* parameter is null.</p>
	*
	* <p>Finally, the <code>width</code> and <code>height</code> arguments specify the
	* width and height that the <code>Painter</code> should paint into. More
	* specifically, the specified width and height instruct the painter that it should
	* paint fully within this width and height. Any specified clip on the
	* <code>g</code> param will further constrain the region.</p>
	*
	* <p>For example, suppose I have a <code>Painter</code> implementation that draws
	* a gradient. The gradient goes from white to black. It "stretches" to fill the
	* painted region. Thus, if I use this <code>Painter</code> to paint a 500 x 500
	* region, the far left would be black, the far right would be white, and a smooth
	* gradient would be painted between. I could then, without modification, reuse the
	* <code>Painter</code> to paint a region that is 20x20 in size. This region would
	* also be black on the left, white on the right, and a smooth gradient painted
	* between.</p>
	*
	* @param g The Graphics2D to render to. This must not be null.
	* @param object an optional configuration parameter. This may be null.
	* @param width width of the area to paint.
	* @param height height of the area to paint.
	*/
	@:overload @:public public function paint(g : java.awt.Graphics2D, object : Dynamic, width : Int, height : Int) : Void;
	
	
}
/**
* A class encapsulating state useful when painting. Generally, instances of this
* class are created once, and reused for each paint request without modification.
* This class contains values useful when hinting the cache engine, and when decoding
* control points and bezier curve anchors.
*/
@:native('javax$swing$plaf$nimbus$AbstractRegionPainter$PaintContext') extern class AbstractRegionPainter_PaintContext
{
	/**
	* Creates a new PaintContext which does not attempt to cache or scale any cached
	* images.
	*
	* @param insets The stretching insets. May be null. If null, then assumed to be 0, 0, 0, 0.
	* @param canvasSize The size of the canvas used when encoding the various x/y values. May be null.
	*                   If null, then it is assumed that there are no encoded values, and any calls
	*                   to one of the "decode" methods will return the passed in value.
	* @param inverted Whether to "invert" the meaning of the 9-square grid and stretching insets
	*/
	@:overload public function new(insets : java.awt.Insets, canvasSize : java.awt.Dimension, inverted : Bool) : Void;
	
	/**
	* Creates a new PaintContext.
	*
	* @param insets The stretching insets. May be null. If null, then assumed to be 0, 0, 0, 0.
	* @param canvasSize The size of the canvas used when encoding the various x/y values. May be null.
	*                   If null, then it is assumed that there are no encoded values, and any calls
	*                   to one of the "decode" methods will return the passed in value.
	* @param inverted Whether to "invert" the meaning of the 9-square grid and stretching insets
	* @param cacheMode A hint as to which caching mode to use. If null, then set to no caching.
	* @param maxH The maximium scale in the horizontal direction to use before punting and redrawing from scratch.
	*             For example, if maxH is 2, then we will attempt to scale any cached images up to 2x the canvas
	*             width before redrawing from scratch. Reasonable maxH values may improve painting performance.
	*             If set too high, then you may get poor looking graphics at higher zoom levels. Must be >= 1.
	* @param maxV The maximium scale in the vertical direction to use before punting and redrawing from scratch.
	*             For example, if maxV is 2, then we will attempt to scale any cached images up to 2x the canvas
	*             height before redrawing from scratch. Reasonable maxV values may improve painting performance.
	*             If set too high, then you may get poor looking graphics at higher zoom levels. Must be >= 1.
	*/
	@:overload public function new(insets : java.awt.Insets, canvasSize : java.awt.Dimension, inverted : Bool, cacheMode : AbstractRegionPainter_PaintContext_CacheMode, maxH : Float, maxV : Float) : Void;
	
	
}
@:native('javax$swing$plaf$nimbus$AbstractRegionPainter$PaintContext$CacheMode') privateextern enum AbstractRegionPainter_PaintContext_CacheMode
{
	NO_CACHING;
	FIXED_SIZES;
	NINE_SQUARE_SCALE;
	
}


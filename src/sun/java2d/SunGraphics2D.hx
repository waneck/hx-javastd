package sun.java2d;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SunGraphics2D extends java.awt.Graphics2D implements sun.awt.ConstrainableGraphics implements java.lang.Cloneable implements sun.java2d.DestSurfaceProvider
{
	/* Paint */
	@:public @:static @:final public static var PAINT_CUSTOM(default, null) : Int;
	
	/* Any other Paint object */
	@:public @:static @:final public static var PAINT_TEXTURE(default, null) : Int;
	
	/* Tiled Image */
	@:public @:static @:final public static var PAINT_RAD_GRADIENT(default, null) : Int;
	
	/* Color RadialGradient */
	@:public @:static @:final public static var PAINT_LIN_GRADIENT(default, null) : Int;
	
	/* Color LinearGradient */
	@:public @:static @:final public static var PAINT_GRADIENT(default, null) : Int;
	
	/* Color Gradient */
	@:public @:static @:final public static var PAINT_ALPHACOLOR(default, null) : Int;
	
	/* Non-opaque Color */
	@:public @:static @:final public static var PAINT_OPAQUECOLOR(default, null) : Int;
	
	/* Composite*/
	@:public @:static @:final public static var COMP_CUSTOM(default, null) : Int;
	
	/* Custom Composite */
	@:public @:static @:final public static var COMP_XOR(default, null) : Int;
	
	/* XOR Mode Composite */
	@:public @:static @:final public static var COMP_ALPHA(default, null) : Int;
	
	/* AlphaComposite */
	@:public @:static @:final public static var COMP_ISCOPY(default, null) : Int;
	
	/* Stroke */
	@:public @:static @:final public static var STROKE_CUSTOM(default, null) : Int;
	
	/* custom Stroke */
	@:public @:static @:final public static var STROKE_WIDE(default, null) : Int;
	
	/* BasicStroke */
	@:public @:static @:final public static var STROKE_THINDASHED(default, null) : Int;
	
	/* BasicStroke */
	@:public @:static @:final public static var STROKE_THIN(default, null) : Int;
	
	/* Transform */
	@:public @:static @:final public static var TRANSFORM_GENERIC(default, null) : Int;
	
	/* any 3x2 */
	@:public @:static @:final public static var TRANSFORM_TRANSLATESCALE(default, null) : Int;
	
	/* scale XY */
	@:public @:static @:final public static var TRANSFORM_ANY_TRANSLATE(default, null) : Int;
	
	/* non-int translate */
	@:public @:static @:final public static var TRANSFORM_INT_TRANSLATE(default, null) : Int;
	
	/* int translate */
	@:public @:static @:final public static var TRANSFORM_ISIDENT(default, null) : Int;
	
	/* Clipping */
	@:public @:static @:final public static var CLIP_SHAPE(default, null) : Int;
	
	/* arbitrary clip */
	@:public @:static @:final public static var CLIP_RECTANGULAR(default, null) : Int;
	
	/* rectangular clip */
	@:public @:static @:final public static var CLIP_DEVICE(default, null) : Int;
	
	/* The following fields are used when the current Paint is a Color. */
	@:public public var eargb : Int;
	
	@:public public var pixel : Int;
	
	@:public public var surfaceData : sun.java2d.SurfaceData;
	
	@:public public var drawpipe : sun.java2d.pipe.PixelDrawPipe;
	
	@:public public var fillpipe : sun.java2d.pipe.PixelFillPipe;
	
	@:public public var imagepipe : sun.java2d.pipe.DrawImagePipe;
	
	@:public public var shapepipe : sun.java2d.pipe.ShapeDrawPipe;
	
	@:public public var textpipe : sun.java2d.pipe.TextPipe;
	
	@:public public var alphafill : sun.java2d.loops.MaskFill;
	
	@:public public var loops : sun.java2d.loops.RenderLoops;
	
	@:public public var imageComp : sun.java2d.loops.CompositeType;
	
	/* Image Transparency checked on fly */
	@:public public var paintState : Int;
	
	@:public public var compositeState : Int;
	
	@:public public var strokeState : Int;
	
	@:public public var transformState : Int;
	
	@:public public var clipState : Int;
	
	@:public public var foregroundColor : java.awt.Color;
	
	@:public public var backgroundColor : java.awt.Color;
	
	@:public public var transX : Int;
	
	@:public public var transY : Int;
	
	@:protected @:static @:final private static var defaultStroke(default, null) : java.awt.Stroke;
	
	@:protected @:static @:final private static var defaultComposite(default, null) : java.awt.Composite;
	
	@:public public var paint : java.awt.Paint;
	
	@:public public var stroke : java.awt.Stroke;
	
	@:public public var composite : java.awt.Composite;
	
	@:protected private var font : java.awt.Font;
	
	@:protected private var fontMetrics : java.awt.FontMetrics;
	
	@:public public var renderHint : Int;
	
	@:public public var antialiasHint : Int;
	
	@:public public var textAntialiasHint : Int;
	
	@:protected private var fractionalMetricsHint : Int;
	
	/* A gamma adjustment to the colour used in lcd text blitting */
	@:public public var lcdTextContrast : Int;
	
	@:public public var strokeHint : Int;
	
	@:public public var interpolationType : Int;
	
	@:public public var hints : java.awt.RenderingHints;
	
	@:public public var constrainClip : sun.java2d.pipe.Region;
	
	@:public public var constrainX : Int;
	
	@:public public var constrainY : Int;
	
	@:public public var clipRegion : sun.java2d.pipe.Region;
	
	@:public public var usrClip : java.awt.Shape;
	
	@:protected private var devClip : sun.java2d.pipe.Region;
	
	@:overload @:public public function new(sd : sun.java2d.SurfaceData, fg : java.awt.Color, bg : java.awt.Color, f : java.awt.Font) : Void;
	
	@:overload @:protected private function clone() : Dynamic;
	
	/**
	* Create a new SunGraphics2D based on this one.
	*/
	@:overload @:public override public function create() : java.awt.Graphics;
	
	@:overload @:public public function setDevClip(x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public public function setDevClip(r : java.awt.Rectangle) : Void;
	
	/**
	* Constrain rendering for lightweight objects.
	*
	* REMIND: This method will back off to the "workaround"
	* of using translate and clipRect if the Graphics
	* to be constrained has a complex transform.  The
	* drawback of the workaround is that the resulting
	* clip and device origin cannot be "enforced".
	*
	* @exception IllegalStateException If the Graphics
	* to be constrained has a complex transform.
	*/
	@:overload @:public public function constrain(x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:protected @:static private static var invalidpipe : sun.java2d.pipe.ValidatePipe;
	
	/*
	* Invalidate the pipeline
	*/
	@:overload @:protected private function invalidatePipe() : Void;
	
	@:overload @:public public function validatePipe() : Void;
	
	@:overload @:protected @:static private static function cloneShape(s : java.awt.Shape) : java.awt.Shape;
	
	/*
	* Intersect usrClip bounds and device bounds to determine the composite
	* rendering boundaries.
	*/
	@:overload @:public public function getCompClip() : sun.java2d.pipe.Region;
	
	@:overload @:public override public function getFont() : java.awt.Font;
	
	@:overload @:public public function checkFontInfo(info : sun.java2d.loops.FontInfo, font : java.awt.Font, frc : java.awt.font.FontRenderContext) : sun.java2d.loops.FontInfo;
	
	@:overload @:public @:static public static function isRotated(mtx : java.NativeArray<Float>) : Bool;
	
	@:overload @:public override public function setFont(font : java.awt.Font) : Void;
	
	@:overload @:public public function getFontInfo() : sun.java2d.loops.FontInfo;
	
	/* Used by drawGlyphVector which specifies its own font. */
	@:overload @:public public function getGVFontInfo(font : java.awt.Font, frc : java.awt.font.FontRenderContext) : sun.java2d.loops.FontInfo;
	
	@:overload @:public override public function getFontMetrics() : java.awt.FontMetrics;
	
	@:overload @:public override public function getFontMetrics(font : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Checks to see if a Path intersects the specified Rectangle in device
	* space.  The rendering attributes taken into account include the
	* clip, transform, and stroke attributes.
	* @param rect The area in device space to check for a hit.
	* @param p The path to check for a hit.
	* @param onStroke Flag to choose between testing the stroked or
	* the filled path.
	* @return True if there is a hit, false otherwise.
	* @see #setStroke
	* @see #fillPath
	* @see #drawPath
	* @see #transform
	* @see #setTransform
	* @see #clip
	* @see #setClip
	*/
	@:overload @:public override public function hit(rect : java.awt.Rectangle, s : java.awt.Shape, onStroke : Bool) : Bool;
	
	/**
	* Return the ColorModel associated with this Graphics2D.
	*/
	@:overload @:public public function getDeviceColorModel() : java.awt.image.ColorModel;
	
	/**
	* Return the device configuration associated with this Graphics2D.
	*/
	@:overload @:public override public function getDeviceConfiguration() : java.awt.GraphicsConfiguration;
	
	/**
	* Return the SurfaceData object assigned to manage the destination
	* drawable surface of this Graphics2D.
	*/
	@:overload @:public @:final public function getSurfaceData() : sun.java2d.SurfaceData;
	
	/**
	* Sets the Composite in the current graphics state. Composite is used
	* in all drawing methods such as drawImage, drawString, drawPath,
	* and fillPath.  It specifies how new pixels are to be combined with
	* the existing pixels on the graphics device in the rendering process.
	* @param comp The Composite object to be used for drawing.
	* @see java.awt.Graphics#setXORMode
	* @see java.awt.Graphics#setPaintMode
	* @see AlphaComposite
	*/
	@:overload @:public override public function setComposite(comp : java.awt.Composite) : Void;
	
	/**
	* Sets the Paint in the current graphics state.
	* @param paint The Paint object to be used to generate color in
	* the rendering process.
	* @see java.awt.Graphics#setColor
	* @see GradientPaint
	* @see TexturePaint
	*/
	@:overload @:public override public function setPaint(paint : java.awt.Paint) : Void;
	
	@:public @:static @:final public static var MinPenSizeAA(default, null) : Float;
	
	@:public @:static @:final public static var MinPenSizeAASquared(default, null) : Float;
	
	@:public @:static @:final public static var MinPenSizeSquared(default, null) : Float;
	
	/*
	* Sets the Stroke in the current graphics state.
	* @param s The Stroke object to be used to stroke a Path in
	* the rendering process.
	* @see BasicStroke
	*/
	@:overload @:public override public function setStroke(s : java.awt.Stroke) : Void;
	
	/**
	* Sets the preferences for the rendering algorithms.
	* Hint categories include controls for rendering quality and
	* overall time/quality trade-off in the rendering process.
	* @param hintKey The key of hint to be set. The strings are
	* defined in the RenderingHints class.
	* @param hintValue The value indicating preferences for the specified
	* hint category. These strings are defined in the RenderingHints
	* class.
	* @see RenderingHints
	*/
	@:overload @:public override public function setRenderingHint(hintKey : java.awt.RenderingHints.RenderingHints_Key, hintValue : Dynamic) : Void;
	
	/**
	* Returns the preferences for the rendering algorithms.
	* @param hintCategory The category of hint to be set. The strings
	* are defined in the RenderingHints class.
	* @return The preferences for rendering algorithms. The strings
	* are defined in the RenderingHints class.
	* @see RenderingHints
	*/
	@:overload @:public override public function getRenderingHint(hintKey : java.awt.RenderingHints.RenderingHints_Key) : Dynamic;
	
	/**
	* Sets the preferences for the rendering algorithms.
	* Hint categories include controls for rendering quality and
	* overall time/quality trade-off in the rendering process.
	* @param hints The rendering hints to be set
	* @see RenderingHints
	*/
	@:overload @:public override public function setRenderingHints(hints : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Adds a number of preferences for the rendering algorithms.
	* Hint categories include controls for rendering quality and
	* overall time/quality trade-off in the rendering process.
	* @param hints The rendering hints to be set
	* @see RenderingHints
	*/
	@:overload @:public override public function addRenderingHints(hints : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Gets the preferences for the rendering algorithms.
	* Hint categories include controls for rendering quality and
	* overall time/quality trade-off in the rendering process.
	* @see RenderingHints
	*/
	@:overload @:public override public function getRenderingHints() : java.awt.RenderingHints;
	
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
	@:overload @:public override public function translate(tx : Float, ty : Float) : Void;
	
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
	@:overload @:public override public function rotate(theta : Float) : Void;
	
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
	@:overload @:public override public function rotate(theta : Float, x : Float, y : Float) : Void;
	
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
	@:overload @:public override public function scale(sx : Float, sy : Float) : Void;
	
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
	@:overload @:public override public function shear(shx : Float, shy : Float) : Void;
	
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
	* @see AffineTransform
	*/
	@:overload @:public override public function transform(xform : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Translate
	*/
	@:overload @:public override public function translate(x : Int, y : Int) : Void;
	
	/**
	* Sets the Transform in the current graphics state.
	* @param Tx The Transform object to be used in the rendering process.
	* @see #transform
	* @see TransformChain
	* @see AffineTransform
	*/
	@:overload @:public override public function setTransform(Tx : java.awt.geom.AffineTransform) : Void;
	
	@:overload @:protected private function invalidateTransform() : Void;
	
	/**
	* Returns the current Transform in the Graphics2D state.
	* @see #transform
	* @see #setTransform
	*/
	@:overload @:public override public function getTransform() : java.awt.geom.AffineTransform;
	
	/**
	* Returns the current Transform ignoring the "constrain"
	* rectangle.
	*/
	@:overload @:public public function cloneTransform() : java.awt.geom.AffineTransform;
	
	/**
	* Returns the current Paint in the Graphics2D state.
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	*/
	@:overload @:public override public function getPaint() : java.awt.Paint;
	
	/**
	* Returns the current Composite in the Graphics2D state.
	* @see #setComposite
	*/
	@:overload @:public override public function getComposite() : java.awt.Composite;
	
	@:overload @:public override public function getColor() : java.awt.Color;
	
	@:overload @:public override public function setColor(color : java.awt.Color) : Void;
	
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
	@:overload @:public override public function setBackground(color : java.awt.Color) : Void;
	
	/**
	* Returns the background color used for clearing a region.
	* @see setBackground
	*/
	@:overload @:public override public function getBackground() : java.awt.Color;
	
	/**
	* Returns the current Stroke in the Graphics2D state.
	* @see setStroke
	*/
	@:overload @:public override public function getStroke() : java.awt.Stroke;
	
	@:overload @:public override public function getClipBounds() : java.awt.Rectangle;
	
	@:overload @:public override public function getClipBounds(r : java.awt.Rectangle) : java.awt.Rectangle;
	
	@:overload @:public override public function hitClip(x : Int, y : Int, width : Int, height : Int) : Bool;
	
	@:overload @:protected private function validateCompClip() : Void;
	
	@:overload @:protected private function transformShape(s : java.awt.Shape) : java.awt.Shape;
	
	@:overload @:public public function untransformShape(s : java.awt.Shape) : java.awt.Shape;
	
	@:native('transformShape') @:overload @:protected @:static private static function _transformShape(tx : Int, ty : Int, s : java.awt.Shape) : java.awt.Shape;
	
	@:native('transformShape') @:overload @:protected @:static private static function _transformShape(tx : java.awt.geom.AffineTransform, clip : java.awt.Shape) : java.awt.Shape;
	
	@:overload @:public override public function clipRect(x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public override public function setClip(x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public override public function getClip() : java.awt.Shape;
	
	@:overload @:public override public function setClip(sh : java.awt.Shape) : Void;
	
	/**
	* Intersects the current clip with the specified Path and sets the
	* current clip to the resulting intersection. The clip is transformed
	* with the current transform in the Graphics2D state before being
	* intersected with the current clip. This method is used to make the
	* current clip smaller. To make the clip larger, use any setClip method.
	* @param p The Path to be intersected with the current clip.
	*/
	@:overload @:public override public function clip(s : java.awt.Shape) : Void;
	
	@:overload @:public override public function setPaintMode() : Void;
	
	@:overload @:public override public function setXORMode(c : java.awt.Color) : Void;
	
	@:overload @:public override public function copyArea(x : Int, y : Int, w : Int, h : Int, dx : Int, dy : Int) : Void;
	
	/*
	public void XcopyArea(int x, int y, int w, int h, int dx, int dy) {
	Rectangle rect = new Rectangle(x, y, w, h);
	rect = transformBounds(rect, transform);
	Point2D    point = new Point2D.Float(dx, dy);
	Point2D    root  = new Point2D.Float(0, 0);
	point = transform.transform(point, point);
	root  = transform.transform(root, root);
	int fdx = (int)(point.getX()-root.getX());
	int fdy = (int)(point.getY()-root.getY());

	Rectangle r = getCompBounds().intersection(rect.getBounds());

	if (r.isEmpty()) {
	return;
	}

	// Begin Rasterizer for Clip Shape
	boolean skipClip = true;
	byte[] clipAlpha = null;

	if (clipState == CLIP_SHAPE) {

	int box[] = new int[4];

	clipRegion.getBounds(box);
	Rectangle devR = new Rectangle(box[0], box[1],
	box[2] - box[0],
	box[3] - box[1]);
	if (!devR.isEmpty()) {
	OutputManager mgr = getOutputManager();
	RegionIterator ri = clipRegion.getIterator();
	while (ri.nextYRange(box)) {
	int spany = box[1];
	int spanh = box[3] - spany;
	while (ri.nextXBand(box)) {
	int spanx = box[0];
	int spanw = box[2] - spanx;
	mgr.copyArea(this, null,
	spanw, 0,
	spanx, spany,
	spanw, spanh,
	fdx, fdy,
	null);
	}
	}
	}
	return;
	}
	// End Rasterizer for Clip Shape

	getOutputManager().copyArea(this, null,
	r.width, 0,
	r.x, r.y, r.width,
	r.height, fdx, fdy,
	null);
	}
	*/
	@:overload @:public override public function drawLine(x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload @:public override public function drawRoundRect(x : Int, y : Int, w : Int, h : Int, arcW : Int, arcH : Int) : Void;
	
	@:overload @:public override public function fillRoundRect(x : Int, y : Int, w : Int, h : Int, arcW : Int, arcH : Int) : Void;
	
	@:overload @:public override public function drawOval(x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public override public function fillOval(x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public override public function drawArc(x : Int, y : Int, w : Int, h : Int, startAngl : Int, arcAngl : Int) : Void;
	
	@:overload @:public override public function fillArc(x : Int, y : Int, w : Int, h : Int, startAngl : Int, arcAngl : Int) : Void;
	
	@:overload @:public override public function drawPolyline(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload @:public override public function drawPolygon(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload @:public override public function fillPolygon(xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload @:public override public function drawRect(x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public override public function fillRect(x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public override public function clearRect(x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Strokes the outline of a Path using the settings of the current
	* graphics state.  The rendering attributes applied include the
	* clip, transform, paint or color, composite and stroke attributes.
	* @param p The path to be drawn.
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
	* Fills the interior of a Path using the settings of the current
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
	* @param img The image to be drawn. Does nothing if img is null.
	* @param xform The transformation from image space into user space.
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload @:public override public function drawRenderedImage(img : java.awt.image.RenderedImage, xform : java.awt.geom.AffineTransform) : Void;
	
	@:overload @:public override public function drawRenderableImage(img : java.awt.image.renderable.RenderableImage, xform : java.awt.geom.AffineTransform) : Void;
	
	/*
	* Transform the bounding box of the BufferedImage
	*/
	@:overload @:protected private function transformBounds(rect : java.awt.Rectangle, tx : java.awt.geom.AffineTransform) : java.awt.Rectangle;
	
	@:overload @:public override public function drawString(str : String, x : Int, y : Int) : Void;
	
	@:overload @:public override public function drawString(str : String, x : Single, y : Single) : Void;
	
	@:overload @:public override public function drawString(iterator : java.text.AttributedCharacterIterator, x : Int, y : Int) : Void;
	
	@:overload @:public override public function drawString(iterator : java.text.AttributedCharacterIterator, x : Single, y : Single) : Void;
	
	@:overload @:public override public function drawGlyphVector(gv : java.awt.font.GlyphVector, x : Single, y : Single) : Void;
	
	@:overload @:public override public function drawChars(data : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, x : Int, y : Int) : Void;
	
	@:overload @:public override public function drawBytes(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int, x : Int, y : Int) : Void;
	
	/**
	* Draws an image scaled to x,y,w,h in nonblocking mode with a
	* callback object.
	*/
	@:overload @:public override public function drawImage(img : java.awt.Image, x : Int, y : Int, width : Int, height : Int, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Not part of the advertised API but a useful utility method
	* to call internally.  This is for the case where we are
	* drawing to/from given coordinates using a given width/height,
	* but we guarantee that the weidth/height of the src and dest
	* areas are equal (no scale needed).
	*/
	@:overload @:public public function copyImage(img : java.awt.Image, dx : Int, dy : Int, sx : Int, sy : Int, width : Int, height : Int, bgcolor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draws an image scaled to x,y,w,h in nonblocking mode with a
	* solid background color and a callback object.
	*/
	@:overload @:public override public function drawImage(img : java.awt.Image, x : Int, y : Int, width : Int, height : Int, bg : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draws an image at x,y in nonblocking mode.
	*/
	@:overload @:public override public function drawImage(img : java.awt.Image, x : Int, y : Int, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draws an image at x,y in nonblocking mode with a solid background
	* color and a callback object.
	*/
	@:overload @:public override public function drawImage(img : java.awt.Image, x : Int, y : Int, bg : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draws a subrectangle of an image scaled to a destination rectangle
	* in nonblocking mode with a callback object.
	*/
	@:overload @:public override public function drawImage(img : java.awt.Image, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draws a subrectangle of an image scaled to a destination rectangle in
	* nonblocking mode with a solid background color and a callback object.
	*/
	@:overload @:public override public function drawImage(img : java.awt.Image, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bgcolor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Draw an image, applying a transform from image space into user space
	* before drawing.
	* The transformation from user space into device space is done with
	* the current transform in the Graphics2D.
	* The given transformation is applied to the image before the
	* transform attribute in the Graphics2D state is applied.
	* The rendering attributes applied include the clip, transform,
	* paint or color and composite attributes. Note that the result is
	* undefined, if the given transform is non-invertible.
	* @param img The image to be drawn.
	* @param xform The transformation from image space into user space.
	* @param observer The image observer to be notified on the image producing
	* progress.
	* @see #transform
	* @see #setComposite
	* @see #setClip
	*/
	@:overload @:public override public function drawImage(img : java.awt.Image, xform : java.awt.geom.AffineTransform, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload @:public override public function drawImage(bImg : java.awt.image.BufferedImage, op : java.awt.image.BufferedImageOp, x : Int, y : Int) : Void;
	
	/**
	* Get the rendering context of the font
	* within this Graphics2D context.
	*/
	@:overload @:public override public function getFontRenderContext() : java.awt.font.FontRenderContext;
	
	/**
	* This object has no resources to dispose of per se, but the
	* doc comments for the base method in java.awt.Graphics imply
	* that this object will not be useable after it is disposed.
	* So, we sabotage the object to prevent further use to prevent
	* developers from relying on behavior that may not work on
	* other, less forgiving, VMs that really need to dispose of
	* resources.
	*/
	@:overload @:public override public function dispose() : Void;
	
	/**
	* Graphics has a finalize method that automatically calls dispose()
	* for subclasses.  For SunGraphics2D we do not need to be finalized
	* so that method simply causes us to be enqueued on the Finalizer
	* queues for no good reason.  Unfortunately, that method and
	* implementation are now considered part of the public contract
	* of that base class so we can not remove or gut the method.
	* We override it here with an empty method and the VM is smart
	* enough to know that if our override is empty then it should not
	* mark us as finalizeable.
	*/
	@:overload @:public override public function finalize() : Void;
	
	/**
	* Returns destination that this Graphics renders to.  This could be
	* either an Image or a Component; subclasses of SurfaceData are
	* responsible for returning the appropriate object.
	*/
	@:overload @:public public function getDestination() : Dynamic;
	
	/**
	* {@inheritDoc}
	*
	* @see sun.java2d.DestSurfaceProvider#getDestSurface
	*/
	@:overload @:public public function getDestSurface() : sun.java2d.Surface;
	
	
}

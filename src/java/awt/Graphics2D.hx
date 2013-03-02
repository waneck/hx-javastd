package java.awt;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class Graphics2D extends java.awt.Graphics
{
	/**
	* Constructs a new <code>Graphics2D</code> object.  Since
	* <code>Graphics2D</code> is an abstract class, and since it must be
	* customized by subclasses for different output devices,
	* <code>Graphics2D</code> objects cannot be created directly.
	* Instead, <code>Graphics2D</code> objects must be obtained from another
	* <code>Graphics2D</code> object, created by a
	* <code>Component</code>, or obtained from images such as
	* {@link BufferedImage} objects.
	* @see java.awt.Component#getGraphics
	* @see java.awt.Graphics#create
	*/
	@:overload private function new() : Void;
	
	/**
	* Draws a 3-D highlighted outline of the specified rectangle.
	* The edges of the rectangle are highlighted so that they
	* appear to be beveled and lit from the upper left corner.
	* <p>
	* The colors used for the highlighting effect are determined
	* based on the current color.
	* The resulting rectangle covers an area that is
	* <code>width&nbsp;+&nbsp;1</code> pixels wide
	* by <code>height&nbsp;+&nbsp;1</code> pixels tall.  This method
	* uses the current <code>Color</code> exclusively and ignores
	* the current <code>Paint</code>.
	* @param x the x coordinate of the rectangle to be drawn.
	* @param y the y coordinate of the rectangle to be drawn.
	* @param width the width of the rectangle to be drawn.
	* @param height the height of the rectangle to be drawn.
	* @param raised a boolean that determines whether the rectangle
	*                      appears to be raised above the surface
	*                      or sunk into the surface.
	* @see         java.awt.Graphics#fill3DRect
	*/
	@:overload public function draw3DRect(x : Int, y : Int, width : Int, height : Int, raised : Bool) : Void;
	
	/**
	* Paints a 3-D highlighted rectangle filled with the current color.
	* The edges of the rectangle are highlighted so that it appears
	* as if the edges were beveled and lit from the upper left corner.
	* The colors used for the highlighting effect and for filling are
	* determined from the current <code>Color</code>.  This method uses
	* the current <code>Color</code> exclusively and ignores the current
	* <code>Paint</code>.
	* @param x the x coordinate of the rectangle to be filled.
	* @param y the y coordinate of the rectangle to be filled.
	* @param       width the width of the rectangle to be filled.
	* @param       height the height of the rectangle to be filled.
	* @param       raised a boolean value that determines whether the
	*                      rectangle appears to be raised above the surface
	*                      or etched into the surface.
	* @see         java.awt.Graphics#draw3DRect
	*/
	@:overload public function fill3DRect(x : Int, y : Int, width : Int, height : Int, raised : Bool) : Void;
	
	/**
	* Strokes the outline of a <code>Shape</code> using the settings of the
	* current <code>Graphics2D</code> context.  The rendering attributes
	* applied include the <code>Clip</code>, <code>Transform</code>,
	* <code>Paint</code>, <code>Composite</code> and
	* <code>Stroke</code> attributes.
	* @param s the <code>Shape</code> to be rendered
	* @see #setStroke
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see #transform
	* @see #setTransform
	* @see #clip
	* @see #setClip
	* @see #setComposite
	*/
	@:overload @:abstract public function draw(s : java.awt.Shape) : Void;
	
	/**
	* Renders an image, applying a transform from image space into user space
	* before drawing.
	* The transformation from user space into device space is done with
	* the current <code>Transform</code> in the <code>Graphics2D</code>.
	* The specified transformation is applied to the image before the
	* transform attribute in the <code>Graphics2D</code> context is applied.
	* The rendering attributes applied include the <code>Clip</code>,
	* <code>Transform</code>, and <code>Composite</code> attributes.
	* Note that no rendering is done if the specified transform is
	* noninvertible.
	* @param img the specified image to be rendered.
	*            This method does nothing if <code>img</code> is null.
	* @param xform the transformation from image space into user space
	* @param obs the {@link ImageObserver}
	* to be notified as more of the <code>Image</code>
	* is converted
	* @return <code>true</code> if the <code>Image</code> is
	* fully loaded and completely rendered, or if it's null;
	* <code>false</code> if the <code>Image</code> is still being loaded.
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload @:abstract public function drawImage(img : java.awt.Image, xform : java.awt.geom.AffineTransform, obs : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Renders a <code>BufferedImage</code> that is
	* filtered with a
	* {@link BufferedImageOp}.
	* The rendering attributes applied include the <code>Clip</code>,
	* <code>Transform</code>
	* and <code>Composite</code> attributes.  This is equivalent to:
	* <pre>
	* img1 = op.filter(img, null);
	* drawImage(img1, new AffineTransform(1f,0f,0f,1f,x,y), null);
	* </pre>
	* @param op the filter to be applied to the image before rendering
	* @param img the specified <code>BufferedImage</code> to be rendered.
	*            This method does nothing if <code>img</code> is null.
	* @param x the x coordinate of the location in user space where
	* the upper left corner of the image is rendered
	* @param y the y coordinate of the location in user space where
	* the upper left corner of the image is rendered
	*
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload @:abstract public function drawImage(img : java.awt.image.BufferedImage, op : java.awt.image.BufferedImageOp, x : Int, y : Int) : Void;
	
	/**
	* Renders a {@link RenderedImage},
	* applying a transform from image
	* space into user space before drawing.
	* The transformation from user space into device space is done with
	* the current <code>Transform</code> in the <code>Graphics2D</code>.
	* The specified transformation is applied to the image before the
	* transform attribute in the <code>Graphics2D</code> context is applied.
	* The rendering attributes applied include the <code>Clip</code>,
	* <code>Transform</code>, and <code>Composite</code> attributes. Note
	* that no rendering is done if the specified transform is
	* noninvertible.
	* @param img the image to be rendered. This method does
	*            nothing if <code>img</code> is null.
	* @param xform the transformation from image space into user space
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload @:abstract public function drawRenderedImage(img : java.awt.image.RenderedImage, xform : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Renders a
	* {@link RenderableImage},
	* applying a transform from image space into user space before drawing.
	* The transformation from user space into device space is done with
	* the current <code>Transform</code> in the <code>Graphics2D</code>.
	* The specified transformation is applied to the image before the
	* transform attribute in the <code>Graphics2D</code> context is applied.
	* The rendering attributes applied include the <code>Clip</code>,
	* <code>Transform</code>, and <code>Composite</code> attributes. Note
	* that no rendering is done if the specified transform is
	* noninvertible.
	*<p>
	* Rendering hints set on the <code>Graphics2D</code> object might
	* be used in rendering the <code>RenderableImage</code>.
	* If explicit control is required over specific hints recognized by a
	* specific <code>RenderableImage</code>, or if knowledge of which hints
	* are used is required, then a <code>RenderedImage</code> should be
	* obtained directly from the <code>RenderableImage</code>
	* and rendered using
	*{@link #drawRenderedImage(RenderedImage, AffineTransform) drawRenderedImage}.
	* @param img the image to be rendered. This method does
	*            nothing if <code>img</code> is null.
	* @param xform the transformation from image space into user space
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	* @see #drawRenderedImage
	*/
	@:overload @:abstract public function drawRenderableImage(img : java.awt.image.renderable.RenderableImage, xform : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Renders the text of the specified <code>String</code>, using the
	* current text attribute state in the <code>Graphics2D</code> context.
	* The baseline of the
	* first character is at position (<i>x</i>,&nbsp;<i>y</i>) in
	* the User Space.
	* The rendering attributes applied include the <code>Clip</code>,
	* <code>Transform</code>, <code>Paint</code>, <code>Font</code> and
	* <code>Composite</code> attributes.  For characters in script
	* systems such as Hebrew and Arabic, the glyphs can be rendered from
	* right to left, in which case the coordinate supplied is the
	* location of the leftmost character on the baseline.
	* @param str the string to be rendered
	* @param x the x coordinate of the location where the
	* <code>String</code> should be rendered
	* @param y the y coordinate of the location where the
	* <code>String</code> should be rendered
	* @throws NullPointerException if <code>str</code> is
	*         <code>null</code>
	* @see         java.awt.Graphics#drawBytes
	* @see         java.awt.Graphics#drawChars
	* @since       JDK1.0
	*/
	@:require(java0) @:overload @:abstract public function drawString(str : String, x : Int, y : Int) : Void;
	
	/**
	* Renders the text specified by the specified <code>String</code>,
	* using the current text attribute state in the <code>Graphics2D</code> context.
	* The baseline of the first character is at position
	* (<i>x</i>,&nbsp;<i>y</i>) in the User Space.
	* The rendering attributes applied include the <code>Clip</code>,
	* <code>Transform</code>, <code>Paint</code>, <code>Font</code> and
	* <code>Composite</code> attributes. For characters in script systems
	* such as Hebrew and Arabic, the glyphs can be rendered from right to
	* left, in which case the coordinate supplied is the location of the
	* leftmost character on the baseline.
	* @param str the <code>String</code> to be rendered
	* @param x the x coordinate of the location where the
	* <code>String</code> should be rendered
	* @param y the y coordinate of the location where the
	* <code>String</code> should be rendered
	* @throws NullPointerException if <code>str</code> is
	*         <code>null</code>
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see java.awt.Graphics#setFont
	* @see #setTransform
	* @see #setComposite
	* @see #setClip
	*/
	@:overload @:abstract public function drawString(str : String, x : Single, y : Single) : Void;
	
	/**
	* Renders the text of the specified iterator applying its attributes
	* in accordance with the specification of the {@link TextAttribute} class.
	* <p>
	* The baseline of the first character is at position
	* (<i>x</i>,&nbsp;<i>y</i>) in User Space.
	* For characters in script systems such as Hebrew and Arabic,
	* the glyphs can be rendered from right to left, in which case the
	* coordinate supplied is the location of the leftmost character
	* on the baseline.
	* @param iterator the iterator whose text is to be rendered
	* @param x the x coordinate where the iterator's text is to be
	* rendered
	* @param y the y coordinate where the iterator's text is to be
	* rendered
	* @throws NullPointerException if <code>iterator</code> is
	*         <code>null</code>
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see #setTransform
	* @see #setComposite
	* @see #setClip
	*/
	@:overload @:abstract public function drawString(iterator : java.text.AttributedCharacterIterator, x : Int, y : Int) : Void;
	
	/**
	* Renders the text of the specified iterator applying its attributes
	* in accordance with the specification of the {@link TextAttribute} class.
	* <p>
	* The baseline of the first character is at position
	* (<i>x</i>,&nbsp;<i>y</i>) in User Space.
	* For characters in script systems such as Hebrew and Arabic,
	* the glyphs can be rendered from right to left, in which case the
	* coordinate supplied is the location of the leftmost character
	* on the baseline.
	* @param iterator the iterator whose text is to be rendered
	* @param x the x coordinate where the iterator's text is to be
	* rendered
	* @param y the y coordinate where the iterator's text is to be
	* rendered
	* @throws NullPointerException if <code>iterator</code> is
	*         <code>null</code>
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see #setTransform
	* @see #setComposite
	* @see #setClip
	*/
	@:overload @:abstract public function drawString(iterator : java.text.AttributedCharacterIterator, x : Single, y : Single) : Void;
	
	/**
	* Renders the text of the specified
	* {@link GlyphVector} using
	* the <code>Graphics2D</code> context's rendering attributes.
	* The rendering attributes applied include the <code>Clip</code>,
	* <code>Transform</code>, <code>Paint</code>, and
	* <code>Composite</code> attributes.  The <code>GlyphVector</code>
	* specifies individual glyphs from a {@link Font}.
	* The <code>GlyphVector</code> can also contain the glyph positions.
	* This is the fastest way to render a set of characters to the
	* screen.
	* @param g the <code>GlyphVector</code> to be rendered
	* @param x the x position in User Space where the glyphs should
	* be rendered
	* @param y the y position in User Space where the glyphs should
	* be rendered
	* @throws NullPointerException if <code>g</code> is <code>null</code>.
	*
	* @see java.awt.Font#createGlyphVector
	* @see java.awt.font.GlyphVector
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see #setTransform
	* @see #setComposite
	* @see #setClip
	*/
	@:overload @:abstract public function drawGlyphVector(g : java.awt.font.GlyphVector, x : Single, y : Single) : Void;
	
	/**
	* Fills the interior of a <code>Shape</code> using the settings of the
	* <code>Graphics2D</code> context. The rendering attributes applied
	* include the <code>Clip</code>, <code>Transform</code>,
	* <code>Paint</code>, and <code>Composite</code>.
	* @param s the <code>Shape</code> to be filled
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see #transform
	* @see #setTransform
	* @see #setComposite
	* @see #clip
	* @see #setClip
	*/
	@:overload @:abstract public function fill(s : java.awt.Shape) : Void;
	
	/**
	* Checks whether or not the specified <code>Shape</code> intersects
	* the specified {@link Rectangle}, which is in device
	* space. If <code>onStroke</code> is false, this method checks
	* whether or not the interior of the specified <code>Shape</code>
	* intersects the specified <code>Rectangle</code>.  If
	* <code>onStroke</code> is <code>true</code>, this method checks
	* whether or not the <code>Stroke</code> of the specified
	* <code>Shape</code> outline intersects the specified
	* <code>Rectangle</code>.
	* The rendering attributes taken into account include the
	* <code>Clip</code>, <code>Transform</code>, and <code>Stroke</code>
	* attributes.
	* @param rect the area in device space to check for a hit
	* @param s the <code>Shape</code> to check for a hit
	* @param onStroke flag used to choose between testing the
	* stroked or the filled shape.  If the flag is <code>true</code>, the
	* <code>Stroke</code> oultine is tested.  If the flag is
	* <code>false</code>, the filled <code>Shape</code> is tested.
	* @return <code>true</code> if there is a hit; <code>false</code>
	* otherwise.
	* @see #setStroke
	* @see #fill
	* @see #draw
	* @see #transform
	* @see #setTransform
	* @see #clip
	* @see #setClip
	*/
	@:overload @:abstract public function hit(rect : java.awt.Rectangle, s : java.awt.Shape, onStroke : Bool) : Bool;
	
	/**
	* Returns the device configuration associated with this
	* <code>Graphics2D</code>.
	* @return the device configuration of this <code>Graphics2D</code>.
	*/
	@:overload @:abstract public function getDeviceConfiguration() : java.awt.GraphicsConfiguration;
	
	/**
	* Sets the <code>Composite</code> for the <code>Graphics2D</code> context.
	* The <code>Composite</code> is used in all drawing methods such as
	* <code>drawImage</code>, <code>drawString</code>, <code>draw</code>,
	* and <code>fill</code>.  It specifies how new pixels are to be combined
	* with the existing pixels on the graphics device during the rendering
	* process.
	* <p>If this <code>Graphics2D</code> context is drawing to a
	* <code>Component</code> on the display screen and the
	* <code>Composite</code> is a custom object rather than an
	* instance of the <code>AlphaComposite</code> class, and if
	* there is a security manager, its <code>checkPermission</code>
	* method is called with an <code>AWTPermission("readDisplayPixels")</code>
	* permission.
	* @throws SecurityException
	*         if a custom <code>Composite</code> object is being
	*         used to render to the screen and a security manager
	*         is set and its <code>checkPermission</code> method
	*         does not allow the operation.
	* @param comp the <code>Composite</code> object to be used for rendering
	* @see java.awt.Graphics#setXORMode
	* @see java.awt.Graphics#setPaintMode
	* @see #getComposite
	* @see AlphaComposite
	* @see SecurityManager#checkPermission
	* @see java.awt.AWTPermission
	*/
	@:overload @:abstract public function setComposite(comp : java.awt.Composite) : Void;
	
	/**
	* Sets the <code>Paint</code> attribute for the
	* <code>Graphics2D</code> context.  Calling this method
	* with a <code>null</code> <code>Paint</code> object does
	* not have any effect on the current <code>Paint</code> attribute
	* of this <code>Graphics2D</code>.
	* @param paint the <code>Paint</code> object to be used to generate
	* color during the rendering process, or <code>null</code>
	* @see java.awt.Graphics#setColor
	* @see #getPaint
	* @see GradientPaint
	* @see TexturePaint
	*/
	@:overload @:abstract public function setPaint(paint : java.awt.Paint) : Void;
	
	/**
	* Sets the <code>Stroke</code> for the <code>Graphics2D</code> context.
	* @param s the <code>Stroke</code> object to be used to stroke a
	* <code>Shape</code> during the rendering process
	* @see BasicStroke
	* @see #getStroke
	*/
	@:overload @:abstract public function setStroke(s : java.awt.Stroke) : Void;
	
	/**
	* Sets the value of a single preference for the rendering algorithms.
	* Hint categories include controls for rendering quality and overall
	* time/quality trade-off in the rendering process.  Refer to the
	* <code>RenderingHints</code> class for definitions of some common
	* keys and values.
	* @param hintKey the key of the hint to be set.
	* @param hintValue the value indicating preferences for the specified
	* hint category.
	* @see #getRenderingHint(RenderingHints.Key)
	* @see RenderingHints
	*/
	@:overload @:abstract public function setRenderingHint(hintKey : java.awt.RenderingHints.RenderingHints_Key, hintValue : Dynamic) : Void;
	
	/**
	* Returns the value of a single preference for the rendering algorithms.
	* Hint categories include controls for rendering quality and overall
	* time/quality trade-off in the rendering process.  Refer to the
	* <code>RenderingHints</code> class for definitions of some common
	* keys and values.
	* @param hintKey the key corresponding to the hint to get.
	* @return an object representing the value for the specified hint key.
	* Some of the keys and their associated values are defined in the
	* <code>RenderingHints</code> class.
	* @see RenderingHints
	* @see #setRenderingHint(RenderingHints.Key, Object)
	*/
	@:overload @:abstract public function getRenderingHint(hintKey : java.awt.RenderingHints.RenderingHints_Key) : Dynamic;
	
	/**
	* Replaces the values of all preferences for the rendering
	* algorithms with the specified <code>hints</code>.
	* The existing values for all rendering hints are discarded and
	* the new set of known hints and values are initialized from the
	* specified {@link Map} object.
	* Hint categories include controls for rendering quality and
	* overall time/quality trade-off in the rendering process.
	* Refer to the <code>RenderingHints</code> class for definitions of
	* some common keys and values.
	* @param hints the rendering hints to be set
	* @see #getRenderingHints
	* @see RenderingHints
	*/
	@:overload @:abstract public function setRenderingHints(hints : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Sets the values of an arbitrary number of preferences for the
	* rendering algorithms.
	* Only values for the rendering hints that are present in the
	* specified <code>Map</code> object are modified.
	* All other preferences not present in the specified
	* object are left unmodified.
	* Hint categories include controls for rendering quality and
	* overall time/quality trade-off in the rendering process.
	* Refer to the <code>RenderingHints</code> class for definitions of
	* some common keys and values.
	* @param hints the rendering hints to be set
	* @see RenderingHints
	*/
	@:overload @:abstract public function addRenderingHints(hints : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Gets the preferences for the rendering algorithms.  Hint categories
	* include controls for rendering quality and overall time/quality
	* trade-off in the rendering process.
	* Returns all of the hint key/value pairs that were ever specified in
	* one operation.  Refer to the
	* <code>RenderingHints</code> class for definitions of some common
	* keys and values.
	* @return a reference to an instance of <code>RenderingHints</code>
	* that contains the current preferences.
	* @see RenderingHints
	* @see #setRenderingHints(Map)
	*/
	@:overload @:abstract public function getRenderingHints() : java.awt.RenderingHints;
	
	/**
	* Translates the origin of the <code>Graphics2D</code> context to the
	* point (<i>x</i>,&nbsp;<i>y</i>) in the current coordinate system.
	* Modifies the <code>Graphics2D</code> context so that its new origin
	* corresponds to the point (<i>x</i>,&nbsp;<i>y</i>) in the
	* <code>Graphics2D</code> context's former coordinate system.  All
	* coordinates used in subsequent rendering operations on this graphics
	* context are relative to this new origin.
	* @param  x the specified x coordinate
	* @param  y the specified y coordinate
	* @since   JDK1.0
	*/
	@:require(java0) @:overload @:abstract public function translate(x : Int, y : Int) : Void;
	
	/**
	* Concatenates the current
	* <code>Graphics2D</code> <code>Transform</code>
	* with a translation transform.
	* Subsequent rendering is translated by the specified
	* distance relative to the previous position.
	* This is equivalent to calling transform(T), where T is an
	* <code>AffineTransform</code> represented by the following matrix:
	* <pre>
	*          [   1    0    tx  ]
	*          [   0    1    ty  ]
	*          [   0    0    1   ]
	* </pre>
	* @param tx the distance to translate along the x-axis
	* @param ty the distance to translate along the y-axis
	*/
	@:overload @:abstract public function translate(tx : Float, ty : Float) : Void;
	
	/**
	* Concatenates the current <code>Graphics2D</code>
	* <code>Transform</code> with a rotation transform.
	* Subsequent rendering is rotated by the specified radians relative
	* to the previous origin.
	* This is equivalent to calling <code>transform(R)</code>, where R is an
	* <code>AffineTransform</code> represented by the following matrix:
	* <pre>
	*          [   cos(theta)    -sin(theta)    0   ]
	*          [   sin(theta)     cos(theta)    0   ]
	*          [       0              0         1   ]
	* </pre>
	* Rotating with a positive angle theta rotates points on the positive
	* x axis toward the positive y axis.
	* @param theta the angle of rotation in radians
	*/
	@:overload @:abstract public function rotate(theta : Float) : Void;
	
	/**
	* Concatenates the current <code>Graphics2D</code>
	* <code>Transform</code> with a translated rotation
	* transform.  Subsequent rendering is transformed by a transform
	* which is constructed by translating to the specified location,
	* rotating by the specified radians, and translating back by the same
	* amount as the original translation.  This is equivalent to the
	* following sequence of calls:
	* <pre>
	*          translate(x, y);
	*          rotate(theta);
	*          translate(-x, -y);
	* </pre>
	* Rotating with a positive angle theta rotates points on the positive
	* x axis toward the positive y axis.
	* @param theta the angle of rotation in radians
	* @param x the x coordinate of the origin of the rotation
	* @param y the y coordinate of the origin of the rotation
	*/
	@:overload @:abstract public function rotate(theta : Float, x : Float, y : Float) : Void;
	
	/**
	* Concatenates the current <code>Graphics2D</code>
	* <code>Transform</code> with a scaling transformation
	* Subsequent rendering is resized according to the specified scaling
	* factors relative to the previous scaling.
	* This is equivalent to calling <code>transform(S)</code>, where S is an
	* <code>AffineTransform</code> represented by the following matrix:
	* <pre>
	*          [   sx   0    0   ]
	*          [   0    sy   0   ]
	*          [   0    0    1   ]
	* </pre>
	* @param sx the amount by which X coordinates in subsequent
	* rendering operations are multiplied relative to previous
	* rendering operations.
	* @param sy the amount by which Y coordinates in subsequent
	* rendering operations are multiplied relative to previous
	* rendering operations.
	*/
	@:overload @:abstract public function scale(sx : Float, sy : Float) : Void;
	
	/**
	* Concatenates the current <code>Graphics2D</code>
	* <code>Transform</code> with a shearing transform.
	* Subsequent renderings are sheared by the specified
	* multiplier relative to the previous position.
	* This is equivalent to calling <code>transform(SH)</code>, where SH
	* is an <code>AffineTransform</code> represented by the following
	* matrix:
	* <pre>
	*          [   1   shx   0   ]
	*          [  shy   1    0   ]
	*          [   0    0    1   ]
	* </pre>
	* @param shx the multiplier by which coordinates are shifted in
	* the positive X axis direction as a function of their Y coordinate
	* @param shy the multiplier by which coordinates are shifted in
	* the positive Y axis direction as a function of their X coordinate
	*/
	@:overload @:abstract public function shear(shx : Float, shy : Float) : Void;
	
	/**
	* Composes an <code>AffineTransform</code> object with the
	* <code>Transform</code> in this <code>Graphics2D</code> according
	* to the rule last-specified-first-applied.  If the current
	* <code>Transform</code> is Cx, the result of composition
	* with Tx is a new <code>Transform</code> Cx'.  Cx' becomes the
	* current <code>Transform</code> for this <code>Graphics2D</code>.
	* Transforming a point p by the updated <code>Transform</code> Cx' is
	* equivalent to first transforming p by Tx and then transforming
	* the result by the original <code>Transform</code> Cx.  In other
	* words, Cx'(p) = Cx(Tx(p)).  A copy of the Tx is made, if necessary,
	* so further modifications to Tx do not affect rendering.
	* @param Tx the <code>AffineTransform</code> object to be composed with
	* the current <code>Transform</code>
	* @see #setTransform
	* @see AffineTransform
	*/
	@:overload @:abstract public function transform(Tx : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Overwrites the Transform in the <code>Graphics2D</code> context.
	* WARNING: This method should <b>never</b> be used to apply a new
	* coordinate transform on top of an existing transform because the
	* <code>Graphics2D</code> might already have a transform that is
	* needed for other purposes, such as rendering Swing
	* components or applying a scaling transformation to adjust for the
	* resolution of a printer.
	* <p>To add a coordinate transform, use the
	* <code>transform</code>, <code>rotate</code>, <code>scale</code>,
	* or <code>shear</code> methods.  The <code>setTransform</code>
	* method is intended only for restoring the original
	* <code>Graphics2D</code> transform after rendering, as shown in this
	* example:
	* <pre><blockquote>
	* // Get the current transform
	* AffineTransform saveAT = g2.getTransform();
	* // Perform transformation
	* g2d.transform(...);
	* // Render
	* g2d.draw(...);
	* // Restore original transform
	* g2d.setTransform(saveAT);
	* </blockquote></pre>
	*
	* @param Tx the <code>AffineTransform</code> that was retrieved
	*           from the <code>getTransform</code> method
	* @see #transform
	* @see #getTransform
	* @see AffineTransform
	*/
	@:overload @:abstract public function setTransform(Tx : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Returns a copy of the current <code>Transform</code> in the
	* <code>Graphics2D</code> context.
	* @return the current <code>AffineTransform</code> in the
	*             <code>Graphics2D</code> context.
	* @see #transform
	* @see #setTransform
	*/
	@:overload @:abstract public function getTransform() : java.awt.geom.AffineTransform;
	
	/**
	* Returns the current <code>Paint</code> of the
	* <code>Graphics2D</code> context.
	* @return the current <code>Graphics2D</code> <code>Paint</code>,
	* which defines a color or pattern.
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	*/
	@:overload @:abstract public function getPaint() : java.awt.Paint;
	
	/**
	* Returns the current <code>Composite</code> in the
	* <code>Graphics2D</code> context.
	* @return the current <code>Graphics2D</code> <code>Composite</code>,
	*              which defines a compositing style.
	* @see #setComposite
	*/
	@:overload @:abstract public function getComposite() : java.awt.Composite;
	
	/**
	* Sets the background color for the <code>Graphics2D</code> context.
	* The background color is used for clearing a region.
	* When a <code>Graphics2D</code> is constructed for a
	* <code>Component</code>, the background color is
	* inherited from the <code>Component</code>. Setting the background color
	* in the <code>Graphics2D</code> context only affects the subsequent
	* <code>clearRect</code> calls and not the background color of the
	* <code>Component</code>.  To change the background
	* of the <code>Component</code>, use appropriate methods of
	* the <code>Component</code>.
	* @param color the background color that isused in
	* subsequent calls to <code>clearRect</code>
	* @see #getBackground
	* @see java.awt.Graphics#clearRect
	*/
	@:overload @:abstract public function setBackground(color : java.awt.Color) : Void;
	
	/**
	* Returns the background color used for clearing a region.
	* @return the current <code>Graphics2D</code> <code>Color</code>,
	* which defines the background color.
	* @see #setBackground
	*/
	@:overload @:abstract public function getBackground() : java.awt.Color;
	
	/**
	* Returns the current <code>Stroke</code> in the
	* <code>Graphics2D</code> context.
	* @return the current <code>Graphics2D</code> <code>Stroke</code>,
	*                 which defines the line style.
	* @see #setStroke
	*/
	@:overload @:abstract public function getStroke() : java.awt.Stroke;
	
	/**
	* Intersects the current <code>Clip</code> with the interior of the
	* specified <code>Shape</code> and sets the <code>Clip</code> to the
	* resulting intersection.  The specified <code>Shape</code> is
	* transformed with the current <code>Graphics2D</code>
	* <code>Transform</code> before being intersected with the current
	* <code>Clip</code>.  This method is used to make the current
	* <code>Clip</code> smaller.
	* To make the <code>Clip</code> larger, use <code>setClip</code>.
	* The <i>user clip</i> modified by this method is independent of the
	* clipping associated with device bounds and visibility.  If no clip has
	* previously been set, or if the clip has been cleared using
	* {@link Graphics#setClip(Shape) setClip} with a <code>null</code>
	* argument, the specified <code>Shape</code> becomes the new
	* user clip.
	* @param s the <code>Shape</code> to be intersected with the current
	*          <code>Clip</code>.  If <code>s</code> is <code>null</code>,
	*          this method clears the current <code>Clip</code>.
	*/
	@:overload @:abstract public function clip(s : java.awt.Shape) : Void;
	
	/**
	* Get the rendering context of the <code>Font</code> within this
	* <code>Graphics2D</code> context.
	* The {@link FontRenderContext}
	* encapsulates application hints such as anti-aliasing and
	* fractional metrics, as well as target device specific information
	* such as dots-per-inch.  This information should be provided by the
	* application when using objects that perform typographical
	* formatting, such as <code>Font</code> and
	* <code>TextLayout</code>.  This information should also be provided
	* by applications that perform their own layout and need accurate
	* measurements of various characteristics of glyphs such as advance
	* and line height when various rendering hints have been applied to
	* the text rendering.
	*
	* @return a reference to an instance of FontRenderContext.
	* @see java.awt.font.FontRenderContext
	* @see java.awt.Font#createGlyphVector
	* @see java.awt.font.TextLayout
	* @since     1.2
	*/
	@:require(java2) @:overload @:abstract public function getFontRenderContext() : java.awt.font.FontRenderContext;
	
	
}

package java.awt.peer;
/*
* Copyright (c) 1995, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern interface ComponentPeer
{
	/**
	* Determines if a component has been obscured, i.e. by an overlapping
	* window or similar. This is used by JViewport for optimizing performance.
	* This doesn't have to be implemented, when
	* {@link #canDetermineObscurity()} returns {@code false}.
	*
	* @return {@code true} when the component has been obscured,
	*         {@code false} otherwise
	*
	* @see #canDetermineObscurity()
	* @see javax.swing.JViewport#needsRepaintAfterBlit
	*/
	@:overload public function isObscured() : Bool;
	
	/**
	* Returns {@code true} when the peer can determine if a component
	* has been obscured, {@code false} false otherwise.
	*
	* @return {@code true} when the peer can determine if a component
	*         has been obscured, {@code false} false otherwise
	*
	* @see #isObscured()
	* @see javax.swing.JViewport#needsRepaintAfterBlit
	*/
	@:overload public function canDetermineObscurity() : Bool;
	
	/**
	* Makes a component visible or invisible.
	*
	* @param v {@code true} to make a component visible,
	*          {@code false} to make it invisible
	*
	* @see Component#setVisible(boolean)
	*/
	@:overload public function setVisible(v : Bool) : Void;
	
	/**
	* Enables or disables a component. Disabled components are usually grayed
	* out and cannot be activated.
	*
	* @param e {@code true} to enable the component, {@code false}
	*          to disable it
	*
	* @see Component#setEnabled(boolean)
	*/
	@:overload public function setEnabled(e : Bool) : Void;
	
	/**
	* Paints the component to the specified graphics context. This is called
	* by {@link Component#paintAll(Graphics)} to paint the component.
	*
	* @param g the graphics context to paint to
	*
	* @see Component#paintAll(Graphics)
	*/
	@:overload public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* Prints the component to the specified graphics context. This is called
	* by {@link Component#printAll(Graphics)} to print the component.
	*
	* @param g the graphics context to print to
	*
	* @see Component#printAll(Graphics)
	*/
	@:overload public function print(g : java.awt.Graphics) : Void;
	
	/**
	* Sets the location or size or both of the component. The location is
	* specified relative to the component's parent. The {@code op}
	* parameter specifies which properties change. If it is
	* {@link #SET_LOCATION}, then only the location changes (and the size
	* parameters can be ignored). If {@code op} is {@link #SET_SIZE},
	* then only the size changes (and the location can be ignored). If
	* {@code op} is {@link #SET_BOUNDS}, then both change. There is a
	* special value {@link #SET_CLIENT_SIZE}, which is used only for
	* window-like components to set the size of the client (i.e. the 'inner'
	* size, without the insets of the window borders).
	*
	* @param x the X location of the component
	* @param y the Y location of the component
	* @param width the width of the component
	* @param height the height of the component
	* @param op the operation flag
	*
	* @see #SET_BOUNDS
	* @see #SET_LOCATION
	* @see #SET_SIZE
	* @see #SET_CLIENT_SIZE
	*/
	@:overload public function setBounds(x : Int, y : Int, width : Int, height : Int, op : Int) : Void;
	
	/**
	* Called to let the component peer handle events.
	*
	* @param e the AWT event to handle
	*
	* @see Component#dispatchEvent(AWTEvent)
	*/
	@:overload public function handleEvent(e : java.awt.AWTEvent) : Void;
	
	/**
	* Called to coalesce paint events.
	*
	* @param e the paint event to consider to coalesce
	*
	* @see EventQueue#coalescePaintEvent
	*/
	@:overload public function coalescePaintEvent(e : java.awt.event.PaintEvent) : Void;
	
	/**
	* Determines the location of the component on the screen.
	*
	* @return the location of the component on the screen
	*
	* @see Component#getLocationOnScreen()
	*/
	@:overload public function getLocationOnScreen() : java.awt.Point;
	
	/**
	* Determines the preferred size of the component.
	*
	* @return the preferred size of the component
	*
	* @see Component#getPreferredSize()
	*/
	@:overload public function getPreferredSize() : java.awt.Dimension;
	
	/**
	* Determines the minimum size of the component.
	*
	* @return the minimum size of the component
	*
	* @see Component#getMinimumSize()
	*/
	@:overload public function getMinimumSize() : java.awt.Dimension;
	
	/**
	* Returns the color model used by the component.
	*
	* @return the color model used by the component
	*
	* @see Component#getColorModel()
	*/
	@:overload public function getColorModel() : java.awt.image.ColorModel;
	
	/**
	* Returns the toolkit that is responsible for the component.
	*
	* @return the toolkit that is responsible for the component
	*
	* @see Component#getToolkit()
	*/
	@:overload public function getToolkit() : java.awt.Toolkit;
	
	/**
	* Returns a graphics object to paint on the component.
	*
	* @return a graphics object to paint on the component
	*
	* @see Component#getGraphics()
	*/
	@:overload public function getGraphics() : java.awt.Graphics;
	
	/**
	* Returns a font metrics object to determine the metrics properties of
	* the specified font.
	*
	* @param font the font to determine the metrics for
	*
	* @return a font metrics object to determine the metrics properties of
	*         the specified font
	*
	* @see Component#getFontMetrics(Font)
	*/
	@:overload public function getFontMetrics(font : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Disposes all resources held by the component peer. This is called
	* when the component has been disconnected from the component hierarchy
	* and is about to be garbage collected.
	*
	* @see Component#removeNotify()
	*/
	@:overload public function dispose() : Void;
	
	/**
	* Sets the foreground color of this component.
	*
	* @param c the foreground color to set
	*
	* @see Component#setForeground(Color)
	*/
	@:overload public function setForeground(c : java.awt.Color) : Void;
	
	/**
	* Sets the background color of this component.
	*
	* @param c the background color to set
	*
	* @see Component#setBackground(Color)
	*/
	@:overload public function setBackground(c : java.awt.Color) : Void;
	
	/**
	* Sets the font of this component.
	*
	* @param f the font of this component
	*
	* @see Component#setFont(Font)
	*/
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	/**
	* Updates the cursor of the component.
	*
	* @see Component#updateCursorImmediately
	*/
	@:overload public function updateCursorImmediately() : Void;
	
	/**
	* Requests focus on this component.
	*
	* @param lightweightChild the actual lightweight child that requests the
	*        focus
	* @param temporary {@code true} if the focus change is temporary,
	*        {@code false} otherwise
	* @param focusedWindowChangeAllowed {@code true} if changing the
	*        focus of the containing window is allowed or not
	* @param time the time of the focus change request
	* @param cause the cause of the focus change request
	*
	* @return {@code true} if the focus change is guaranteed to be
	*         granted, {@code false} otherwise
	*/
	@:overload public function requestFocus(lightweightChild : java.awt.Component, temporary : Bool, focusedWindowChangeAllowed : Bool, time : haxe.Int64, cause : sun.awt.CausedFocusEvent.CausedFocusEvent_Cause) : Bool;
	
	/**
	* Returns {@code true} when the component takes part in the focus
	* traversal, {@code false} otherwise.
	*
	* @return {@code true} when the component takes part in the focus
	*         traversal, {@code false} otherwise
	*/
	@:overload public function isFocusable() : Bool;
	
	/**
	* Creates an image using the specified image producer.
	*
	* @param producer the image producer from which the image pixels will be
	*        produced
	*
	* @return the created image
	*
	* @see Component#createImage(ImageProducer)
	*/
	@:overload public function createImage(producer : java.awt.image.ImageProducer) : java.awt.Image;
	
	/**
	* Creates an empty image with the specified width and height. This is
	* generally used as a non-accelerated backbuffer for drawing onto the
	* component (e.g. by Swing).
	*
	* @param width the width of the image
	* @param height the height of the image
	*
	* @return the created image
	*
	* @see Component#createImage(int, int)
	*/
	@:overload public function createImage(width : Int, height : Int) : java.awt.Image;
	
	/**
	* Creates an empty volatile image with the specified width and height.
	* This is generally used as an accelerated backbuffer for drawing onto
	* the component (e.g. by Swing).
	*
	* @param width the width of the image
	* @param height the height of the image
	*
	* @return the created volatile image
	*
	* @see Component#createVolatileImage(int, int)
	*/
	@:overload public function createVolatileImage(width : Int, height : Int) : java.awt.image.VolatileImage;
	
	/**
	* Prepare the specified image for rendering on this component. This should
	* start loading the image (if not already loaded) and create an
	* appropriate screen representation.
	*
	* @param img the image to prepare
	* @param w the width of the screen representation
	* @param h the height of the screen representation
	* @param o an image observer to observe the progress
	*
	* @return {@code true} if the image is already fully prepared,
	*         {@code false} otherwise
	*
	* @see Component#prepareImage(Image, int, int, ImageObserver)
	*/
	@:overload public function prepareImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Determines the status of the construction of the screen representaion
	* of the specified image.
	*
	* @param img the image to check
	* @param w the target width
	* @param h the target height
	* @param o the image observer to notify
	*
	* @return the status as bitwise ORed ImageObserver flags
	*
	* @see Component#checkImage(Image, int, int, ImageObserver)
	*/
	@:overload public function checkImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Int;
	
	/**
	* Returns the graphics configuration that corresponds to this component.
	*
	* @return the graphics configuration that corresponds to this component
	*
	* @see Component#getGraphicsConfiguration()
	*/
	@:overload public function getGraphicsConfiguration() : java.awt.GraphicsConfiguration;
	
	/**
	* Determines if the component handles wheel scrolling itself. Otherwise
	* it is delegated to the component's parent.
	*
	* @return {@code true} if the component handles wheel scrolling,
	*         {@code false} otherwise
	*
	* @see Component#dispatchEventImpl(AWTEvent)
	*/
	@:overload public function handlesWheelScrolling() : Bool;
	
	/**
	* Create {@code numBuffers} flipping buffers with the specified
	* buffer capabilities.
	*
	* @param numBuffers the number of buffers to create
	* @param caps the buffer capabilities
	*
	* @throws AWTException if flip buffering is not supported
	*
	* @see Component.FlipBufferStrategy#createBuffers
	*/
	@:overload public function createBuffers(numBuffers : Int, caps : java.awt.BufferCapabilities) : Void;
	
	/**
	* Returns the back buffer as image.
	*
	* @return the back buffer as image
	*
	* @see Component.FlipBufferStrategy#getBackBuffer
	*/
	@:overload public function getBackBuffer() : java.awt.Image;
	
	/**
	* Move the back buffer to the front buffer.
	*
	* @param x1 the area to be flipped, upper left X coordinate
	* @param y1 the area to be flipped, upper left Y coordinate
	* @param x2 the area to be flipped, lower right X coordinate
	* @param y2 the area to be flipped, lower right Y coordinate
	* @param flipAction the flip action to perform
	*
	* @see Component.FlipBufferStrategy#flip
	*/
	@:overload public function flip(x1 : Int, y1 : Int, x2 : Int, y2 : Int, flipAction : java.awt.BufferCapabilities.BufferCapabilities_FlipContents) : Void;
	
	/**
	* Destroys all created buffers.
	*
	* @see Component.FlipBufferStrategy#destroyBuffers
	*/
	@:overload public function destroyBuffers() : Void;
	
	/**
	* Reparents this peer to the new parent referenced by
	* {@code newContainer} peer. Implementation depends on toolkit and
	* container.
	*
	* @param newContainer peer of the new parent container
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function reparent(newContainer : java.awt.peer.ContainerPeer) : Void;
	
	/**
	* Returns whether this peer supports reparenting to another parent without
	* destroying the peer.
	*
	* @return true if appropriate reparent is supported, false otherwise
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function isReparentSupported() : Bool;
	
	/**
	* Used by lightweight implementations to tell a ComponentPeer to layout
	* its sub-elements.  For instance, a lightweight Checkbox needs to layout
	* the box, as well as the text label.
	*
	* @see Component#validate()
	*/
	@:overload public function layout() : Void;
	
	/**
	* Applies the shape to the native component window.
	* @since 1.7
	*
	* @see Component#applyCompoundShape
	*/
	@:require(java7) @:overload public function applyShape(shape : sun.java2d.pipe.Region) : Void;
	
	/**
	* Lowers this component at the bottom of the above HW peer. If the above parameter
	* is null then the method places this component at the top of the Z-order.
	*/
	@:overload public function setZOrder(above : ComponentPeer) : Void;
	
	/**
	* Updates internal data structures related to the component's GC.
	*
	* @return if the peer needs to be recreated for the changes to take effect
	* @since 1.7
	*/
	@:require(java7) @:overload public function updateGraphicsData(gc : java.awt.GraphicsConfiguration) : Bool;
	
	
}

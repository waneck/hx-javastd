package com.sun.awt;
/*
* Copyright (c) 2008, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class AWTUtilities
{
	/**
	* Returns whether the given level of translucency is supported by
	* the underlying system.
	*
	* Note that this method may sometimes return the value
	* indicating that the particular level is supported, but
	* the native windowing system may still not support the
	* given level of translucency (due to the bugs in
	* the windowing system).
	*
	* @param translucencyKind a kind of translucency support
	*                         (either PERPIXEL_TRANSPARENT,
	*                         TRANSLUCENT, or PERPIXEL_TRANSLUCENT)
	* @return whether the given translucency kind is supported
	*/
	@:overload @:public @:static public static function isTranslucencySupported(translucencyKind : com.sun.awt.AWTUtilities.AWTUtilities_Translucency) : Bool;
	
	/**
	* Set the opacity of the window. The opacity is at the range [0..1].
	* Note that setting the opacity level of 0 may or may not disable
	* the mouse event handling on this window. This is
	* a platform-dependent behavior.
	*
	* In order for this method to enable the translucency effect,
	* the isTranslucencySupported() method should indicate that the
	* TRANSLUCENT level of translucency is supported.
	*
	* <p>Also note that the window must not be in the full-screen mode
	* when setting the opacity value &lt; 1.0f. Otherwise
	* the IllegalArgumentException is thrown.
	*
	* @param window the window to set the opacity level to
	* @param opacity the opacity level to set to the window
	* @throws NullPointerException if the window argument is null
	* @throws IllegalArgumentException if the opacity is out of
	*                                  the range [0..1]
	* @throws IllegalArgumentException if the window is in full screen mode,
	*                                  and the opacity is less than 1.0f
	* @throws UnsupportedOperationException if the TRANSLUCENT translucency
	*                                       kind is not supported
	*/
	@:overload @:public @:static public static function setWindowOpacity(window : java.awt.Window, opacity : Single) : Void;
	
	/**
	* Get the opacity of the window. If the opacity has not
	* yet being set, this method returns 1.0.
	*
	* @param window the window to get the opacity level from
	* @throws NullPointerException if the window argument is null
	*/
	@:overload @:public @:static public static function getWindowOpacity(window : java.awt.Window) : Single;
	
	/**
	* Returns whether the windowing system supports changing the shape
	* of top-level windows.
	* Note that this method may sometimes return true, but the native
	* windowing system may still not support the concept of
	* shaping (due to the bugs in the windowing system).
	*/
	@:overload @:public @:static public static function isWindowShapingSupported() : Bool;
	
	/**
	* Returns an object that implements the Shape interface and represents
	* the shape previously set with the call to the setWindowShape() method.
	* If no shape has been set yet, or the shape has been reset to null,
	* this method returns null.
	*
	* @param window the window to get the shape from
	* @return the current shape of the window
	* @throws NullPointerException if the window argument is null
	*/
	@:overload @:public @:static public static function getWindowShape(window : java.awt.Window) : java.awt.Shape;
	
	/**
	* Sets a shape for the given window.
	* If the shape argument is null, this methods restores
	* the default shape making the window rectangular.
	* <p>Note that in order to set a shape, the window must be undecorated.
	* If the window is decorated, this method ignores the {@code shape}
	* argument and resets the shape to null.
	* <p>Also note that the window must not be in the full-screen mode
	* when setting a non-null shape. Otherwise the IllegalArgumentException
	* is thrown.
	* <p>Depending on the platform, the method may return without
	* effecting the shape of the window if the window has a non-null warning
	* string ({@link Window#getWarningString()}). In this case the passed
	* shape object is ignored.
	*
	* @param window the window to set the shape to
	* @param shape the shape to set to the window
	* @throws NullPointerException if the window argument is null
	* @throws IllegalArgumentException if the window is in full screen mode,
	*                                  and the shape is not null
	* @throws UnsupportedOperationException if the PERPIXEL_TRANSPARENT
	*                                       translucency kind is not supported
	*/
	@:overload @:public @:static public static function setWindowShape(window : java.awt.Window, shape : java.awt.Shape) : Void;
	
	/**
	* Enables the per-pixel alpha support for the given window.
	* Once the window becomes non-opaque (the isOpaque is set to false),
	* the drawing sub-system is starting to respect the alpha value of each
	* separate pixel. If a pixel gets painted with alpha color component
	* equal to zero, it becomes visually transparent, if the alpha of the
	* pixel is equal to 255, the pixel is fully opaque. Interim values
	* of the alpha color component make the pixel semi-transparent (i.e.
	* translucent).
	* <p>Note that in order for the window to support the per-pixel alpha
	* mode, the window must be created using the GraphicsConfiguration
	* for which the {@link #isTranslucencyCapable}
	* method returns true.
	* <p>Also note that some native systems enable the per-pixel translucency
	* mode for any window created using the translucency-compatible
	* graphics configuration. However, it is highly recommended to always
	* invoke the setWindowOpaque() method for these windows, at least for
	* the sake of cross-platform compatibility reasons.
	* <p>Also note that the window must not be in the full-screen mode
	* when making it non-opaque. Otherwise the IllegalArgumentException
	* is thrown.
	* <p>If the window is a {@code Frame} or a {@code Dialog}, the window must
	* be undecorated prior to enabling the per-pixel translucency effect (see
	* {@link Frame#setUndecorated()} and/or {@link Dialog#setUndecorated()}).
	* If the window becomes decorated through a subsequent call to the
	* corresponding {@code setUndecorated()} method, the per-pixel
	* translucency effect will be disabled and the opaque property reset to
	* {@code true}.
	* <p>Depending on the platform, the method may return without
	* effecting the opaque property of the window if the window has a non-null
	* warning string ({@link Window#getWarningString()}). In this case
	* the passed 'isOpaque' value is ignored.
	*
	* @param window the window to set the shape to
	* @param isOpaque whether the window must be opaque (true),
	*                 or translucent (false)
	* @throws NullPointerException if the window argument is null
	* @throws IllegalArgumentException if the window uses
	*                                  a GraphicsConfiguration for which the
	*                                  {@code isTranslucencyCapable()}
	*                                  method returns false
	* @throws IllegalArgumentException if the window is in full screen mode,
	*                                  and the isOpaque is false
	* @throws IllegalArgumentException if the window is decorated and the
	* isOpaque argument is {@code false}.
	* @throws UnsupportedOperationException if the PERPIXEL_TRANSLUCENT
	*                                       translucency kind is not supported
	*/
	@:overload @:public @:static public static function setWindowOpaque(window : java.awt.Window, isOpaque : Bool) : Void;
	
	/**
	* Returns whether the window is opaque or translucent.
	*
	* @param window the window to set the shape to
	* @return whether the window is currently opaque (true)
	*         or translucent (false)
	* @throws NullPointerException if the window argument is null
	*/
	@:overload @:public @:static public static function isWindowOpaque(window : java.awt.Window) : Bool;
	
	/**
	* Verifies whether a given GraphicsConfiguration supports
	* the PERPIXEL_TRANSLUCENT kind of translucency.
	* All windows that are intended to be used with the {@link #setWindowOpaque}
	* method must be created using a GraphicsConfiguration for which this method
	* returns true.
	* <p>Note that some native systems enable the per-pixel translucency
	* mode for any window created using a translucency-capable
	* graphics configuration. However, it is highly recommended to always
	* invoke the setWindowOpaque() method for these windows, at least
	* for the sake of cross-platform compatibility reasons.
	*
	* @param gc GraphicsConfiguration
	* @throws NullPointerException if the gc argument is null
	* @return whether the given GraphicsConfiguration supports
	*         the translucency effects.
	*/
	@:overload @:public @:static public static function isTranslucencyCapable(gc : java.awt.GraphicsConfiguration) : Bool;
	
	/**
	* Sets a 'mixing-cutout' shape for the given component.
	*
	* By default a lightweight component is treated as an opaque rectangle for
	* the purposes of the Heavyweight/Lightweight Components Mixing feature.
	* This method enables developers to set an arbitrary shape to be cut out
	* from heavyweight components positioned underneath the lightweight
	* component in the z-order.
	* <p>
	* The {@code shape} argument may have the following values:
	* <ul>
	* <li>{@code null} - reverts the default cutout shape (the rectangle equal
	* to the component's {@code getBounds()})
	* <li><i>empty-shape</i> - does not cut out anything from heavyweight
	* components. This makes the given lightweight component effectively
	* transparent. Note that descendants of the lightweight component still
	* affect the shapes of heavyweight components.  An example of an
	* <i>empty-shape</i> is {@code new Rectangle()}.
	* <li><i>non-empty-shape</i> - the given shape will be cut out from
	* heavyweight components.
	* </ul>
	* <p>
	* The most common example when the 'mixing-cutout' shape is needed is a
	* glass pane component. The {@link JRootPane#setGlassPane()} method
	* automatically sets the <i>empty-shape</i> as the 'mixing-cutout' shape
	* for the given glass pane component.  If a developer needs some other
	* 'mixing-cutout' shape for the glass pane (which is rare), this must be
	* changed manually after installing the glass pane to the root pane.
	* <p>
	* Note that the 'mixing-cutout' shape neither affects painting, nor the
	* mouse events handling for the given component. It is used exclusively
	* for the purposes of the Heavyweight/Lightweight Components Mixing
	* feature.
	*
	* @param component the component that needs non-default
	* 'mixing-cutout' shape
	* @param shape the new 'mixing-cutout' shape
	* @throws NullPointerException if the component argument is {@code null}
	*/
	@:overload @:public @:static public static function setComponentMixingCutoutShape(component : java.awt.Component, shape : java.awt.Shape) : Void;
	
	
}
/** Kinds of translucency supported by the underlying system.
*  @see #isTranslucencySupported
*/
@:native('com$sun$awt$AWTUtilities$Translucency') extern enum AWTUtilities_Translucency
{
	/**
	* Represents support in the underlying system for windows each pixel
	* of which is guaranteed to be either completely opaque, with
	* an alpha value of 1.0, or completely transparent, with an alpha
	* value of 0.0.
	*/
	PERPIXEL_TRANSPARENT;
	/**
	* Represents support in the underlying system for windows all of
	* the pixels of which have the same alpha value between or including
	* 0.0 and 1.0.
	*/
	TRANSLUCENT;
	/**
	* Represents support in the underlying system for windows that
	* contain or might contain pixels with arbitrary alpha values
	* between and including 0.0 and 1.0.
	*/
	PERPIXEL_TRANSLUCENT;
	
}

